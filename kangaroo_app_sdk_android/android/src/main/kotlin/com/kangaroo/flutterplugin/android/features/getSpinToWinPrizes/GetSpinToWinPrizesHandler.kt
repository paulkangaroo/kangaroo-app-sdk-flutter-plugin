@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.getSpinToWinPrizes

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.getSpinToWinPrizes.GetSpinToWinPrizesApi
import features.getSpinToWinPrizes.models.SpinToWinPrizesModel

import features.getSpinToWinPrizes.serializeGetSpinToWinPrizesState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class GetSpinToWinPrizesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_spin_to_win_prizes"

    override val eventChannel: String
        get() = "customer_sdk/events/get_spin_to_win_prizes"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getSpinToWinPrizes(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getSpinToWinPrizes(call: MethodCall): String? {
            val result = GetSpinToWinPrizesApi().getSpinToWinPrizes(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<SpinToWinPrizesModel>()

            return when (result) {
                is SerializedResult.Success -> result.data
                is SerializedResult.UnauthorizedError -> result.error
                is SerializedResult.UnknownError -> result.error
                else -> null
            }
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
