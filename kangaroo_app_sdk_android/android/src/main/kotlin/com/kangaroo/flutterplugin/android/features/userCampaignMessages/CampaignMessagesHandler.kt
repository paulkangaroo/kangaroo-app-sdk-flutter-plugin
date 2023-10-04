@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userCampaignMessages

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userCampaignMessages.CampaignMessagesApi
import features.userCampaignMessages.models.CampaignMessagesModel

import features.userCampaignMessages.serializeCampaignMessagesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class CampaignMessagesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_campaign_messages"

    override val eventChannel: String
        get() = "customer_sdk/events/get_campaign_messages"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getCampaignMessages(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getCampaignMessages(call: MethodCall): String? {
            val result = CampaignMessagesApi().getCampaignMessages(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<CampaignMessagesModel>()

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
        CampaignMessagesApi().campaignMessagesState.serializeCampaignMessagesState().observe { result ->
            pushSerializedResultToEventSink<CampaignMessagesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
