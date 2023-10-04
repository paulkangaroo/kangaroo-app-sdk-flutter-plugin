@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBalanceTransfer

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBalanceTransfer.BalanceTransferApi
import features.userBalanceTransfer.models.TransferResponseModel

import features.userBalanceTransfer.serializeBalanceTransferState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userBalanceTransfer.models.TransferRequestModel

class BalanceTransferHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/transfer"

    override val eventChannel: String
        get() = "customer_sdk/events/transfer"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return transfer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun transfer(call: MethodCall): String? {
            val result = BalanceTransferApi().transfer(
                transferRequest = Json.decodeFromString(call.argument<String>("transferRequest") as String)
            ).toJsonResult<TransferResponseModel>()

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
        BalanceTransferApi().balanceTransferState.serializeBalanceTransferState().observe { result ->
            pushSerializedResultToEventSink<BalanceTransferApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
