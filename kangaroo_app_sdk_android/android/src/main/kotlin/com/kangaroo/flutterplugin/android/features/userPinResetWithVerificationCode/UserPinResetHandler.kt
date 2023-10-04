@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userPinResetWithVerificationCode

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userPinResetWithVerificationCode.UserPinResetApi

import kangaroorewards.appsdk.core.io.EmptyResponse
import features.userPinResetWithVerificationCode.serializeUserPinResetState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserPinResetHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/reset_pin"

    override val eventChannel: String
        get() = "customer_sdk/events/reset_pin"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return resetPin(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun resetPin(call: MethodCall): String? {
            val result = UserPinResetApi().resetPin(
                verificationCode = call.argument<String>("verificationCode") as String,
                pinCode = call.argument<String>("pinCode") as String,
                email = call.argument<String?>("email"),
                phone = call.argument<String?>("phone"),
                countryCode = call.argument<String?>("countryCode")
            ).toJsonResult<EmptyResponse>()

            return when (result) {
                is SerializedResult.Success -> result.data
                is SerializedResult.UnauthorizedError -> result.error
                is SerializedResult.UnknownError -> result.error
                else -> null
            }
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
