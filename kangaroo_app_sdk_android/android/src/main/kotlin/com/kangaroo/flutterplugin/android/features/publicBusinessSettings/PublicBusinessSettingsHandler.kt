package com.kangaroo.flutterplugin.android.features.publicBusinessSettings

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.publicBusinessSettings.PublicBusinessSettingsApi
import kangaroorewards.appsdk.features.publicBusinessSettings.serializePublicBusinessSettingsState


class PublicBusinessSettingsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_business_settings"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_business_settings"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicBusinessSettings(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicBusinessSettings(call: MethodCall): Unit? {
            PublicBusinessSettingsApi().getPublicBusinessSettings()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicBusinessSettingsApi().publicBusinessSettingsState.serializePublicBusinessSettingsState().observe { result ->
            pushSerializedResultToEventSink<PublicBusinessSettingsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
