@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.orderStatus

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.orderStatus.OrderStatusApi
import features.orderStatus.models.OrderStatusResponseModel

import features.orderStatus.serializeOrderStatusState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class OrderStatusHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_order_status"

    override val eventChannel: String
        get() = "customer_sdk/events/get_order_status"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getOrderStatus(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getOrderStatus(call: MethodCall): String? {
            val result = OrderStatusApi().getOrderStatus(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<OrderStatusResponseModel>()

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
        OrderStatusApi().orderStatusState.serializeOrderStatusState().observe { result ->
            pushSerializedResultToEventSink<OrderStatusApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
