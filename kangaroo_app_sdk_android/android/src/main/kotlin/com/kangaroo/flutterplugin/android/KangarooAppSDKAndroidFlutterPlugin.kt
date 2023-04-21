package com.kangaroo.flutterplugin.android

import android.content.Context
import androidx.annotation.NonNull
import com.kangaroo.flutterplugin.android.features.pluginHandlerList
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler

/** sdk_wrapper_federatedPlugin */
@Suppress("unused")
class KangarooAppSDKAndroidFlutterPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    private lateinit var methodChannel: MethodChannel
    private lateinit var context: Context

    override fun onAttachedToActivity(activityBinding: ActivityPluginBinding) {
        context = activityBinding.activity
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: MethodChannel.Result) {
        pluginHandlerList.forEach {
            if (call.method == it.methodChannel) {
                result.success(it.onMethodCall(call))
            }
        }
        if (call.method == "core/methods/initializeSdk") {
            result.success(KangarooAppSdk.initializeSdk(call, context))
        } else if (call.method == "core/methods/getSession") {
            result.success(KangarooAppSdk.getSession(call, context))
        } else if (call.method == "core/methods/killSession") {
            result.success(KangarooAppSdk.killSession(call, context))
        } else if (call.method == "core/methods/setPreferredLanguage") {
            result.success(KangarooAppSdk.setPreferredLanguage(call, context))
        } else if (call.method == "core/methods/getPreferredLanguage") {
            result.success(KangarooAppSdk.getPreferredLanguage(call, context))
        }
    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel = MethodChannel(flutterPluginBinding.binaryMessenger, "kangaroo_sdk/method_channel")
        methodChannel.setMethodCallHandler(this)
        registerStreamHandlers(flutterPluginBinding)
    }

    private fun registerStreamHandlers(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        pluginHandlerList.forEach {
            val eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, it.eventChannel)
            eventChannel.setStreamHandler(it.getStreamHandler())
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)
    }

    override fun onDetachedFromActivityForConfigChanges() {}
    override fun onReattachedToActivityForConfigChanges(p0: ActivityPluginBinding) {}
    override fun onDetachedFromActivity() {}
}
