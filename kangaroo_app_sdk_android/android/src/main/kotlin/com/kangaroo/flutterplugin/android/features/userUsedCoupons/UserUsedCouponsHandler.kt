@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userUsedCoupons

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userUsedCoupons.UserUsedCouponsApi
import features.userUsedCoupons.models.UserCouponsModel

import features.userUsedCoupons.serializeUserUsedCouponsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserUsedCouponsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_used_coupons"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_used_coupons"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserUsedCoupons(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserUsedCoupons(call: MethodCall): String? {
            val result = UserUsedCouponsApi().getUserUsedCoupons().toJsonResult<UserCouponsModel>()

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
        UserUsedCouponsApi().userUsedCouponsState.serializeUserUsedCouponsState().observe { result ->
            pushSerializedResultToEventSink<UserUsedCouponsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
