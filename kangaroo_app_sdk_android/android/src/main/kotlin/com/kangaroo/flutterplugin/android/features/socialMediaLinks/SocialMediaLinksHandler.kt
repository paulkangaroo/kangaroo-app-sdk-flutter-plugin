package com.kangaroo.flutterplugin.android.features.socialMediaLinks

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.socialMediaLinks.SocialMediaLinksApi
import kangaroorewards.appsdk.features.socialMediaLinks.serializeSocialMediaLinksState


class SocialMediaLinksHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_social_media_links"

    override val eventChannel: String
        get() = "customer_sdk/events/get_social_media_links"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getSocialMediaLinks(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getSocialMediaLinks(call: MethodCall): Unit? {
            SocialMediaLinksApi().getSocialMediaLinks()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        SocialMediaLinksApi().socialMediaLinksState.serializeSocialMediaLinksState().observe { result ->
            pushSerializedResultToEventSink<SocialMediaLinksApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
