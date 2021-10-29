package com.kangaroo.flutterplugin.android.features.frequentBuyer

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.frequentBuyer.FrequentBuyerApi
import kangaroorewards.appsdk.features.frequentBuyer.serializeFrequentBuyerState


class FrequentBuyerHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_frequent_buyer"

    override val eventChannel: String
        get() = "customer_sdk/events/get_frequent_buyer"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getFrequentBuyer(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getFrequentBuyer(call: MethodCall): Unit? {
            FrequentBuyerApi().getFrequentBuyer()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        FrequentBuyerApi().frequentBuyerState.serializeFrequentBuyerState().observe { result ->
            pushSerializedResultToEventSink<FrequentBuyerApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
