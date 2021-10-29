package com.kangaroo.flutterplugin.android.features.userTransferRecall

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userTransferRecall.TransferRecallApi
import kangaroorewards.appsdk.features.userTransferRecall.serializeTransferRecallState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json


class TransferRecallHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/recall_transfer"

    override val eventChannel: String
        get() = "customer_sdk/events/recall_transfer"

    override fun onMethodCall(call: MethodCall): Unit? {
        return recallTransfer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun recallTransfer(call: MethodCall): Unit? {
            TransferRecallApi().recallTransfer(
                recallId = call.argument<String>("recallId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        TransferRecallApi().transferRecallState.serializeTransferRecallState().observe { result ->
            pushSerializedResultToEventSink<TransferRecallApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
