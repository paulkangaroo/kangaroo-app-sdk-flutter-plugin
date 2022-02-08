package com.kangaroo.flutterplugin.android.features.frequentBuyerPrograms

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.frequentBuyerPrograms.FrequentBuyerProgramsApi
import kangaroorewards.appsdk.features.frequentBuyerPrograms.serializeFrequentBuyerProgramsState


class FrequentBuyerProgramsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_frequent_buyer_programs"

    override val eventChannel: String
        get() = "customer_sdk/events/get_frequent_buyer_programs"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getFrequentBuyerPrograms(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getFrequentBuyerPrograms(call: MethodCall): Unit? {
            FrequentBuyerProgramsApi().getFrequentBuyerPrograms()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        FrequentBuyerProgramsApi().frequentBuyerProgramsState.serializeFrequentBuyerProgramsState().observe { result ->
            pushSerializedResultToEventSink<FrequentBuyerProgramsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
