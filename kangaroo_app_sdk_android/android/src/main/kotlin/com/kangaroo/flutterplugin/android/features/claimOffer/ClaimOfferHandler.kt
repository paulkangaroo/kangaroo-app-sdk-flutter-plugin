@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.claimOffer

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.claimOffer.ClaimOfferApi
import features.claimOffer.models.ClaimedOfferModel

import features.claimOffer.serializeClaimOfferState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json


class ClaimOfferHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/claim_offer"

    override val eventChannel: String
        get() = "customer_sdk/events/claim_offer"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return claimOffer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun claimOffer(call: MethodCall): String? {
            val result = ClaimOfferApi().claimOffer(
                offerId = call.argument<Int>("offerId") as Int,
                customerId = call.argument<String>("customerId") as String
            ).toJsonResult<ClaimedOfferModel>()

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
        ClaimOfferApi().claimOfferState.serializeClaimOfferState().observe { result ->
            pushSerializedResultToEventSink<ClaimOfferApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
