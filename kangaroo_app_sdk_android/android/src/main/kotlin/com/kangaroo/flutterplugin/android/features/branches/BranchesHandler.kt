package com.kangaroo.flutterplugin.android.features.branches

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.branches.BranchesApi
import kangaroorewards.appsdk.features.branches.serializeBranchesState


class BranchesHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/get_business_branches"

    override val eventChannel: String
        get() = "customer_sdk/events/get_business_branches"

    override fun onMethodCall(call: MethodCall): Unit? {
        return getBusinessBranches(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun getBusinessBranches(call: MethodCall): Unit? {
            BranchesApi().getBusinessBranches(
                businessId = call.argument<String>("businessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        BranchesApi().branchesState.serializeBranchesState().observe { result ->
            pushSerializedResultToEventSink<BranchesApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
