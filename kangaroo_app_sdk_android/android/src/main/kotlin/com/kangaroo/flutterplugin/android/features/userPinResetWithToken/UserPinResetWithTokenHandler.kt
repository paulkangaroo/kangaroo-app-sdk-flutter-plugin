@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userPinResetWithToken

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userPinResetWithToken.UserPinResetWithTokenApi

import kangaroorewards.appsdk.core.io.EmptyResponse
import features.userPinResetWithToken.serializeUserPinResetWithTokenState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userPinResetWithToken.models.PinResetWithTokenRequestModel

class UserPinResetWithTokenHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/reset_pin_with_token"

    override val eventChannel: String
        get() = "customer_sdk/events/reset_pin_with_token"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return resetPinWithToken(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun resetPinWithToken(call: MethodCall): String? {
            val result = UserPinResetWithTokenApi().resetPinWithToken(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                pinResetWithTokenRequest = Json.decodeFromString(call.argument<String>("pinResetWithTokenRequest") as String)
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
        UserPinResetWithTokenApi().userPinResetWithTokenState.serializeUserPinResetWithTokenState().observe { result ->
            pushSerializedResultToEventSink<UserPinResetWithTokenApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
