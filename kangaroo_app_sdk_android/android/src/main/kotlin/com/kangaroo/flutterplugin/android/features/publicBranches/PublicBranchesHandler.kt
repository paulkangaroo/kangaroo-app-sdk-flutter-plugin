package com.kangaroo.flutterplugin.android.features.publicBranches

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import features.publicBranches.PublicBranchesApi
import features.publicBranches.serializePublicBranchesState


class PublicBranchesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_public_branches"

    override val eventChannel: String
        get() = "customer_sdk/events/get_public_branches"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getPublicBranches(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getPublicBranches(call: MethodCall): Unit? {
            PublicBranchesApi().getPublicBranches()
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        PublicBranchesApi().publicBranchesState.serializePublicBranchesState().observe { result ->
            pushSerializedResultToEventSink<PublicBranchesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
