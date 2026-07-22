@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicQrCodeScan

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicQrCodeScan.ScanningPublicQrCodeApi
import features.publicQrCodeScan.models.PublicQrCodeScanResponseModel

import features.publicQrCodeScan.serializeScanningPublicQrCodeState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.publicQrCodeScan.models.ScanPublicQrCodeRequest

class ScanningPublicQrCodeHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/scan_public_qr_code"

    override val eventChannel: String
        get() = "customer_sdk/events/scan_public_qr_code"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return scanPublicQrCode(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun scanPublicQrCode(call: MethodCall): String? {
            val result = ScanningPublicQrCodeApi().scanPublicQrCode(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                scanPublicQrCodeRequest = Json.decodeFromString(call.argument<String>("scanPublicQrCodeRequest") as String)
            ).toJsonResult<PublicQrCodeScanResponseModel>()

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
        ScanningPublicQrCodeApi().scanningPublicQrCodeState.serializeScanningPublicQrCodeState().observe { result ->
            pushSerializedResultToEventSink<ScanningPublicQrCodeApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
