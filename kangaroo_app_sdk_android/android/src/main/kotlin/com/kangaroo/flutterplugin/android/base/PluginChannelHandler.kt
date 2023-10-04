package com.kangaroo.flutterplugin.android.base

import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall

interface PluginChannelHandler {
    val methodChannel: String
    val eventChannel: String
    suspend fun onMethodCall(call: MethodCall): Any?
    fun getStreamHandler(): EventChannel.StreamHandler
}