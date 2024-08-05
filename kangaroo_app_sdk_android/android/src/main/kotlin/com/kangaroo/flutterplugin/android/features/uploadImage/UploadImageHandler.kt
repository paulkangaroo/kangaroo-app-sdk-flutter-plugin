@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.uploadImage

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.uploadImage.UploadImageApi
import features.uploadImage.models.ImagesResponseModel

import features.uploadImage.serializeUploadImageState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json

class UploadImageHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/upload_image"

    override val eventChannel: String
        get() = "customer_sdk/events/upload_image"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return uploadImage(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun uploadImage(call: MethodCall): String? {
            val result = UploadImageApi().uploadImage(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                uploadImageBodyRequest = Json.decodeFromString(call.argument<String>("uploadImageBodyRequest") as String)
            ).toJsonResult<ImagesResponseModel>()

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
        UploadImageApi().uploadImageState.serializeUploadImageState().observe { result ->
            pushSerializedResultToEventSink<UploadImageApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
