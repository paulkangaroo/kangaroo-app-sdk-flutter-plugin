@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userAmazonCatalogue

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userAmazonCatalogue.UserAmazonCatalogueApi
import features.userAmazonCatalogue.models.UserRewardsModel

import features.userAmazonCatalogue.serializeUserAmazonCatalogueState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserAmazonCatalogueHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_amazon_catalogue"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_amazon_catalogue"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserAmazonCatalogue(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserAmazonCatalogue(call: MethodCall): String? {
            val result = UserAmazonCatalogueApi().getUserAmazonCatalogue(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                pageNumber = call.argument<Int>("pageNumber") as Int,
                perPage = call.argument<Int>("perPage") as Int,
                keywords = call.argument<String?>("keywords") as String?,
                filters = call.argument<String?>("filters") as String?
            ).toJsonResult<UserRewardsModel>()

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
        UserAmazonCatalogueApi().userAmazonCatalogueState.serializeUserAmazonCatalogueState().observe { result ->
            pushSerializedResultToEventSink<UserAmazonCatalogueApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
