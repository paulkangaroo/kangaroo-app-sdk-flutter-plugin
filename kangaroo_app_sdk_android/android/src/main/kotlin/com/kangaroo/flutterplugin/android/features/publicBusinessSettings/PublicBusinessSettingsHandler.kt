@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicBusinessSettings

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicBusinessSettings.PublicBusinessSettingsApi
import features.publicBusinessSettings.models.PublicBusinessSettings

import features.publicBusinessSettings.serializePublicBusinessSettingsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PublicBusinessSettingsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_business_settings"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_business_settings"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicBusinessSettings(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicBusinessSettings(call: MethodCall): String? {
            val result = PublicBusinessSettingsApi().getPublicBusinessSettings().toJsonResult<PublicBusinessSettings>()

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
        PublicBusinessSettingsApi().publicBusinessSettingsState.serializePublicBusinessSettingsState().observe { result ->
            pushSerializedResultToEventSink<PublicBusinessSettingsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
