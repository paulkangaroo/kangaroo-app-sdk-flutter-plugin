@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.conglomerateMemberships

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.conglomerateMemberships.ConglomerateMembershipsApi
import features.conglomerateMemberships.models.Businesses

import features.conglomerateMemberships.serializeConglomerateMembershipsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class ConglomerateMembershipsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_conglomerate_memberships"

    override val eventChannel: String
        get() = "customer_sdk/events/get_conglomerate_memberships"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getConglomerateMemberships(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getConglomerateMemberships(call: MethodCall): String? {
            val result = ConglomerateMembershipsApi().getConglomerateMemberships(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,

            ).toJsonResult<Businesses>()

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
        ConglomerateMembershipsApi().conglomerateMembershipsState.serializeConglomerateMembershipsState().observe { result ->
            pushSerializedResultToEventSink<ConglomerateMembershipsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
