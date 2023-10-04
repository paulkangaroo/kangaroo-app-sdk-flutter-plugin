@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessAlaCarteProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessAlaCarteProducts.UserBusinessAlaCarteProductsApi
import features.userBusinessAlaCarteProducts.models.AlaCarteProductsModel

import features.userBusinessAlaCarteProducts.serializeUserBusinessAlaCarteProductsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessAlaCarteProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_ala_carte_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_ala_carte_products"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessAlaCarteProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessAlaCarteProducts(call: MethodCall): String? {
            val result = UserBusinessAlaCarteProductsApi().getUserBusinessAlaCarteProducts(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<AlaCarteProductsModel>()

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
        UserBusinessAlaCarteProductsApi().userBusinessAlaCarteProductsState.serializeUserBusinessAlaCarteProductsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessAlaCarteProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
