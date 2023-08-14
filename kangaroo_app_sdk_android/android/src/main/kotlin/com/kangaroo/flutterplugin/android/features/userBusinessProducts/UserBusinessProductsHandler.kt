package com.kangaroo.flutterplugin.android.features.userBusinessProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import features.userBusinessProducts.UserBusinessProductsApi
import features.userBusinessProducts.serializeUserBusinessProductsState
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall


class UserBusinessProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_products"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessProducts(call: MethodCall): Unit? {
            UserBusinessProductsApi().getUserBusinessProducts(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessProductsApi().userBusinessProductsState.serializeUserBusinessProductsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
