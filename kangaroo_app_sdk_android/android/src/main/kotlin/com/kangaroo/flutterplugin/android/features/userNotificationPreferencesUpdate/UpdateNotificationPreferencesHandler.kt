@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userNotificationPreferencesUpdate

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userNotificationPreferencesUpdate.UpdateNotificationPreferencesApi
import features.userNotificationPreferencesUpdate.models.NotificationSettingsModel

import features.userNotificationPreferencesUpdate.serializeUpdateNotificationPreferencesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userNotificationPreferencesUpdate.models.NotificationSettingsUpdateRequest

class UpdateNotificationPreferencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_notification_preferences"

    override val eventChannel: String
        get() = "customer_sdk/events/update_notification_preferences"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return updateNotificationPreferences(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun updateNotificationPreferences(call: MethodCall): String? {
            val result = UpdateNotificationPreferencesApi().updateNotificationPreferences(
                notificationPreferencesRequest = Json.decodeFromString(call.argument<String>("notificationPreferencesRequest") as String)
            ).toJsonResult<NotificationSettingsModel>()

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
        UpdateNotificationPreferencesApi().updateNotificationPreferencesState.serializeUpdateNotificationPreferencesState().observe { result ->
            pushSerializedResultToEventSink<UpdateNotificationPreferencesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
