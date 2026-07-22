@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getAmazonProductVariants

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getAmazonProductVariants.GetAmazonProductVariantsApi
import features.getAmazonProductVariants.models.RewardResponseModel

import features.getAmazonProductVariants.serializeGetAmazonProductVariantsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetAmazonProductVariantsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_amazon_product_variants"

    override val eventChannel: String
        get() = "customer_sdk/events/get_amazon_product_variants"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getAmazonProductVariants(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getAmazonProductVariants(call: MethodCall): String? {
            val result = GetAmazonProductVariantsApi().getAmazonProductVariants(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                rewardId = call.argument<Int>("rewardId") as Int,
                externalProductId = call.argument<String>("externalProductId") as String
            ).toJsonResult<RewardResponseModel>()

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
        GetAmazonProductVariantsApi().getAmazonProductVariantsState.serializeGetAmazonProductVariantsState().observe { result ->
            pushSerializedResultToEventSink<GetAmazonProductVariantsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
