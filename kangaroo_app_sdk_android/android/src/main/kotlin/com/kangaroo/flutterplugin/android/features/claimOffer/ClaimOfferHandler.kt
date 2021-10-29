package com.kangaroo.flutterplugin.android.features.claimOffer

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.claimOffer.ClaimOfferApi
import kangaroorewards.appsdk.features.claimOffer.serializeClaimOfferState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json


class ClaimOfferHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/claim_offer"

    override val eventChannel: String
        get() = "customer_sdk/events/claim_offer"

    override fun onMethodCall(call: MethodCall): Unit? {
        return claimOffer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun claimOffer(call: MethodCall): Unit? {
            ClaimOfferApi().claimOffer(
                offerId = call.argument<Int>("offerId") as Int,
                customerId = call.argument<String>("customerId") as String
            )
            return null
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
