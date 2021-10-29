package com.kangaroo.flutterplugin.android.features.business

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.business.BusinessApi
import kangaroorewards.appsdk.features.business.serializeBusinessState


class BusinessHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_business"

    override val eventChannel: String
        get() = "customer_sdk/events/get_business"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getBusiness(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getBusiness(call: MethodCall): Unit? {
            BusinessApi().getBusiness(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        BusinessApi().businessState.serializeBusinessState().observe { result ->
            pushSerializedResultToEventSink<BusinessApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
