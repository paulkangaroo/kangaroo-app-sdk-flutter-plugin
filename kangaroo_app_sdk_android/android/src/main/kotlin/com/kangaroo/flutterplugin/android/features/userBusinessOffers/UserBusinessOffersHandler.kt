@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessOffers

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessOffers.UserBusinessOffersApi
import features.userBusinessOffers.models.UserBusinessOffersModel

import features.userBusinessOffers.serializeUserBusinessOffersState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessOffersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_offers"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_offers"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessOffers(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessOffers(call: MethodCall): String? {
            val result = UserBusinessOffersApi().getUserBusinessOffers(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessOffersModel>()

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
        UserBusinessOffersApi().userBusinessOffersState.serializeUserBusinessOffersState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessOffersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
