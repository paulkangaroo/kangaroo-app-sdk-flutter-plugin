package com.kangaroo.flutterplugin.android.features.strings

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.strings.StringsApi
import kangaroorewards.appsdk.features.strings.serializeStringsState


class StringsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_strings"

    override val eventChannel: String
        get() = "customer_sdk/events/get_strings"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getStrings(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getStrings(call: MethodCall): Unit? {
            StringsApi().getStrings()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        StringsApi().stringsState.serializeStringsState().observe { result ->
            pushSerializedResultToEventSink<StringsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
