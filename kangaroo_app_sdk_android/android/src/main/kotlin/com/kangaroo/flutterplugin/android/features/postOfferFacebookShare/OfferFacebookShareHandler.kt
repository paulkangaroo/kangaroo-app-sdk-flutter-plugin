@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.postOfferFacebookShare

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.postOfferFacebookShare.OfferFacebookShareApi
import features.postOfferFacebookShare.models.UserProfileModel

import features.postOfferFacebookShare.serializeOfferFacebookShareState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class OfferFacebookShareHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/post_offer_facebook_share"

    override val eventChannel: String
        get() = "customer_sdk/events/post_offer_facebook_share"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return postOfferFacebookShare(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun postOfferFacebookShare(call: MethodCall): String? {
            val result = OfferFacebookShareApi().postOfferFacebookShare(
                offerId = call.argument<String>("offerId") as String,
                include = call.argument<String>("include") as String,
                facebookUserId = call.argument<String>("facebookUserId") as String,
                type = call.argument<String>("type") as String,
                friendsCount = call.argument<String>("friendsCount") as String
            ).toJsonResult<UserProfileModel>()

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
        OfferFacebookShareApi().offerFacebookShareState.serializeOfferFacebookShareState().observe { result ->
            pushSerializedResultToEventSink<OfferFacebookShareApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
