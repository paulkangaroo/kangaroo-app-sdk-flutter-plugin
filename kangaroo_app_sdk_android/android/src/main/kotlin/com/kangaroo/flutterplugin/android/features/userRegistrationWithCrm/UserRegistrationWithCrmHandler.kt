@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userRegistrationWithCrm

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userRegistrationWithCrm.UserRegistrationWithCrmApi
import features.userRegistrationWithCrm.models.UserProfileDataModel

import features.userRegistrationWithCrm.serializeUserRegistrationWithCrmState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import features.userRegistrationWithCrm.models.CrmRegisterRequest

class UserRegistrationWithCrmHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/create_account_with_crm"

    override val eventChannel: String
        get() = "customer_sdk/events/create_account_with_crm"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return createAccountWithCrm(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun createAccountWithCrm(call: MethodCall): String? {
            val result = UserRegistrationWithCrmApi().createAccountWithCrm(
                registerWithCrmRequest = Json.decodeFromString(call.argument<String>("registerWithCrmRequest") as String)
            ).toJsonResult<UserProfileDataModel>()

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
        UserRegistrationWithCrmApi().userRegistrationWithCrmState.serializeUserRegistrationWithCrmState().observe { result ->
            pushSerializedResultToEventSink<UserRegistrationWithCrmApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
