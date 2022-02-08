package com.kangaroo.flutterplugin.android.features.giftCards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.giftCards.GiftCardsApi
import kangaroorewards.appsdk.features.giftCards.serializeGiftCardsState


class GiftCardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_gift_cards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_gift_cards"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getGiftCards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getGiftCards(call: MethodCall): Unit? {
            GiftCardsApi().getGiftCards()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        GiftCardsApi().giftCardsState.serializeGiftCardsState().observe { result ->
            pushSerializedResultToEventSink<GiftCardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
