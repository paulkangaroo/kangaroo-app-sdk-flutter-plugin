package com.kangaroo.flutterplugin.android.features.banners

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.banners.BannersApi
import features.banners.serializeBannersState


class BannersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_banners"

    override val eventChannel: String
        get() = "customer_sdk/events/get_banners"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getBanners(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getBanners(call: MethodCall): Unit? {
            BannersApi().getBanners()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        BannersApi().bannersState.serializeBannersState().observe { result ->
            pushSerializedResultToEventSink<BannersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
