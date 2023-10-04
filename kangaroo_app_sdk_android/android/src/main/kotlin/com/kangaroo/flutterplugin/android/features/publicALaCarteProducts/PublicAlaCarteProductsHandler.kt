@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.publicALaCarteProducts

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.publicALaCarteProducts.PublicAlaCarteProductsApi
import features.publicALaCarteProducts.models.PublicALaCarteProductsModel

import features.publicALaCarteProducts.serializePublicAlaCarteProductsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PublicAlaCarteProductsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_ala_carte_products"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_ala_carte_products"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getPublicAlaCarteProducts(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getPublicAlaCarteProducts(call: MethodCall): String? {
            val result = PublicAlaCarteProductsApi().getPublicAlaCarteProducts().toJsonResult<PublicALaCarteProductsModel>()

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
        PublicAlaCarteProductsApi().publicAlaCarteProductsState.serializePublicAlaCarteProductsState().observe { result ->
            pushSerializedResultToEventSink<PublicAlaCarteProductsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
