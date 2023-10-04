@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userPinResetRequest

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userPinResetRequest.UserPinResetRequestApi
import features.userPinResetRequest.models.UserPinResetRequest

import features.userPinResetRequest.serializeUserPinResetRequestState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserPinResetRequestHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/request_pin_reset"

    override val eventChannel: String
        get() = "customer_sdk/events/request_pin_reset"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return requestPinReset(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun requestPinReset(call: MethodCall): String? {
            val result = UserPinResetRequestApi().requestPinReset(
                mode = call.argument<String>("mode") as String,
                email = call.argument<String?>("email"),
                phone = call.argument<String?>("phone"),
                countryCode = call.argument<String?>("countryCode")
            ).toJsonResult<UserPinResetRequest>()

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
        UserPinResetRequestApi().userPinResetRequestState.serializeUserPinResetRequestState().observe { result ->
            pushSerializedResultToEventSink<UserPinResetRequestApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
