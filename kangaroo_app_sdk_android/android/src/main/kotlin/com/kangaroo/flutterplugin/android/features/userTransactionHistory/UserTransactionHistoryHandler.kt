@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userTransactionHistory

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userTransactionHistory.UserTransactionHistoryApi
import features.userTransactionHistory.models.UserTransactionHistoryModel

import features.userTransactionHistory.serializeUserTransactionHistoryState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserTransactionHistoryHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_transaction_history"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_transaction_history"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserTransactionHistory(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserTransactionHistory(call: MethodCall): String? {
            val result = UserTransactionHistoryApi().getUserTransactionHistory().toJsonResult<UserTransactionHistoryModel>()

            return when (result) {
                is SerializedResult.Success -> result.data
                is SerializedResult.UnauthorizedError -> result.error
                is SerializedResult.UnknownError -> result.error
                else -> null
            }
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserTransactionHistoryApi().userTransactionHistoryState.serializeUserTransactionHistoryState().observe { result ->
            pushSerializedResultToEventSink<UserTransactionHistoryApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
