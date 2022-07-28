package com.kangaroo.flutterplugin.android.features.userBusinessRewards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userBusinessRewards.UserBusinessRewardsApi
import kangaroorewards.appsdk.features.userBusinessRewards.serializeUserBusinessRewardsState


class UserBusinessRewardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_rewards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_rewards"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessRewards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessRewards(call: MethodCall): Unit? {
            UserBusinessRewardsApi().getUserBusinessRewards(
                businessId = call.argument<String>("businessId") as String
            )
            return null
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
