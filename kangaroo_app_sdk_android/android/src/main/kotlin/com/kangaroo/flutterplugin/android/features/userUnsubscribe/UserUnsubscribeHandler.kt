@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userUnsubscribe

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userUnsubscribe.UserUnsubscribeApi

import kangaroorewards.appsdk.core.io.EmptyResponse
import features.userUnsubscribe.serializeUserUnsubscribeState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserUnsubscribeHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/unsubscribe"

    override val eventChannel: String
        get() = "customer_sdk/events/unsubscribe"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return unsubscribe(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun unsubscribe(call: MethodCall): String? {
            val result = UserUnsubscribeApi().unsubscribe(
                campaignId = call.argument<String>("campaignId") as String,
                token = call.argument<String>("token") as String
            ).toJsonResult<EmptyResponse>()

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
        UserUnsubscribeApi().userUnsubscribeState.serializeUserUnsubscribeState().observe { result ->
            pushSerializedResultToEventSink<UserUnsubscribeApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
