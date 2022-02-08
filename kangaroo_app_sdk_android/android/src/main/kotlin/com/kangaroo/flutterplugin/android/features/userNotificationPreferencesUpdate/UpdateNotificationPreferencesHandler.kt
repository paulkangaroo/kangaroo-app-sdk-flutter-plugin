package com.kangaroo.flutterplugin.android.features.userNotificationPreferencesUpdate

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.UpdateNotificationPreferencesApi
import kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.serializeUpdateNotificationPreferencesState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationSettingsData

class UpdateNotificationPreferencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_notification_preferences"

    override val eventChannel: String
        get() = "customer_sdk/events/update_notification_preferences"

    override fun onMethodCall(call: MethodCall): Unit? {
        return updateNotificationPreferences(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun updateNotificationPreferences(call: MethodCall): Unit? {
            UpdateNotificationPreferencesApi().updateNotificationPreferences(
                notificationPreferencesRequest = Json.decodeFromString(call.argument<String>("notificationPreferencesRequest") as String)
            )
            return null
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
