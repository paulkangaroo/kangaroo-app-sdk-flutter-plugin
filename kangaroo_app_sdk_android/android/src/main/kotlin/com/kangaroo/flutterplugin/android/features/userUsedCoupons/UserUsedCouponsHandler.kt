package com.kangaroo.flutterplugin.android.features.userUsedCoupons

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userUsedCoupons.UserUsedCouponsApi
import kangaroorewards.appsdk.features.userUsedCoupons.serializeUserUsedCouponsState


class UserUsedCouponsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_used_coupons"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_used_coupons"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserUsedCoupons(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserUsedCoupons(call: MethodCall): Unit? {
            UserUsedCouponsApi().getUserUsedCoupons()
            return null
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
