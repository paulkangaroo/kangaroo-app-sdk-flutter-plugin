package com.kangaroo.flutterplugin.android.features.userPinUpdate

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userPinUpdate.UserPinUpdateApi
import features.userPinUpdate.serializeUserPinUpdateState
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userPinUpdate.models.UpdatePinRequest

class UserPinUpdateHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_pin"

    override val eventChannel: String
        get() = "customer_sdk/events/update_pin"

    override fun onMethodCall(call: MethodCall): Unit? {
        return updatePin(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun updatePin(call: MethodCall): Unit? {
            UserPinUpdateApi().updatePin(
                updatePinRequest = Json.decodeFromString(call.argument<String>("updatePinRequest") as String)
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserPinUpdateApi().userPinUpdateState.serializeUserPinUpdateState().observe { result ->
            pushSerializedResultToEventSink<UserPinUpdateApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
