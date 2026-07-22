@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getPublicCampaign

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getPublicCampaign.GetPublicCampaignApi
import features.getPublicCampaign.models.PublicCampaignsResponseModel

import features.getPublicCampaign.serializeGetPublicCampaignState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetPublicCampaignHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_campaign"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_campaign"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicCampaign(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicCampaign(call: MethodCall): String? {
            val result = GetPublicCampaignApi().getPublicCampaign(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                campaignId = call.argument<String>("campaignId") as String
            ).toJsonResult<PublicCampaignsResponseModel>()

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
        GetPublicCampaignApi().getPublicCampaignState.serializeGetPublicCampaignState().observe { result ->
            pushSerializedResultToEventSink<GetPublicCampaignApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
