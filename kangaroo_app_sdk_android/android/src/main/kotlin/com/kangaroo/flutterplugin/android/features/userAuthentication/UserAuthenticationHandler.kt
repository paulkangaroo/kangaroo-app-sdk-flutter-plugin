package com.kangaroo.flutterplugin.android.features.userAuthentication

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userAuthentication.UserAuthenticationApi
import features.userAuthentication.serializeUserAuthenticationState

class UserAuthenticationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/user_authentication"

    override val eventChannel: String
        get() = "customer_sdk/events/user_authentication"

    override fun onMethodCall(call: MethodCall): Unit? {
        return authenticateUser(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun authenticateUser(call: MethodCall): Unit? {
            UserAuthenticationApi().authenticateUser(
                username = call.argument<String>("username") ?: "null username",
                password = call.argument<String>("password") ?: "null password",
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserAuthenticationApi().userAuthenticationState.serializeUserAuthenticationState().observe { result ->
            pushSerializedResultToEventSink<UserAuthenticationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}