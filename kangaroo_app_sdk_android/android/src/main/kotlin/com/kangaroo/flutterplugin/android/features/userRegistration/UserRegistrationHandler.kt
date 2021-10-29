package com.kangaroo.flutterplugin.android.features.userRegistration

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userRegistration.UserRegistrationApi
import kangaroorewards.appsdk.features.userRegistration.serializeUserRegistrationState


class UserRegistrationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/create_account"

    override val eventChannel: String
        get() = "customer_sdk/events/create_account"

    override fun onMethodCall(call: MethodCall): Unit? {
        return createAccount(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun createAccount(call: MethodCall): Unit? {
            UserRegistrationApi().createAccount(
                email = call.argument<String?>("email"),
                phone = call.argument<String?>("phone"),
                countryCode = call.argument<String?>("countryCode"),
                language = call.argument<String?>("language")
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserRegistrationApi().userRegistrationState.serializeUserRegistrationState().observe { result ->
            pushSerializedResultToEventSink<UserRegistrationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
