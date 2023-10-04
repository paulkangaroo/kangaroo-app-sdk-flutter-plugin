@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userCheckIn

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userCheckIn.UserCheckInApi
import features.userCheckIn.models.CheckInResponseModel

import features.userCheckIn.serializeUserCheckInState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userCheckIn.models.CheckInRequest

class UserCheckInHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/user_check_in"

    override val eventChannel: String
        get() = "customer_sdk/events/user_check_in"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return userCheckIn(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun userCheckIn(call: MethodCall): String? {
            val result = UserCheckInApi().userCheckIn(
                checkInRequest = Json.decodeFromString(call.argument<String>("checkInRequest") as String)
            ).toJsonResult<CheckInResponseModel>()

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
        UserCheckInApi().userCheckInState.serializeUserCheckInState().observe { result ->
            pushSerializedResultToEventSink<UserCheckInApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
