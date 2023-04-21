package com.kangaroo.flutterplugin.android.features.publicOffers

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.publicOffers.PublicOffersApi
import features.publicOffers.serializePublicOffersState


class PublicOffersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_offers"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_offers"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicOffers(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicOffers(call: MethodCall): Unit? {
            PublicOffersApi().getPublicOffers()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicOffersApi().publicOffersState.serializePublicOffersState().observe { result ->
            pushSerializedResultToEventSink<PublicOffersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
