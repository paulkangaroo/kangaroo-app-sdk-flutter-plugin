package com.kangaroo.flutterplugin.android.features.publicProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.publicProducts.PublicProductsApi
import kangaroorewards.appsdk.features.publicProducts.serializePublicProductsState


class PublicProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_products"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicProducts(call: MethodCall): Unit? {
            PublicProductsApi().getPublicProducts()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicProductsApi().publicProductsState.serializePublicProductsState().observe { result ->
            pushSerializedResultToEventSink<PublicProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
