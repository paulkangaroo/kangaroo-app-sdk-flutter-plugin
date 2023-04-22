package com.kangaroo.flutterplugin.android.features.getSpinToWinPrizes

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.getSpinToWinPrizes.GetSpinToWinPrizesApi
import features.getSpinToWinPrizes.serializeGetSpinToWinPrizesState


class GetSpinToWinPrizesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_spin_to_win_prizes"

    override val eventChannel: String
        get() = "customer_sdk/events/get_spin_to_win_prizes"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getSpinToWinPrizes(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getSpinToWinPrizes(call: MethodCall): Unit? {
            GetSpinToWinPrizesApi().getSpinToWinPrizes(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        GetSpinToWinPrizesApi().getSpinToWinPrizesState.serializeGetSpinToWinPrizesState().observe { result ->
            pushSerializedResultToEventSink<GetSpinToWinPrizesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
