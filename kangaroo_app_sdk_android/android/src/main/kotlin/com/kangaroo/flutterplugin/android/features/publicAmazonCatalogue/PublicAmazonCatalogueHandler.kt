@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicAmazonCatalogue

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicAmazonCatalogue.PublicAmazonCatalogueApi
import features.publicAmazonCatalogue.models.PublicRewardsModel

import features.publicAmazonCatalogue.serializePublicAmazonCatalogueState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PublicAmazonCatalogueHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_amazon_catalogue"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_amazon_catalogue"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicAmazonCatalogue(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicAmazonCatalogue(call: MethodCall): String? {
            val result = PublicAmazonCatalogueApi().getPublicAmazonCatalogue(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                pageNumber = call.argument<Int>("pageNumber") as Int,
                perPage = call.argument<Int>("perPage") as Int,
                keywords = call.argument<String?>("keywords") as String?,
                filters = call.argument<String?>("filters") as String?
            ).toJsonResult<PublicRewardsModel>()

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
        PublicAmazonCatalogueApi().publicAmazonCatalogueState.serializePublicAmazonCatalogueState().observe { result ->
            pushSerializedResultToEventSink<PublicAmazonCatalogueApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
