@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicReward

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicReward.PublicRewardApi
import features.publicReward.models.PublicRewardModel

import features.publicReward.serializePublicRewardState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PublicRewardHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_reward"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_reward"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicReward(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicReward(call: MethodCall): String? {
            val result = PublicRewardApi().getPublicReward(
                rewardSlug = call.argument<String>("rewardSlug") as String
            ).toJsonResult<PublicRewardModel>()

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
        PublicRewardApi().publicRewardState.serializePublicRewardState().observe { result ->
            pushSerializedResultToEventSink<PublicRewardApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
