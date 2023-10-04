@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.performSocialMediaAction

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.performSocialMediaAction.SocialMediaActionPerformApi
import features.performSocialMediaAction.models.PerformSocialMediaActionResponseModel

import features.performSocialMediaAction.serializeSocialMediaActionPerformState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.performSocialMediaAction.models.PerformSocialMediaActionRequestModel


class SocialMediaActionPerformHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/perform_social_media_action"

    override val eventChannel: String
        get() = "customer_sdk/events/perform_social_media_action"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return performSocialMediaAction(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun performSocialMediaAction(call: MethodCall): String? {
            val result = SocialMediaActionPerformApi().performSocialMediaAction(
                performSocialMediaActionRequest = Json.decodeFromString(call.argument<String>("performSocialMediaActionRequest") as String),
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<PerformSocialMediaActionResponseModel>()

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
        SocialMediaActionPerformApi().socialMediaActionPerformState.serializeSocialMediaActionPerformState().observe { result ->
            pushSerializedResultToEventSink<SocialMediaActionPerformApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
