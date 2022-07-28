package com.kangaroo.flutterplugin.android.features.updateDefaultBusinessId

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.base.pushSerializedResultToEventSink
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import kangaroorewards.appsdk.features.updateDefaultBusinessId.UpdateDefaultBusinessIdApi
import kangaroorewards.appsdk.features.updateDefaultBusinessId.serializeUpdateDefaultBusinessIdState


class UpdateDefaultBusinessIdHandler : EventChannel.StreamHandler, PluginChannelHandler {
    var sink: EventChannel.EventSink? = null

    override val methodChannel: String
        get() = "customer_sdk/methods/update_default_business_id"

    override val eventChannel: String
        get() = "customer_sdk/events/update_default_business_id"

    override fun onMethodCall(call: MethodCall): Unit? {
        return updateDefaultBusinessId(call)
    }

    override fun getStreamHandler(): EventChannel.StreamHandler {
        return this
    }

    companion object {
        fun updateDefaultBusinessId(call: MethodCall): Unit? {
            UpdateDefaultBusinessIdApi().updateDefaultBusinessId(
                businessId = call.argument<String>("businessId") as String,
                defaultBusinessId = call.argument<String>("defaultBusinessId") as String
            )
            return null
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        UpdateDefaultBusinessIdApi().updateDefaultBusinessIdState.serializeUpdateDefaultBusinessIdState().observe { result ->
            pushSerializedResultToEventSink<UpdateDefaultBusinessIdApi>(sink, result)
        }
    }

    override fun onCancel(arguments: Any?) {
        sink = null
    }
}
