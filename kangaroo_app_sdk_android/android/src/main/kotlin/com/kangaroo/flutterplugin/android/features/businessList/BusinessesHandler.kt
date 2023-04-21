package com.kangaroo.flutterplugin.android.features.businessList

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.businessList.BusinessesApi
import features.businessList.serializeBusinessesState


class BusinessesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_businesses"

    override val eventChannel: String
        get() = "customer_sdk/events/get_businesses"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getBusinesses(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getBusinesses(call: MethodCall): Unit? {
            BusinessesApi().getBusinesses()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        BusinessesApi().businessesState.serializeBusinessesState().observe { result ->
            pushSerializedResultToEventSink<BusinessesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
