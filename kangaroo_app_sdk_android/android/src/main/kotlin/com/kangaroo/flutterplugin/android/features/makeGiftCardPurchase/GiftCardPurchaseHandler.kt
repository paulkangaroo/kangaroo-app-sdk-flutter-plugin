@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.makeGiftCardPurchase

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.makeGiftCardPurchase.GiftCardPurchaseApi
import features.makeGiftCardPurchase.models.GiftCardPayPalPaymentResponseModel

import features.makeGiftCardPurchase.serializeGiftCardPurchaseState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.makeGiftCardPurchase.models.GiftCardPurchaseRequest

class GiftCardPurchaseHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/purchase_gift_card"

    override val eventChannel: String
        get() = "customer_sdk/events/purchase_gift_card"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return purchaseGiftCard(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun purchaseGiftCard(call: MethodCall): String? {
            val result = GiftCardPurchaseApi().purchaseGiftCard(
                purchaseGiftCardRequest = Json.decodeFromString(call.argument<String>("purchaseGiftCardRequest") as String)
            ).toJsonResult<GiftCardPayPalPaymentResponseModel>()

            return when (result) {
                is SerializedResult.Success -> result.data
                is SerializedResult.UnauthorizedError -> result.error
                is SerializedResult.UnknownError -> result.error
                else -> null
            }
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
