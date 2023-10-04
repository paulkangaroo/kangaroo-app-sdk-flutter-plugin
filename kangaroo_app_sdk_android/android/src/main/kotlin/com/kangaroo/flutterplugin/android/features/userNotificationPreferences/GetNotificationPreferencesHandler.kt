@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userNotificationPreferences

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userNotificationPreferences.GetNotificationPreferencesApi
import features.userNotificationPreferences.models.NotificationSettingsModel

import features.userNotificationPreferences.serializeGetNotificationPreferencesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetNotificationPreferencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_notification_preferences"

    override val eventChannel: String
        get() = "customer_sdk/events/get_notification_preferences"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getNotificationPreferences(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getNotificationPreferences(call: MethodCall): String? {
            val result = GetNotificationPreferencesApi().getNotificationPreferences().toJsonResult<NotificationSettingsModel>()

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
        GetNotificationPreferencesApi().getNotificationPreferencesState.serializeGetNotificationPreferencesState().observe { result ->
            pushSerializedResultToEventSink<GetNotificationPreferencesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
