package com.kangaroo.flutterplugin.android.features.userBusinessBanners

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userBusinessBanners.UserBusinessBannersApi
import kangaroorewards.appsdk.features.userBusinessBanners.serializeUserBusinessBannersState


class UserBusinessBannersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_banners"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_banners"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessBanners(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessBanners(call: MethodCall): Unit? {
            UserBusinessBannersApi().getUserBusinessBanners(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserBusinessBannersApi().userBusinessBannersState.serializeUserBusinessBannersState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessBannersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
