package com.kangaroo.flutterplugin.android.features.userBusinessGiftCards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userBusinessGiftCards.UserBusinessGiftCardsApi
import features.userBusinessGiftCards.serializeUserBusinessGiftCardsState


class UserBusinessGiftCardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_gift_cards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_gift_cards"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessGiftCards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessGiftCards(call: MethodCall): Unit? {
            UserBusinessGiftCardsApi().getUserBusinessGiftCards(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessGiftCardsApi().userBusinessGiftCardsState.serializeUserBusinessGiftCardsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessGiftCardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
