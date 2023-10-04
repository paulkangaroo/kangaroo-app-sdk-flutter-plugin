@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getDefaultBusinessId

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getDefaultBusinessId.GetDefaultBusinessIdApi
import features.getDefaultBusinessId.models.DefaultBusiness

import features.getDefaultBusinessId.serializeGetDefaultBusinessIdState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetDefaultBusinessIdHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_default_business_id"

    override val eventChannel: String
        get() = "customer_sdk/events/get_default_business_id"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getDefaultBusinessId(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getDefaultBusinessId(call: MethodCall): String? {
            val result = GetDefaultBusinessIdApi().getDefaultBusinessId(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<DefaultBusiness>()

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
        GetDefaultBusinessIdApi().getDefaultBusinessIdState.serializeGetDefaultBusinessIdState().observe { result ->
            pushSerializedResultToEventSink<GetDefaultBusinessIdApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
