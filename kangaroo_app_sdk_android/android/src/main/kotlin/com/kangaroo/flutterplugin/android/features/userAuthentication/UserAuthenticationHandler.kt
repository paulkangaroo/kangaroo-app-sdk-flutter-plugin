package com.kangaroo.flutterplugin.android.features.userAuthentication

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import features.userAuthentication.UserAuthenticationApi
import features.userAuthentication.models.UserAuthenticationModel
import features.userAuthentication.serializeUserAuthenticationState
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult

class UserAuthenticationHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/user_authentication"

    override val eventChannel: String
        get() = "customer_sdk/events/user_authentication"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return authenticateUser(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun authenticateUser(call: MethodCall): String? {
            val result = UserAuthenticationApi().authenticateUser(
                username = call.argument<String>("username") ?: "null username",
                password = call.argument<String>("password") ?: "null password",
            ).toJsonResult<UserAuthenticationModel>()

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
        UserAuthenticationApi().userAuthenticationState.serializeUserAuthenticationState().observe { result ->
            pushSerializedResultToEventSink<UserAuthenticationApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}