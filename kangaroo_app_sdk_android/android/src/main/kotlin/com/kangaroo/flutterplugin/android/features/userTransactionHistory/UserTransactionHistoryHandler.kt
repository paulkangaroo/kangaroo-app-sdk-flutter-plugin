package com.kangaroo.flutterplugin.android.features.userTransactionHistory

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userTransactionHistory.UserTransactionHistoryApi
import features.userTransactionHistory.serializeUserTransactionHistoryState


class UserTransactionHistoryHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_transaction_history"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_transaction_history"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserTransactionHistory(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserTransactionHistory(call: MethodCall): Unit? {
            UserTransactionHistoryApi().getUserTransactionHistory()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UserTransactionHistoryApi().userTransactionHistoryState.serializeUserTransactionHistoryState().observe { result ->
            pushSerializedResultToEventSink<UserTransactionHistoryApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
