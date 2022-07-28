package com.kangaroo.flutterplugin.android.features.userBusinessProfile

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userBusinessProfile.UserBusinessProfileApi
import kangaroorewards.appsdk.features.userBusinessProfile.serializeUserBusinessProfileState


class UserBusinessProfileHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_profile"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_profile"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessProfile(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessProfile(call: MethodCall): Unit? {
            UserBusinessProfileApi().getUserBusinessProfile(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessProfileApi().userBusinessProfileState.serializeUserBusinessProfileState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessProfileApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
