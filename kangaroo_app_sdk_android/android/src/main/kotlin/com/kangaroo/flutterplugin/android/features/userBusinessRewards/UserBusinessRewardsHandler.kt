@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessRewards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessRewards.UserBusinessRewardsApi
import features.userBusinessRewards.models.UserBusinessRewardsModel

import features.userBusinessRewards.serializeUserBusinessRewardsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessRewardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_rewards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_rewards"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessRewards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessRewards(call: MethodCall): String? {
            val result = UserBusinessRewardsApi().getUserBusinessRewards(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessRewardsModel>()

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
        UserBusinessRewardsApi().userBusinessRewardsState.serializeUserBusinessRewardsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessRewardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
