@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessSocialMediaLinks

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessSocialMediaLinks.UserBusinessSocialMediaLinksApi
import features.userBusinessSocialMediaLinks.models.SocialMediaLinksModel

import features.userBusinessSocialMediaLinks.serializeUserBusinessSocialMediaLinksState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessSocialMediaLinksHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_social_media_links"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_social_media_links"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessSocialMediaLinks(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessSocialMediaLinks(call: MethodCall): String? {
            val result = UserBusinessSocialMediaLinksApi().getUserBusinessSocialMediaLinks(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<SocialMediaLinksModel>()

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
        UserBusinessSocialMediaLinksApi().userBusinessSocialMediaLinksState.serializeUserBusinessSocialMediaLinksState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessSocialMediaLinksApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
