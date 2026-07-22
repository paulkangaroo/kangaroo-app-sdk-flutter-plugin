@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.triggerGeofence

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.triggerGeofence.TriggerGeofencesApi
import features.triggerGeofence.models.TriggerGeofenceResponseModel

import features.triggerGeofence.serializeTriggerGeofencesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.triggerGeofence.models.TriggerGeofenceRequest

class TriggerGeofencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/trigger_geofence"

    override val eventChannel: String
        get() = "customer_sdk/events/trigger_geofence"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return triggerGeofence(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun triggerGeofence(call: MethodCall): String? {
            val result = TriggerGeofencesApi().triggerGeofence(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                triggerGeofenceRequest = Json.decodeFromString(call.argument<String>("triggerGeofenceRequest") as String)
            ).toJsonResult<TriggerGeofenceResponseModel>()

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
        TriggerGeofencesApi().triggerGeofencesState.serializeTriggerGeofencesState().observe { result ->
            pushSerializedResultToEventSink<TriggerGeofencesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
