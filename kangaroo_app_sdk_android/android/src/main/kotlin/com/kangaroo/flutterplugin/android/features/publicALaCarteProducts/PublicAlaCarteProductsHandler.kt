package com.kangaroo.flutterplugin.android.features.publicALaCarteProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.publicALaCarteProducts.PublicAlaCarteProductsApi
import features.publicALaCarteProducts.serializePublicAlaCarteProductsState


class PublicAlaCarteProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_ala_carte_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_ala_carte_products"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicAlaCarteProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicAlaCarteProducts(call: MethodCall): Unit? {
            PublicAlaCarteProductsApi().getPublicAlaCarteProducts()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicAlaCarteProductsApi().publicAlaCarteProductsState.serializePublicAlaCarteProductsState().observe { result ->
            pushSerializedResultToEventSink<PublicAlaCarteProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
