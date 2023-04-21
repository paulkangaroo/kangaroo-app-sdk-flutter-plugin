package com.kangaroo.flutterplugin.android.features.userBusinessAlaCarteProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userBusinessAlaCarteProducts.UserBusinessAlaCarteProductsApi
import features.userBusinessAlaCarteProducts.serializeUserBusinessAlaCarteProductsState


class UserBusinessAlaCarteProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_ala_carte_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_ala_carte_products"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessAlaCarteProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessAlaCarteProducts(call: MethodCall): Unit? {
            UserBusinessAlaCarteProductsApi().getUserBusinessAlaCarteProducts(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessAlaCarteProductsApi().userBusinessAlaCarteProductsState.serializeUserBusinessAlaCarteProductsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessAlaCarteProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
