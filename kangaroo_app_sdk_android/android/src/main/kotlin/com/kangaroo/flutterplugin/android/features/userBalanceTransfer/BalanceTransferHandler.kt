package com.kangaroo.flutterplugin.android.features.userBalanceTransfer

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userBalanceTransfer.BalanceTransferApi
import features.userBalanceTransfer.serializeBalanceTransferState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userBalanceTransfer.models.TransferRequestModel

class BalanceTransferHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/transfer"

    override val eventChannel: String
        get() = "customer_sdk/events/transfer"

    override fun onMethodCall(call: MethodCall): Unit? {
        return transfer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun transfer(call: MethodCall): Unit? {
            BalanceTransferApi().transfer(
                transferRequest = Json.decodeFromString(call.argument<String>("transferRequest") as String)
            )
            return null
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
