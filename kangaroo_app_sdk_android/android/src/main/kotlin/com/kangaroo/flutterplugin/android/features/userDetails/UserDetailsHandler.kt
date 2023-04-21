package com.kangaroo.flutterplugin.android.features.userDetails

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userDetails.UserDetailsApi
import features.userDetails.serializeUserDetailsState


class UserDetailsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_details"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_details"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserDetails(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserDetails(call: MethodCall): Unit? {
            UserDetailsApi().getUserDetails()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserDetailsApi().userDetailsState.serializeUserDetailsState().observe { result ->
            pushSerializedResultToEventSink<UserDetailsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
