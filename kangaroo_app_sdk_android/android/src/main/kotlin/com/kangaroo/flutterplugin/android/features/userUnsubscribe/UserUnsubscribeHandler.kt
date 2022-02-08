package com.kangaroo.flutterplugin.android.features.userUnsubscribe

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userUnsubscribe.UserUnsubscribeApi
import kangaroorewards.appsdk.features.userUnsubscribe.serializeUserUnsubscribeState


class UserUnsubscribeHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/unsubscribe"

    override val eventChannel: String
        get() = "customer_sdk/events/unsubscribe"

    override fun onMethodCall(call: MethodCall): Unit? {
        return unsubscribe(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun unsubscribe(call: MethodCall): Unit? {
            UserUnsubscribeApi().unsubscribe(
                campaignId = call.argument<String>("campaignId") as String,
                token = call.argument<String>("token") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserUnsubscribeApi().userUnsubscribeState.serializeUserUnsubscribeState().observe { result ->
            pushSerializedResultToEventSink<UserUnsubscribeApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
