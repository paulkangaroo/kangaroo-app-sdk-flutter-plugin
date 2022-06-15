package com.kangaroo.flutterplugin.android.features.publicRewards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.publicRewards.PublicRewardsApi
import kangaroorewards.appsdk.features.publicRewards.serializePublicRewardsState


class PublicRewardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_rewards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_rewards"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicRewards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicRewards(call: MethodCall): Unit? {
            PublicRewardsApi().getPublicRewards()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicRewardsApi().publicRewardsState.serializePublicRewardsState().observe { result ->
            pushSerializedResultToEventSink<PublicRewardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
