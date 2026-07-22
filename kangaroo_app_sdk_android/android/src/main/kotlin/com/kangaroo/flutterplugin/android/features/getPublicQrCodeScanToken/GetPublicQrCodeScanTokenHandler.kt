@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getPublicQrCodeScanToken

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getPublicQrCodeScanToken.GetPublicQrCodeScanTokenApi
import features.getPublicQrCodeScanToken.models.GetPublicQrCodeScanTokenResponseModel

import features.getPublicQrCodeScanToken.serializeGetPublicQrCodeScanTokenState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.getPublicQrCodeScanToken.models.PublicQrCodeScanTokenRequest

class GetPublicQrCodeScanTokenHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_qr_code_scan_token"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_qr_code_scan_token"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicQrCodeScanToken(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicQrCodeScanToken(call: MethodCall): String? {
            val result = GetPublicQrCodeScanTokenApi().getPublicQrCodeScanToken(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                publicQrCodeScanTokenRequest = Json.decodeFromString(call.argument<String>("publicQrCodeScanTokenRequest") as String)
            ).toJsonResult<GetPublicQrCodeScanTokenResponseModel>()

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
        GetPublicQrCodeScanTokenApi().getPublicQrCodeScanTokenState.serializeGetPublicQrCodeScanTokenState().observe { result ->
            pushSerializedResultToEventSink<GetPublicQrCodeScanTokenApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
