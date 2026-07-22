@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.redeemAmazonCatalogueItem

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.redeemAmazonCatalogueItem.RedeemAmazonCatalogueItemsApi
import features.redeemAmazonCatalogueItem.models.RedeemResponseModel

import features.redeemAmazonCatalogueItem.serializeRedeemAmazonCatalogueItemsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.redeemAmazonCatalogueItem.models.RedeemAmazonItemRequest

class RedeemAmazonCatalogueItemsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/redeem_amazon_catalogue_item"

    override val eventChannel: String
        get() = "customer_sdk/events/redeem_amazon_catalogue_item"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return redeemAmazonCatalogueItem(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun redeemAmazonCatalogueItem(call: MethodCall): String? {
            val result = RedeemAmazonCatalogueItemsApi().redeemAmazonCatalogueItem(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                redeemAmazonItemRequest = Json.decodeFromString(call.argument<String>("redeemAmazonItemRequest") as String)
            ).toJsonResult<RedeemResponseModel>()

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
        RedeemAmazonCatalogueItemsApi().redeemAmazonCatalogueItemsState.serializeRedeemAmazonCatalogueItemsState().observe { result ->
            pushSerializedResultToEventSink<RedeemAmazonCatalogueItemsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
