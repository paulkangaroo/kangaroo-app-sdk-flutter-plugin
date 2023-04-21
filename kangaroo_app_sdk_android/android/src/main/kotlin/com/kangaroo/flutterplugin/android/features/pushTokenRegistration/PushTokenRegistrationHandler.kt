package com.kangaroo.flutterplugin.android.features.pushTokenRegistration

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.pushTokenRegistration.PushTokenRegistrationApi
import features.pushTokenRegistration.serializePushTokenRegistrationState


class PushTokenRegistrationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/register_push_token"

    override val eventChannel: String
        get() = "customer_sdk/events/register_push_token"

    override fun onMethodCall(call: MethodCall): Unit? {
        return registerPushToken(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun registerPushToken(call: MethodCall): Unit? {
            PushTokenRegistrationApi().registerPushToken(
                androidDeviceToken = call.argument<String?>("androidDeviceToken"),
                iosDeviceToken = call.argument<String?>("iosDeviceToken")
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PushTokenRegistrationApi().pushTokenRegistrationState.serializePushTokenRegistrationState().observe { result ->
            pushSerializedResultToEventSink<PushTokenRegistrationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
