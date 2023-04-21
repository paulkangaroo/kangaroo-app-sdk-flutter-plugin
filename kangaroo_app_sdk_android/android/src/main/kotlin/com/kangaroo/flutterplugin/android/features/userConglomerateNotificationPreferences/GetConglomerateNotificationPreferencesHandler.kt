package com.kangaroo.flutterplugin.android.features.userConglomerateNotificationPreferences

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userConglomerateNotificationPreferences.GetConglomerateNotificationPreferencesApi
import features.userConglomerateNotificationPreferences.serializeGetConglomerateNotificationPreferencesState


class GetConglomerateNotificationPreferencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_conglomerate_notification_preferences"

    override val eventChannel: String
        get() = "customer_sdk/events/get_conglomerate_notification_preferences"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getConglomerateNotificationPreferences(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getConglomerateNotificationPreferences(call: MethodCall): Unit? {
            GetConglomerateNotificationPreferencesApi().getConglomerateNotificationPreferences()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        GetConglomerateNotificationPreferencesApi().getConglomerateNotificationPreferencesState.serializeGetConglomerateNotificationPreferencesState().observe { result ->
            pushSerializedResultToEventSink<GetConglomerateNotificationPreferencesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
