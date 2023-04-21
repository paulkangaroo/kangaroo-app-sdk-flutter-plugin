package com.kangaroo.flutterplugin.android.features.userProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userProducts.UserProductsApi
import features.userProducts.serializeUserProductsState


class UserProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_products"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserProducts(call: MethodCall): Unit? {
            UserProductsApi().getUserProducts()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserProductsApi().userProductsState.serializeUserProductsState().observe { result ->
            pushSerializedResultToEventSink<UserProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
