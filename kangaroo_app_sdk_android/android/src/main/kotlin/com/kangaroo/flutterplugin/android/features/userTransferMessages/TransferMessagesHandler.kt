@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userTransferMessages

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userTransferMessages.TransferMessagesApi
import features.userTransferMessages.models.TransferMessagesModel

import features.userTransferMessages.serializeTransferMessagesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class TransferMessagesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_transfer_messages"

    override val eventChannel: String
        get() = "customer_sdk/events/get_transfer_messages"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getTransferMessages(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getTransferMessages(call: MethodCall): String? {
            val result = TransferMessagesApi().getTransferMessages(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<TransferMessagesModel>()

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
        TransferMessagesApi().transferMessagesState.serializeTransferMessagesState().observe { result ->
            pushSerializedResultToEventSink<TransferMessagesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
