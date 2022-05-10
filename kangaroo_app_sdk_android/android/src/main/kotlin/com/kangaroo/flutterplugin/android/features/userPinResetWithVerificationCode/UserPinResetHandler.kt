package com.kangaroo.flutterplugin.android.features.userPinResetWithVerificationCode

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userPinResetWithVerificationCode.UserPinResetApi
import kangaroorewards.appsdk.features.userPinResetWithVerificationCode.serializeUserPinResetState


class UserPinResetHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/reset_pin"

    override val eventChannel: String
        get() = "customer_sdk/events/reset_pin"

    override fun onMethodCall(call: MethodCall): Unit? {
        return resetPin(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun resetPin(call: MethodCall): Unit? {
            UserPinResetApi().resetPin(
                verificationCode = call.argument<Int>("verificationCode") as Int,
                pinCode = call.argument<Int>("pinCode") as Int,
                email = call.argument<String?>("email"),
                phone = call.argument<String?>("phone"),
                countryCode = call.argument<String?>("countryCode")
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserPinResetApi().userPinResetState.serializeUserPinResetState().observe { result ->
            pushSerializedResultToEventSink<UserPinResetApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
