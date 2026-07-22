@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.geofences

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.geofences.GeofencesApi
import features.geofences.models.GeofencesModel

import features.geofences.serializeGeofencesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GeofencesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_business_geofences"

    override val eventChannel: String
        get() = "customer_sdk/events/get_business_geofences"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getBusinessGeofences(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getBusinessGeofences(call: MethodCall): String? {
            val result = GeofencesApi().getBusinessGeofences(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                pageNumber = call.argument<Int>("pageNumber") as Int,
                perPage = call.argument<Int>("perPage") as Int
            ).toJsonResult<GeofencesModel>()

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
        GeofencesApi().geofencesState.serializeGeofencesState().observe { result ->
            pushSerializedResultToEventSink<GeofencesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
