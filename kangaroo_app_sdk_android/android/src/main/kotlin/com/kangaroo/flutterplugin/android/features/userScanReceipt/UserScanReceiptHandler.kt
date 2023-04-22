package com.kangaroo.flutterplugin.android.features.userScanReceipt

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userScanReceipt.UserScanReceiptApi
import features.userScanReceipt.serializeUserScanReceiptState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userScanReceipt.models.ScanReceiptRequest

class UserScanReceiptHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/scan_receipt"

    override val eventChannel: String
        get() = "customer_sdk/events/scan_receipt"

    override fun onMethodCall(call: MethodCall): Unit? {
        return scanReceipt(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun scanReceipt(call: MethodCall): Unit? {
            UserScanReceiptApi().scanReceipt(
                scanReceiptRequest = Json.decodeFromString(call.argument<String>("scanReceiptRequest") as String)
            )
            return null
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
