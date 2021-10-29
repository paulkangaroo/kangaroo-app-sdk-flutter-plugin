package com.kangaroo.flutterplugin.android.features.userProfileUpdate

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userProfileUpdate.UserProfileUpdateApi
import kangaroorewards.appsdk.features.userProfileUpdate.serializeUserProfileUpdateState


class UserProfileUpdateHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_user_profile"

    override val eventChannel: String
        get() = "customer_sdk/events/update_user_profile"

    override fun onMethodCall(call: MethodCall): Unit? {
        return updateUserProfile(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun updateUserProfile(call: MethodCall): Unit? {
            UserProfileUpdateApi().updateUserProfile(
                firstName = call.argument<String?>("firstName"),
                lastName = call.argument<String?>("lastName"),
                birthDate = call.argument<String?>("birthDate"),
                language = call.argument<String?>("language"),
                gender = call.argument<String?>("gender"),
                profilePhoto = call.argument<String?>("profilePhoto")
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserProfileUpdateApi().userProfileUpdateState.serializeUserProfileUpdateState().observe { result ->
            pushSerializedResultToEventSink<UserProfileUpdateApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
