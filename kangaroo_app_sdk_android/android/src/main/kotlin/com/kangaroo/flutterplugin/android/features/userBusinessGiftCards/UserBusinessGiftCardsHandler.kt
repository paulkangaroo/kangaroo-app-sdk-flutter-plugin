@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessGiftCards

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessGiftCards.UserBusinessGiftCardsApi
import features.userBusinessGiftCards.models.UserBusinessGiftCardsModel

import features.userBusinessGiftCards.serializeUserBusinessGiftCardsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessGiftCardsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_gift_cards"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_gift_cards"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessGiftCards(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessGiftCards(call: MethodCall): String? {
            val result = UserBusinessGiftCardsApi().getUserBusinessGiftCards(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessGiftCardsModel>()

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
        UserBusinessGiftCardsApi().userBusinessGiftCardsState.serializeUserBusinessGiftCardsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessGiftCardsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
