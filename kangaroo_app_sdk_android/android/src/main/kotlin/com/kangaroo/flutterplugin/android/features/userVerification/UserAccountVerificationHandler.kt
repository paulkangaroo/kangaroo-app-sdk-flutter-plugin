package com.kangaroo.flutterplugin.android.features.userVerification

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userVerification.UserAccountVerificationApi
import features.userVerification.serializeUserAccountVerificationState


class UserAccountVerificationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/verify_account"

    override val eventChannel: String
        get() = "customer_sdk/events/verify_account"

    override fun onMethodCall(call: MethodCall): Unit? {
        return verifyAccount(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun verifyAccount(call: MethodCall): Unit? {
            UserAccountVerificationApi().verifyAccount(
                intent = call.argument<String>("intent") as String,
                token = call.argument<String>("token") as String,
                email = call.argument<String?>("email"),
                phone = call.argument<String?>("phone"),
                countryCode = call.argument<String?>("countryCode")
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserAccountVerificationApi().userAccountVerificationState.serializeUserAccountVerificationState().observe { result ->
            pushSerializedResultToEventSink<UserAccountVerificationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
