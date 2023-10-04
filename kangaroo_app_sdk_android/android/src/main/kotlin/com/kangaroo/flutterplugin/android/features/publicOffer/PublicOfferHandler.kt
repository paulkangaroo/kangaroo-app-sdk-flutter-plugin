@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicOffer

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicOffer.PublicOfferApi
import features.publicOffer.models.PublicOfferModel

import features.publicOffer.serializePublicOfferState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PublicOfferHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_offer"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_offer"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicOffer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicOffer(call: MethodCall): String? {
            val result = PublicOfferApi().getPublicOffer(
                offerSlug = call.argument<String>("offerSlug") as String
            ).toJsonResult<PublicOfferModel>()

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
        PublicOfferApi().publicOfferState.serializePublicOfferState().observe { result ->
            pushSerializedResultToEventSink<PublicOfferApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
