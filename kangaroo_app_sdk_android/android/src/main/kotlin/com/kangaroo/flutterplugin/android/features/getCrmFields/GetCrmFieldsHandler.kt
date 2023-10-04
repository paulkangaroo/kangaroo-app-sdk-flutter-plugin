@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getCrmFields

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getCrmFields.GetCrmFieldsApi
import features.getCrmFields.models.CrmFields

import features.getCrmFields.serializeGetCrmFieldsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetCrmFieldsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_crm_fields"

    override val eventChannel: String
        get() = "customer_sdk/events/get_crm_fields"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getCrmFields(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getCrmFields(call: MethodCall): String? {
            val result = GetCrmFieldsApi().getCrmFields().toJsonResult<CrmFields>()

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
        GetCrmFieldsApi().getCrmFieldsState.serializeGetCrmFieldsState().observe { result ->
            pushSerializedResultToEventSink<GetCrmFieldsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
