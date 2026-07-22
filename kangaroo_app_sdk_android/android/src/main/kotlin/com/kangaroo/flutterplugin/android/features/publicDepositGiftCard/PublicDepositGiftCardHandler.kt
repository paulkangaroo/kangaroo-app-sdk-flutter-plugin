@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicDepositGiftCard

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicDepositGiftCard.PublicDepositGiftCardApi
import features.publicDepositGiftCard.models.TransferActionResultModel

import features.publicDepositGiftCard.serializePublicDepositGiftCardState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json


class PublicDepositGiftCardHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/public_deposit_gift_card"

    override val eventChannel: String
        get() = "customer_sdk/events/public_deposit_gift_card"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return publicDepositGiftCard(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun publicDepositGiftCard(call: MethodCall): String? {
            val result = PublicDepositGiftCardApi().publicDepositGiftCard(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                userId = call.argument<String>("userId") as String,
                messageId = call.argument<String>("messageId") as String
            ).toJsonResult<TransferActionResultModel>()

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
        PublicDepositGiftCardApi().publicDepositGiftCardState.serializePublicDepositGiftCardState().observe { result ->
            pushSerializedResultToEventSink<PublicDepositGiftCardApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
