@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.makePayPalPayment

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.makePayPalPayment.PayPalPaymentApi
import features.makePayPalPayment.models.PayPalPaymentModel

import features.makePayPalPayment.serializePayPalPaymentState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class PayPalPaymentHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/make_pay_pal_payment"

    override val eventChannel: String
        get() = "customer_sdk/events/make_pay_pal_payment"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return makePayPalPayment(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun makePayPalPayment(call: MethodCall): String? {
            val result = PayPalPaymentApi().makePayPalPayment(
                intent = call.argument<String>("intent") as String,
                provider = call.argument<String>("provider") as String,
                giftcardId = call.argument<Int>("giftcardId") as Int,
                paypalReturnUrl = call.argument<String>("paypalReturnUrl") as String,
                paypalCancelUrl = call.argument<String>("paypalCancelUrl") as String
            ).toJsonResult<PayPalPaymentModel>()

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
        PayPalPaymentApi().payPalPaymentState.serializePayPalPaymentState().observe { result ->
            pushSerializedResultToEventSink<PayPalPaymentApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
