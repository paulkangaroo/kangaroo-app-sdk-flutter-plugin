package com.kangaroo.flutterplugin.android.features.userBusinessFrequentBuyerPrograms

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.userBusinessFrequentBuyerPrograms.UserBusinessFrequentBuyerProgramsApi
import features.userBusinessFrequentBuyerPrograms.serializeUserBusinessFrequentBuyerProgramsState


class UserBusinessFrequentBuyerProgramsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_frequent_buyer_programs"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_frequent_buyer_programs"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getUserBusinessFrequentBuyerPrograms(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getUserBusinessFrequentBuyerPrograms(call: MethodCall): Unit? {
            UserBusinessFrequentBuyerProgramsApi().getUserBusinessFrequentBuyerPrograms(
                businessId = call.argument<String>("businessId") as String
            )
            return null
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
