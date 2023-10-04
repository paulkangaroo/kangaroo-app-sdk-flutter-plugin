@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessTiers

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessTiers.UserBusinessTiersApi
import features.userBusinessTiers.models.UserProfileWithTierProgram

import features.userBusinessTiers.serializeUserBusinessTiersState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessTiersHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_tiers"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_tiers"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessTiers(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessTiers(call: MethodCall): String? {
            val result = UserBusinessTiersApi().getUserBusinessTiers(
                memberBusinessId = call.argument<String>("memberBusinessId") as String
            ).toJsonResult<UserProfileWithTierProgram>()

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
        UserBusinessTiersApi().userBusinessTiersState.serializeUserBusinessTiersState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessTiersApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
