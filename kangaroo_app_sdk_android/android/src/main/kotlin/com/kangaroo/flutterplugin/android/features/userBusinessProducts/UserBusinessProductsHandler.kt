@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessProducts.UserBusinessProductsApi
import features.userBusinessProducts.models.UserProductsModel

import features.userBusinessProducts.serializeUserBusinessProductsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_products"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessProducts(call: MethodCall): String? {
            val result = UserBusinessProductsApi().getUserBusinessProducts(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserProductsModel>()

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
        UserBusinessProductsApi().userBusinessProductsState.serializeUserBusinessProductsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
