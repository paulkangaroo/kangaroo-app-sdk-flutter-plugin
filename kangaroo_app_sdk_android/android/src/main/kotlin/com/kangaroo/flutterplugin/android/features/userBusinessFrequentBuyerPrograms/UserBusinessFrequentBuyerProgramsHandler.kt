@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessFrequentBuyerPrograms

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessFrequentBuyerPrograms.UserBusinessFrequentBuyerProgramsApi
import features.userBusinessFrequentBuyerPrograms.models.FrequentBuyerProgramsModel

import features.userBusinessFrequentBuyerPrograms.serializeUserBusinessFrequentBuyerProgramsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessFrequentBuyerProgramsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_frequent_buyer_programs"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_frequent_buyer_programs"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessFrequentBuyerPrograms(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessFrequentBuyerPrograms(call: MethodCall): String? {
            val result = UserBusinessFrequentBuyerProgramsApi().getUserBusinessFrequentBuyerPrograms(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<FrequentBuyerProgramsModel>()

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
        UserBusinessFrequentBuyerProgramsApi().userBusinessFrequentBuyerProgramsState.serializeUserBusinessFrequentBuyerProgramsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessFrequentBuyerProgramsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
