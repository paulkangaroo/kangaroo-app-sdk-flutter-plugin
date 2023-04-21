package com.kangaroo.flutterplugin.android.features.getDefaultBusinessId

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.getDefaultBusinessId.GetDefaultBusinessIdApi
import features.getDefaultBusinessId.serializeGetDefaultBusinessIdState


class GetDefaultBusinessIdHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_default_business_id"

    override val eventChannel: String
        get() = "customer_sdk/events/get_default_business_id"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getDefaultBusinessId(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getDefaultBusinessId(call: MethodCall): Unit? {
            GetDefaultBusinessIdApi().getDefaultBusinessId(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        GetDefaultBusinessIdApi().getDefaultBusinessIdState.serializeGetDefaultBusinessIdState().observe { result ->
            pushSerializedResultToEventSink<GetDefaultBusinessIdApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
