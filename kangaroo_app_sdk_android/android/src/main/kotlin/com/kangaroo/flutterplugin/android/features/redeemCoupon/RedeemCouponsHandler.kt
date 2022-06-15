package com.kangaroo.flutterplugin.android.features.redeemCoupon

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.redeemCoupon.RedeemCouponsApi
import kangaroorewards.appsdk.features.redeemCoupon.serializeRedeemCouponsState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kangaroorewards.appsdk.features.redeemCoupon.models.RedeemCouponRequest

class RedeemCouponsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/redeem_coupon"

    override val eventChannel: String
        get() = "customer_sdk/events/redeem_coupon"

    override fun onMethodCall(call: MethodCall): Unit? {
        return redeemCoupon(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun redeemCoupon(call: MethodCall): Unit? {
            RedeemCouponsApi().redeemCoupon(
                redeemCouponRequest = Json.decodeFromString(call.argument<String>("redeemCouponRequest") as String)
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        RedeemCouponsApi().redeemCouponsState.serializeRedeemCouponsState().observe { result ->
            pushSerializedResultToEventSink<RedeemCouponsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
