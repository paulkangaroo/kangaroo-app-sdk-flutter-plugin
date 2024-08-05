@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessUsedCoupons

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessUsedCoupons.UserBusinessUsedCouponsApi
import features.userBusinessUsedCoupons.models.UserBusinessCouponsModel

import features.userBusinessUsedCoupons.serializeUserBusinessUsedCouponsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessUsedCouponsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_used_coupons"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_used_coupons"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessUsedCoupons(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessUsedCoupons(call: MethodCall): String? {
            val result = UserBusinessUsedCouponsApi().getUserBusinessUsedCoupons(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessCouponsModel>()

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
        UserBusinessUsedCouponsApi().userBusinessUsedCouponsState.serializeUserBusinessUsedCouponsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessUsedCouponsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
