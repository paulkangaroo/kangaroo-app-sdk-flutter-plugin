package com.kangaroo.flutterplugin.android.features.socialMedia

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.socialMedia.SocialMediaApi
import kangaroorewards.appsdk.features.socialMedia.serializeSocialMediaState


class SocialMediaHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_social_media"

    override val eventChannel: String
        get() = "customer_sdk/events/get_social_media"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getSocialMedia(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getSocialMedia(call: MethodCall): Unit? {
            SocialMediaApi().getSocialMedia()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        SocialMediaApi().socialMediaState.serializeSocialMediaState().observe { result ->
            pushSerializedResultToEventSink<SocialMediaApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
