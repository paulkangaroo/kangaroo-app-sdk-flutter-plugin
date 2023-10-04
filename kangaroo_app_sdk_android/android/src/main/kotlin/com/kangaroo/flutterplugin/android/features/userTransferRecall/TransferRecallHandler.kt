@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userTransferRecall

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userTransferRecall.TransferRecallApi
import features.userTransferRecall.models.TransferActionResultModel

import features.userTransferRecall.serializeTransferRecallState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json


class TransferRecallHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/recall_transfer"

    override val eventChannel: String
        get() = "customer_sdk/events/recall_transfer"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return recallTransfer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun recallTransfer(call: MethodCall): String? {
            val result = TransferRecallApi().recallTransfer(
                recallId = call.argument<String>("recallId") as String
            ).toJsonResult<TransferActionResultModel>()

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
        TransferRecallApi().transferRecallState.serializeTransferRecallState().observe { result ->
            pushSerializedResultToEventSink<TransferRecallApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
