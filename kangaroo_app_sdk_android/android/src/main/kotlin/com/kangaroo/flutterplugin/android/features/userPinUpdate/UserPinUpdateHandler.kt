@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userPinUpdate

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userPinUpdate.UserPinUpdateApi
import features.userPinUpdate.models.UserProfileModel

import features.userPinUpdate.serializeUserPinUpdateState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userPinUpdate.models.UpdatePinRequest

class UserPinUpdateHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_pin"

    override val eventChannel: String
        get() = "customer_sdk/events/update_pin"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return updatePin(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun updatePin(call: MethodCall): String? {
            val result = UserPinUpdateApi().updatePin(
                updatePinRequest = Json.decodeFromString(call.argument<String>("updatePinRequest") as String)
            ).toJsonResult<UserProfileModel>()

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
        UserPinUpdateApi().userPinUpdateState.serializeUserPinUpdateState().observe { result ->
            pushSerializedResultToEventSink<UserPinUpdateApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
