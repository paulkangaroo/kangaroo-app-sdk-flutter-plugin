package com.kangaroo.flutterplugin.android.features.userBusinessSocialMediaLinks

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userBusinessSocialMediaLinks.UserBusinessSocialMediaLinksApi
import kangaroorewards.appsdk.features.userBusinessSocialMediaLinks.serializeUserBusinessSocialMediaLinksState


class UserBusinessSocialMediaLinksHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_social_media_links"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_social_media_links"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessSocialMediaLinks(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessSocialMediaLinks(call: MethodCall): Unit? {
            UserBusinessSocialMediaLinksApi().getUserBusinessSocialMediaLinks(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessSocialMediaLinksApi().userBusinessSocialMediaLinksState.serializeUserBusinessSocialMediaLinksState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessSocialMediaLinksApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
