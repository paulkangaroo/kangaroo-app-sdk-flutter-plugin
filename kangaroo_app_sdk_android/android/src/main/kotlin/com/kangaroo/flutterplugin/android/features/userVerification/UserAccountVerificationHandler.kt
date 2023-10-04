@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userVerification

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userVerification.UserAccountVerificationApi
import features.userVerification.models.UserProfileModel

import features.userVerification.serializeUserAccountVerificationState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserAccountVerificationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/verify_account"

    override val eventChannel: String
        get() = "customer_sdk/events/verify_account"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return verifyAccount(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun verifyAccount(call: MethodCall): String? {
            val result = UserAccountVerificationApi().verifyAccount(
                intent = call.argument<String>("intent") as String,
                token = call.argument<String>("token") as String,
                email = call.argument<String?>("email"),
                phone = call.argument<String?>("phone"),
                countryCode = call.argument<String?>("countryCode")
            ).toJsonResult<UserProfileModel>()

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
        UserAccountVerificationApi().userAccountVerificationState.serializeUserAccountVerificationState().observe { result ->
            pushSerializedResultToEventSink<UserAccountVerificationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
