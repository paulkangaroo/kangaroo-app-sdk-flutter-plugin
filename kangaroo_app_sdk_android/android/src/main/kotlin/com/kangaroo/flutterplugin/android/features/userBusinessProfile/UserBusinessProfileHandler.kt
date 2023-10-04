@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessProfile

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessProfile.UserBusinessProfileApi
import features.userBusinessProfile.models.UserBusinessProfileModel

import features.userBusinessProfile.serializeUserBusinessProfileState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessProfileHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_profile"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_profile"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessProfile(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessProfile(call: MethodCall): String? {
            val result = UserBusinessProfileApi().getUserBusinessProfile(
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessProfileModel>()

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
        UserBusinessProfileApi().userBusinessProfileState.serializeUserBusinessProfileState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessProfileApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
