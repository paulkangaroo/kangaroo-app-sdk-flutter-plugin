package com.kangaroo.flutterplugin.android.features.makeGiftCardPurchase

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.makeGiftCardPurchase.GiftCardPurchaseApi
import kangaroorewards.appsdk.features.makeGiftCardPurchase.serializeGiftCardPurchaseState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kangaroorewards.appsdk.features.makeGiftCardPurchase.models.GiftCardPurchaseRequest

class GiftCardPurchaseHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/purchase_gift_card"

    override val eventChannel: String
        get() = "customer_sdk/events/purchase_gift_card"

    override fun onMethodCall(call: MethodCall): Unit? {
        return purchaseGiftCard(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun purchaseGiftCard(call: MethodCall): Unit? {
            GiftCardPurchaseApi().purchaseGiftCard(
                purchaseGiftCardRequest = Json.decodeFromString(call.argument<String>("purchaseGiftCardRequest") as String)
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        GiftCardPurchaseApi().giftCardPurchaseState.serializeGiftCardPurchaseState().observe { result ->
            pushSerializedResultToEventSink<GiftCardPurchaseApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
