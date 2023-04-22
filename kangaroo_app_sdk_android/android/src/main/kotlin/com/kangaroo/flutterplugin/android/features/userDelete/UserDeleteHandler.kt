package com.kangaroo.flutterplugin.android.features.userDelete

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userDelete.UserDeleteApi
import features.userDelete.serializeUserDeleteState


class UserDeleteHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/delete_user_account"

    override val eventChannel: String
        get() = "customer_sdk/events/delete_user_account"

    override fun onMethodCall(call: MethodCall): Unit? {
        return deleteUserAccount(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun deleteUserAccount(call: MethodCall): Unit? {
            UserDeleteApi().deleteUserAccount()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserDeleteApi().userDeleteState.serializeUserDeleteState().observe { result ->
            pushSerializedResultToEventSink<UserDeleteApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
