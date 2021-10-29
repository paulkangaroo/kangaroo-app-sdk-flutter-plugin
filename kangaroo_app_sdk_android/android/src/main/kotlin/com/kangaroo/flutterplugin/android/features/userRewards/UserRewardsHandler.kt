package com.kangaroo.flutterplugin.android.features.userRewards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userRewards.UserRewardsApi
import kangaroorewards.appsdk.features.userRewards.serializeUserRewardsState


class UserRewardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_rewards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_rewards"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserRewards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserRewards(call: MethodCall): Unit? {
            UserRewardsApi().getUserRewards()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserRewardsApi().userRewardsState.serializeUserRewardsState().observe { result ->
            pushSerializedResultToEventSink<UserRewardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
