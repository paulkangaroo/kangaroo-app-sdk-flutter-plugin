@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.pushTokenRegistration

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.pushTokenRegistration.PushTokenRegistrationApi
import features.pushTokenRegistration.models.UserProfileModel

import features.pushTokenRegistration.serializePushTokenRegistrationState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PushTokenRegistrationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/register_push_token"

    override val eventChannel: String
        get() = "customer_sdk/events/register_push_token"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return registerPushToken(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun registerPushToken(call: MethodCall): String? {
            val result = PushTokenRegistrationApi().registerPushToken(
                androidDeviceToken = call.argument<String?>("androidDeviceToken"),
                iosDeviceToken = call.argument<String?>("iosDeviceToken")
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
        PushTokenRegistrationApi().pushTokenRegistrationState.serializePushTokenRegistrationState().observe { result ->
            pushSerializedResultToEventSink<PushTokenRegistrationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
