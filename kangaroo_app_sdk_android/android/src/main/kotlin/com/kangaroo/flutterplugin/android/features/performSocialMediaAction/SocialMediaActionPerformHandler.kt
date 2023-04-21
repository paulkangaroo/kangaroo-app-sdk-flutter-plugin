package com.kangaroo.flutterplugin.android.features.performSocialMediaAction

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.performSocialMediaAction.SocialMediaActionPerformApi
import features.performSocialMediaAction.serializeSocialMediaActionPerformState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.performSocialMediaAction.models.PerformSocialMediaActionRequestModel


class SocialMediaActionPerformHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/perform_social_media_action"

    override val eventChannel: String
        get() = "customer_sdk/events/perform_social_media_action"

    override fun onMethodCall(call: MethodCall): Unit? {
        return performSocialMediaAction(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun performSocialMediaAction(call: MethodCall): Unit? {
            SocialMediaActionPerformApi().performSocialMediaAction(
                performSocialMediaActionRequest = Json.decodeFromString(call.argument<String>("performSocialMediaActionRequest") as String),
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        SocialMediaActionPerformApi().socialMediaActionPerformState.serializeSocialMediaActionPerformState().observe { result ->
            pushSerializedResultToEventSink<SocialMediaActionPerformApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
