@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.socialMediaLinks

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.socialMediaLinks.SocialMediaLinksApi
import features.socialMediaLinks.models.SocialMediaLinksModel

import features.socialMediaLinks.serializeSocialMediaLinksState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class SocialMediaLinksHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_social_media_links"

    override val eventChannel: String
        get() = "customer_sdk/events/get_social_media_links"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getSocialMediaLinks(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getSocialMediaLinks(call: MethodCall): String? {
            val result = SocialMediaLinksApi().getSocialMediaLinks().toJsonResult<SocialMediaLinksModel>()

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
        SocialMediaLinksApi().socialMediaLinksState.serializeSocialMediaLinksState().observe { result ->
            pushSerializedResultToEventSink<SocialMediaLinksApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
