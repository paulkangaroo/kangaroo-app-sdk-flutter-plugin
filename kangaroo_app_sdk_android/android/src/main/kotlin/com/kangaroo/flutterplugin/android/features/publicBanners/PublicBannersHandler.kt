package com.kangaroo.flutterplugin.android.features.publicBanners

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.publicBanners.PublicBannersApi
import kangaroorewards.appsdk.features.publicBanners.serializePublicBannersState


class PublicBannersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_banners"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_banners"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicBanners(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicBanners(call: MethodCall): Unit? {
            PublicBannersApi().getPublicBanners()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicBannersApi().publicBannersState.serializePublicBannersState().observe { result ->
            pushSerializedResultToEventSink<PublicBannersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
