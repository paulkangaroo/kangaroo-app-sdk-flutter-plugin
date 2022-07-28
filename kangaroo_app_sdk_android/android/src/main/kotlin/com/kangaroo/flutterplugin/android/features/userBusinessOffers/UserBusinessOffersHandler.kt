package com.kangaroo.flutterplugin.android.features.userBusinessOffers

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userBusinessOffers.UserBusinessOffersApi
import kangaroorewards.appsdk.features.userBusinessOffers.serializeUserBusinessOffersState


class UserBusinessOffersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_offers"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_offers"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessOffers(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessOffers(call: MethodCall): Unit? {
            UserBusinessOffersApi().getUserBusinessOffers(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessOffersApi().userBusinessOffersState.serializeUserBusinessOffersState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessOffersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
