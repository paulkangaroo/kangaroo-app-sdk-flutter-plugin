package com.kangaroo.flutterplugin.android.features.userCampaignMessages

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userCampaignMessages.CampaignMessagesApi
import features.userCampaignMessages.serializeCampaignMessagesState


class CampaignMessagesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_campaign_messages"

    override val eventChannel: String
        get() = "customer_sdk/events/get_campaign_messages"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getCampaignMessages(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getCampaignMessages(call: MethodCall): Unit? {
            CampaignMessagesApi().getCampaignMessages(
                businessId = call.argument<String>("businessId") as String
            )
            return null
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
