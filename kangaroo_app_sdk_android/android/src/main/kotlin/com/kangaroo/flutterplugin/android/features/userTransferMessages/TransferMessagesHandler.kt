package com.kangaroo.flutterplugin.android.features.userTransferMessages

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userTransferMessages.TransferMessagesApi
import kangaroorewards.appsdk.features.userTransferMessages.serializeTransferMessagesState


class TransferMessagesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_transfer_messages"

    override val eventChannel: String
        get() = "customer_sdk/events/get_transfer_messages"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getTransferMessages(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getTransferMessages(call: MethodCall): Unit? {
            TransferMessagesApi().getTransferMessages(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        TransferMessagesApi().transferMessagesState.serializeTransferMessagesState().observe { result ->
            pushSerializedResultToEventSink<TransferMessagesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
