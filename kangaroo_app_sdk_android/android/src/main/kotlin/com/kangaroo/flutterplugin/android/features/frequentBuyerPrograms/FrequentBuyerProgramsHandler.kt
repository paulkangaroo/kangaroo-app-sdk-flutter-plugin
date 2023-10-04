@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.frequentBuyerPrograms

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.frequentBuyerPrograms.FrequentBuyerProgramsApi
import features.frequentBuyerPrograms.models.FrequentBuyerProgramsModel

import features.frequentBuyerPrograms.serializeFrequentBuyerProgramsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class FrequentBuyerProgramsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_frequent_buyer_programs"

    override val eventChannel: String
        get() = "customer_sdk/events/get_frequent_buyer_programs"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getFrequentBuyerPrograms(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getFrequentBuyerPrograms(call: MethodCall): String? {
            val result = FrequentBuyerProgramsApi().getFrequentBuyerPrograms().toJsonResult<FrequentBuyerProgramsModel>()

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
        FrequentBuyerProgramsApi().frequentBuyerProgramsState.serializeFrequentBuyerProgramsState().observe { result ->
            pushSerializedResultToEventSink<FrequentBuyerProgramsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
