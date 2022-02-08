package com.kangaroo.flutterplugin.android.features.userNotificationPreferences

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userNotificationPreferences.GetNotificationPreferencesApi
import kangaroorewards.appsdk.features.userNotificationPreferences.serializeGetNotificationPreferencesState


class GetNotificationPreferencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_notification_preferences"

    override val eventChannel: String
        get() = "customer_sdk/events/get_notification_preferences"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getNotificationPreferences(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getNotificationPreferences(call: MethodCall): Unit? {
            GetNotificationPreferencesApi().getNotificationPreferences()
            return null
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
