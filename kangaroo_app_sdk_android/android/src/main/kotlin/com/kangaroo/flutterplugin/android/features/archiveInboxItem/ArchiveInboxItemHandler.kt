@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.archiveInboxItem

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.archiveInboxItem.ArchiveInboxItemApi
import features.archiveInboxItem.models.ArchiveResponseModel

import features.archiveInboxItem.serializeArchiveInboxItemState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.archiveInboxItem.models.ArchiveRequest

class ArchiveInboxItemHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/archive_inbox_item"

    override val eventChannel: String
        get() = "customer_sdk/events/archive_inbox_item"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return archiveInboxItem(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun archiveInboxItem(call: MethodCall): String? {
            val result = ArchiveInboxItemApi().archiveInboxItem(
                archiveRequest = Json.decodeFromString(call.argument<String>("archiveRequest") as String)
            ).toJsonResult<ArchiveResponseModel>()

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
        ArchiveInboxItemApi().archiveInboxItemState.serializeArchiveInboxItemState().observe { result ->
            pushSerializedResultToEventSink<ArchiveInboxItemApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
