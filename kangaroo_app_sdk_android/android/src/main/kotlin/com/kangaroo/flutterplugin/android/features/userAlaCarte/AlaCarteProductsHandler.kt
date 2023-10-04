@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userAlaCarte

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userAlaCarte.AlaCarteProductsApi
import features.userAlaCarte.models.AlaCarteProductsModel

import features.userAlaCarte.serializeAlaCarteProductsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class AlaCarteProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_ala_carte_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_ala_carte_products"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getAlaCarteProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getAlaCarteProducts(call: MethodCall): String? {
            val result = AlaCarteProductsApi().getAlaCarteProducts().toJsonResult<AlaCarteProductsModel>()

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
        AlaCarteProductsApi().alaCarteProductsState.serializeAlaCarteProductsState().observe { result ->
            pushSerializedResultToEventSink<AlaCarteProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
