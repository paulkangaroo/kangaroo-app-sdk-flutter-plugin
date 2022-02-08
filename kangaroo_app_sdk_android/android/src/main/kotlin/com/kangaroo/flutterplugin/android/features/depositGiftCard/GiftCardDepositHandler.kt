package com.kangaroo.flutterplugin.android.features.depositGiftCard

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.depositGiftCard.GiftCardDepositApi
import kangaroorewards.appsdk.features.depositGiftCard.serializeGiftCardDepositState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json


class GiftCardDepositHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/deposit_gift_card"

    override val eventChannel: String
        get() = "customer_sdk/events/deposit_gift_card"

    override fun onMethodCall(call: MethodCall): Unit? {
        return depositGiftCard(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun depositGiftCard(call: MethodCall): Unit? {
            GiftCardDepositApi().depositGiftCard(
                depositId = call.argument<String>("depositId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        GiftCardDepositApi().giftCardDepositState.serializeGiftCardDepositState().observe { result ->
            pushSerializedResultToEventSink<GiftCardDepositApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
