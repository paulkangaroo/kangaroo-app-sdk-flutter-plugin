package com.kangaroo.flutterplugin.android

import android.content.Context
import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.core.KangarooSdk

class KangarooAppSdk {
    var sink: EventChannel.EventSink? = null

    companion object {
        fun initializeSdk(call: MethodCall, context: Context): Unit? {
            KangarooSdk(context).initialize(
                appId = call.argument<String?>("appId") ?: "",
                environment = call.argument<String?>("environment") ?: "",
                firebaseAppCheckToken = call.argument<String?>("firebaseAppCheckToken") ?: "",
                firebaseAuthToken = call.argument<String?>("firebaseAuthToken") ?: "",
            )
            return null
        }

        fun getSession(call: MethodCall, context: Context): String? {
            return KangarooSdk(context).getSession()
        }

        fun killSession(call: MethodCall, context: Context): Unit? {
            KangarooSdk(context).killSession()
            return null
        }

        fun setPreferredLanguage(call: MethodCall, context: Context): Unit? {
            val language  = call.argument<String?>("preferredLanguage") ?: ""
            println("preferred language android: $language")
            KangarooSdk(context).setPreferredLanguage(language)
            return null;
        }

        fun getPreferredLanguage(call: MethodCall, context: Context): String? {
            return KangarooSdk(context).getPreferredLanguage()
        }

    }
}
