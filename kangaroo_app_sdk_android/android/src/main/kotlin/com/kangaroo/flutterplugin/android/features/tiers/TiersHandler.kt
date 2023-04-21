package com.kangaroo.flutterplugin.android.features.tiers

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.tiers.TiersApi
import features.tiers.serializeTiersState


class TiersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_tiers"

    override val eventChannel: String
        get() = "customer_sdk/events/get_tiers"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getTiers(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getTiers(call: MethodCall): Unit? {
            TiersApi().getTiers()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        TiersApi().tiersState.serializeTiersState().observe { result ->
            pushSerializedResultToEventSink<TiersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
