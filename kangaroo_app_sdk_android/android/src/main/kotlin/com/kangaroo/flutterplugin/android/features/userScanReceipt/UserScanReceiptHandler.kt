@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userScanReceipt

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userScanReceipt.UserScanReceiptApi
import features.userScanReceipt.models.ScanReceiptResponseModel

import features.userScanReceipt.serializeUserScanReceiptState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userScanReceipt.models.ScanReceiptRequest

class UserScanReceiptHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/scan_receipt"

    override val eventChannel: String
        get() = "customer_sdk/events/scan_receipt"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return scanReceipt(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun scanReceipt(call: MethodCall): String? {
            val result = UserScanReceiptApi().scanReceipt(
                scanReceiptRequest = Json.decodeFromString(call.argument<String>("scanReceiptRequest") as String)
            ).toJsonResult<ScanReceiptResponseModel>()

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
        UserScanReceiptApi().userScanReceiptState.serializeUserScanReceiptState().observe { result ->
            pushSerializedResultToEventSink<UserScanReceiptApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
