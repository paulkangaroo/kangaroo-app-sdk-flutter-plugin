package com.kangaroo.flutterplugin.android.features.userOffers

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userOffers.UserOffersApi
import features.userOffers.serializeUserOffersState


class UserOffersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_offers"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_offers"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserOffers(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserOffers(call: MethodCall): Unit? {
            UserOffersApi().getUserOffers()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserOffersApi().userOffersState.serializeUserOffersState().observe { result ->
            pushSerializedResultToEventSink<UserOffersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
