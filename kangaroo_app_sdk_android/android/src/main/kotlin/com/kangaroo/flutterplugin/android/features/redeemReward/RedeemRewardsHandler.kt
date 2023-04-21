package com.kangaroo.flutterplugin.android.features.redeemReward

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.redeemReward.RedeemRewardsApi
import features.redeemReward.serializeRedeemRewardsState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.redeemReward.models.RedeemRequest

class RedeemRewardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/redeem_reward"

    override val eventChannel: String
        get() = "customer_sdk/events/redeem_reward"

    override fun onMethodCall(call: MethodCall): Unit? {
        return redeemReward(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun redeemReward(call: MethodCall): Unit? {
            RedeemRewardsApi().redeemReward(
                redeemRequest = Json.decodeFromString(call.argument<String>("redeemRequest") as String)
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        RedeemRewardsApi().redeemRewardsState.serializeRedeemRewardsState().observe { result ->
            pushSerializedResultToEventSink<RedeemRewardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
