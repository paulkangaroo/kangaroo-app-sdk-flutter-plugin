package com.kangaroo.flutterplugin.android.features.userAlaCarte

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userAlaCarte.AlaCarteProductsApi
import features.userAlaCarte.serializeAlaCarteProductsState


class AlaCarteProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_ala_carte_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_ala_carte_products"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getAlaCarteProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getAlaCarteProducts(call: MethodCall): Unit? {
            AlaCarteProductsApi().getAlaCarteProducts()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        AlaCarteProductsApi().alaCarteProductsState.serializeAlaCarteProductsState().observe { result ->
            pushSerializedResultToEventSink<AlaCarteProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
