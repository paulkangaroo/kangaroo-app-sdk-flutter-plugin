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
        get() = "customer_sdk/methods/request_pin_reset"

    override val eventChannel: String
        get() = "customer_sdk/events/request_pin_reset"

    override fun onMethodCall(call: MethodCall): Unit? {
        return requestPinReset(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun requestPinReset(call: MethodCall): Unit? {
            UserPinResetApi().requestPinReset(
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
