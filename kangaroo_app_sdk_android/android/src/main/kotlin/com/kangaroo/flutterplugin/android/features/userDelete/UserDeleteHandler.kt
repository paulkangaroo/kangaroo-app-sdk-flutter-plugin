@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userDelete

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userDelete.UserDeleteApi

import kangaroorewards.appsdk.core.io.EmptyResponse
import features.userDelete.serializeUserDeleteState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserDeleteHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/delete_user_account"

    override val eventChannel: String
        get() = "customer_sdk/events/delete_user_account"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return deleteUserAccount(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun deleteUserAccount(call: MethodCall): String? {
            val result = UserDeleteApi().deleteUserAccount().toJsonResult<EmptyResponse>()

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
        UserDeleteApi().userDeleteState.serializeUserDeleteState().observe { result ->
            pushSerializedResultToEventSink<UserDeleteApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
