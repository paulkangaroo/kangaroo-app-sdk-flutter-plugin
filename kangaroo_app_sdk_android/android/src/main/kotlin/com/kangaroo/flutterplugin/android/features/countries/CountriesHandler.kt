package com.kangaroo.flutterplugin.android.features.countries

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.countries.CountriesApi
import features.countries.serializeCountriesState


class CountriesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_countries"

    override val eventChannel: String
        get() = "customer_sdk/events/get_countries"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getCountries(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getCountries(call: MethodCall): Unit? {
            CountriesApi().getCountries()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        CountriesApi().countriesState.serializeCountriesState().observe { result ->
            pushSerializedResultToEventSink<CountriesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
