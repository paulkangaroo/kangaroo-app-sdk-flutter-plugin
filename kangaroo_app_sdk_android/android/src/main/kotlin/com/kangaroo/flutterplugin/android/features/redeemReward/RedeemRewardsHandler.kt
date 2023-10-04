@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.redeemReward

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.redeemReward.RedeemRewardsApi
import features.redeemReward.models.RedeemResponseModel

import features.redeemReward.serializeRedeemRewardsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.redeemReward.models.RedeemRequest

class RedeemRewardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/redeem_reward"

    override val eventChannel: String
        get() = "customer_sdk/events/redeem_reward"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return redeemReward(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun redeemReward(call: MethodCall): String? {
            val result = RedeemRewardsApi().redeemReward(
                redeemRequest = Json.decodeFromString(call.argument<String>("redeemRequest") as String)
            ).toJsonResult<RedeemResponseModel>()

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
        RedeemRewardsApi().redeemRewardsState.serializeRedeemRewardsState().observe { result ->
            pushSerializedResultToEventSink<RedeemRewardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
