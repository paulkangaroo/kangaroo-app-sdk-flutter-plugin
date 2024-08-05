@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getPublicPromotions

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getPublicPromotions.GetPublicPromotionsApi
import features.getPublicPromotions.models.PromotionsModel

import features.getPublicPromotions.serializeGetPublicPromotionsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetPublicPromotionsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_promotions"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_promotions"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicPromotions(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicPromotions(call: MethodCall): String? {
            val result = GetPublicPromotionsApi().getPublicPromotions(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                campaignId = call.argument<String>("campaignId") as String
            ).toJsonResult<PromotionsModel>()

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
        GetPublicPromotionsApi().getPublicPromotionsState.serializeGetPublicPromotionsState().observe { result ->
            pushSerializedResultToEventSink<GetPublicPromotionsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
