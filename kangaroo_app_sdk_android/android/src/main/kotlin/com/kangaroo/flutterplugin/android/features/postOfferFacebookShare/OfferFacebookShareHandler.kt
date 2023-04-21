package com.kangaroo.flutterplugin.android.features.postOfferFacebookShare

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.postOfferFacebookShare.OfferFacebookShareApi
import features.postOfferFacebookShare.serializeOfferFacebookShareState


class OfferFacebookShareHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/post_offer_facebook_share"

    override val eventChannel: String
        get() = "customer_sdk/events/post_offer_facebook_share"

    override fun onMethodCall(call: MethodCall): Unit? {
        return postOfferFacebookShare(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun postOfferFacebookShare(call: MethodCall): Unit? {
            OfferFacebookShareApi().postOfferFacebookShare(
                offerId = call.argument<String>("offerId") as String,
                include = call.argument<String>("include") as String,
                facebookUserId = call.argument<String>("facebookUserId") as String,
                type = call.argument<String>("type") as String,
                friendsCount = call.argument<String>("friendsCount") as String
            )
            return null
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
