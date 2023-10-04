@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.redeemCoupon

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.redeemCoupon.RedeemCouponsApi
import features.redeemCoupon.models.CouponRedemptionResponseModel

import features.redeemCoupon.serializeRedeemCouponsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.redeemCoupon.models.RedeemCouponRequest

class RedeemCouponsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/redeem_coupon"

    override val eventChannel: String
        get() = "customer_sdk/events/redeem_coupon"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return redeemCoupon(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun redeemCoupon(call: MethodCall): String? {
            val result = RedeemCouponsApi().redeemCoupon(
                redeemCouponRequest = Json.decodeFromString(call.argument<String>("redeemCouponRequest") as String)
            ).toJsonResult<CouponRedemptionResponseModel>()

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
        RedeemCouponsApi().redeemCouponsState.serializeRedeemCouponsState().observe { result ->
            pushSerializedResultToEventSink<RedeemCouponsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
