package com.kangaroo.flutterplugin.android.features.userCheckIn

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.userCheckIn.UserCheckInApi
import kangaroorewards.appsdk.features.userCheckIn.serializeUserCheckInState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kangaroorewards.appsdk.features.userCheckIn.models.CheckInRequest

class UserCheckInHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/user_check_in"

    override val eventChannel: String
        get() = "customer_sdk/events/user_check_in"

    override fun onMethodCall(call: MethodCall): Unit? {
        return userCheckIn(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun userCheckIn(call: MethodCall): Unit? {
            UserCheckInApi().userCheckIn(
                checkInRequest = Json.decodeFromString(call.argument<String>("checkInRequest") as String)
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserCheckInApi().userCheckInState.serializeUserCheckInState().observe { result ->
            pushSerializedResultToEventSink<UserCheckInApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
