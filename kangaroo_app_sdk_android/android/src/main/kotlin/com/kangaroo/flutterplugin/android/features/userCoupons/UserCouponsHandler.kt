package com.kangaroo.flutterplugin.android.features.userCoupons

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userCoupons.UserCouponsApi
import features.userCoupons.serializeUserCouponsState


class UserCouponsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_coupons"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_coupons"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserCoupons(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserCoupons(call: MethodCall): Unit? {
            UserCouponsApi().getUserCoupons()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserCouponsApi().userCouponsState.serializeUserCouponsState().observe { result ->
            pushSerializedResultToEventSink<UserCouponsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
