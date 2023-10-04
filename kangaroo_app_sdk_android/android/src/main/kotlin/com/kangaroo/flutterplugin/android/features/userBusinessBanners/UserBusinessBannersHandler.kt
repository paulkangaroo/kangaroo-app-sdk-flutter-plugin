@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessBanners

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessBanners.UserBusinessBannersApi
import features.userBusinessBanners.models.UserBusinessBannersModel

import features.userBusinessBanners.serializeUserBusinessBannersState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessBannersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_banners"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_banners"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessBanners(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessBanners(call: MethodCall): String? {
            val result = UserBusinessBannersApi().getUserBusinessBanners(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessBannersModel>()

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
        UserBusinessBannersApi().userBusinessBannersState.serializeUserBusinessBannersState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessBannersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
