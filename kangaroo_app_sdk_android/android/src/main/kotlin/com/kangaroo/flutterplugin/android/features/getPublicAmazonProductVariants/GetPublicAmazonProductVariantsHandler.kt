@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getPublicAmazonProductVariants

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getPublicAmazonProductVariants.GetPublicAmazonProductVariantsApi
import features.getPublicAmazonProductVariants.models.PublicRewardResponseModel

import features.getPublicAmazonProductVariants.serializeGetPublicAmazonProductVariantsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetPublicAmazonProductVariantsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_amazon_product_variants"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_amazon_product_variants"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicAmazonProductVariants(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicAmazonProductVariants(call: MethodCall): String? {
            val result = GetPublicAmazonProductVariantsApi().getPublicAmazonProductVariants(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                rewardSlug = call.argument<String>("rewardSlug") as String,
                externalProductId = call.argument<String>("externalProductId") as String
            ).toJsonResult<PublicRewardResponseModel>()

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
        GetPublicAmazonProductVariantsApi().getPublicAmazonProductVariantsState.serializeGetPublicAmazonProductVariantsState().observe { result ->
            pushSerializedResultToEventSink<GetPublicAmazonProductVariantsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
