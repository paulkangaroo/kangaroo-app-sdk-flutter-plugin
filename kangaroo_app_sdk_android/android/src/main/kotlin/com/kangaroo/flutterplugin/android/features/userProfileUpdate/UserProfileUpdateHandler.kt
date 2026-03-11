@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userProfileUpdate

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userProfileUpdate.UserProfileUpdateApi
import features.userProfileUpdate.models.UserProfileModel

import features.userProfileUpdate.serializeUserProfileUpdateState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userProfileUpdate.models.UpdateUserProfileRequest

class UserProfileUpdateHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_user_profile"

    override val eventChannel: String
        get() = "customer_sdk/events/update_user_profile"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return updateUserProfile(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun updateUserProfile(call: MethodCall): String? {
            val result = UserProfileUpdateApi().updateUserProfile(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                updateUserProfileRequest = Json.decodeFromString(call.argument<String>("updateUserProfileRequest") as String)
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
        UserProfileUpdateApi().userProfileUpdateState.serializeUserProfileUpdateState().observe { result ->
            pushSerializedResultToEventSink<UserProfileUpdateApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
