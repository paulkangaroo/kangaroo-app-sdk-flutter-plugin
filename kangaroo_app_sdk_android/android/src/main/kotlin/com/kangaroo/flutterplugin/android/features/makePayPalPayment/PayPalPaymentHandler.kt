package com.kangaroo.flutterplugin.android.features.makePayPalPayment

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.makePayPalPayment.PayPalPaymentApi
import features.makePayPalPayment.serializePayPalPaymentState


class PayPalPaymentHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/make_pay_pal_payment"

    override val eventChannel: String
        get() = "customer_sdk/events/make_pay_pal_payment"

    override fun onMethodCall(call: MethodCall): Unit? {
        return makePayPalPayment(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun makePayPalPayment(call: MethodCall): Unit? {
            PayPalPaymentApi().makePayPalPayment(
                intent = call.argument<String>("intent") as String,
                provider = call.argument<String>("provider") as String,
                giftcardId = call.argument<Int>("giftcardId") as Int,
                paypalReturnUrl = call.argument<String>("paypalReturnUrl") as String,
                paypalCancelUrl = call.argument<String>("paypalCancelUrl") as String
            )
            return null
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
