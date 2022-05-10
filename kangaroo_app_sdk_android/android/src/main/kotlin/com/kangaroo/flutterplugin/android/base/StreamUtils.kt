package com.kangaroo.flutterplugin.android.base

import io.flutter.plugin.common.EventChannel
import kangaroorewards.appsdk.core.api.Api
import kangaroorewards.appsdk.core.domain.SerializedResult

inline fun <reified T : Api> pushSerializedResultToEventSink(
    sink: EventChannel.EventSink?,
    result: SerializedResult<String>?
) {
    when (result) {
        is SerializedResult.Idle -> sink?.success(result.state)
        is SerializedResult.Loading -> sink?.success(result.state)
        is SerializedResult.Success -> sink?.success(result.data)
        is SerializedResult.EmptyResponse -> sink?.success(result.body)
        is SerializedResult.UnauthorizedError -> sink?.success(result.error)
        is SerializedResult.UnknownError -> sink?.success(result.error)
        else -> sink?.error("-1", "${T::class.simpleName} returned an unknown event state", null)
    }
}