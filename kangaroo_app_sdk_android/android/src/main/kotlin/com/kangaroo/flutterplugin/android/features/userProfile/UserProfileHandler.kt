package com.kangaroo.flutterplugin.android.features.userProfile

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userProfile.UserProfileApi
import features.userProfile.serializeUserProfileState


class UserProfileHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_profile"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_profile"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserProfile(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserProfile(call: MethodCall): Unit? {
            UserProfileApi().getUserProfile()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserProfileApi().userProfileState.serializeUserProfileState().observe { result ->
            pushSerializedResultToEventSink<UserProfileApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
