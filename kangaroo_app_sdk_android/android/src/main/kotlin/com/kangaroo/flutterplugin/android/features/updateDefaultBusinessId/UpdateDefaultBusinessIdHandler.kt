@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.updateDefaultBusinessId

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.updateDefaultBusinessId.UpdateDefaultBusinessIdApi
import features.updateDefaultBusinessId.models.DefaultBusiness

import features.updateDefaultBusinessId.serializeUpdateDefaultBusinessIdState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UpdateDefaultBusinessIdHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_default_business_id"

    override val eventChannel: String
        get() = "customer_sdk/events/update_default_business_id"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return updateDefaultBusinessId(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun updateDefaultBusinessId(call: MethodCall): String? {
            val result = UpdateDefaultBusinessIdApi().updateDefaultBusinessId(
                businessId = call.argument<String>("businessId") as String,
                defaultBusinessId = call.argument<String>("defaultBusinessId") as String
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
        UpdateDefaultBusinessIdApi().updateDefaultBusinessIdState.serializeUpdateDefaultBusinessIdState().observe { result ->
            pushSerializedResultToEventSink<UpdateDefaultBusinessIdApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
