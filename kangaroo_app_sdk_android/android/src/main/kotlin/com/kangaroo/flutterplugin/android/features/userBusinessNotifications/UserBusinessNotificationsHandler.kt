@file:Suppress("INLINE_FROM_HIGHER_PLATFORM")
@file:OptIn(ExperimentalJsExport::class)
package com.kangaroo.flutterplugin.android.features.userBusinessNotifications

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kotlin.js.ExperimentalJsExport
import features.userBusinessNotifications.UserBusinessNotificationsApi
import features.userBusinessNotifications.models.UserBusinessNotificationsModel

import features.userBusinessNotifications.serializeUserBusinessNotificationsState
import kangaroorewards.appsdk.core.domain.SerializedResult
import kangaroorewards.appsdk.core.domain.toJsonResult


class UserBusinessNotificationsHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_user_business_notifications"

    override val eventChannel: String
        get() = "customer_sdk/events/get_user_business_notifications"

    override suspend fun onMethodCall(call: MethodCall): String? {
        return getUserBusinessNotifications(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        suspend fun getUserBusinessNotifications(call: MethodCall): String? {
            val result = UserBusinessNotificationsApi().getUserBusinessNotifications(
                overrideHeaders = call.argument<Map<String, String>>("overrideHeaders") as Map<String, String>?,
                businessId = call.argument<String>("businessId") as String
            ).toJsonResult<UserBusinessNotificationsModel>()

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
        UserBusinessNotificationsApi().userBusinessNotificationsState.serializeUserBusinessNotificationsState().observe { result ->
            pushSerializedResultToEventSink<UserBusinessNotificationsApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
