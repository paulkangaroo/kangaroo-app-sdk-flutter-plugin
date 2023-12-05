import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/archive_inbox_item/archive_inbox_item_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/archive_request.dart';

class ArchiveInboxItemApiFederated extends ArchiveInboxItemApiInterface {
  @override
Future<Result<ArchiveResponseModel>?> archiveInboxItem({ 
        required final ArchiveRequest archiveRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/archive_inbox_item',
    {
      'archiveRequest' : jsonEncode(archiveRequest)
    }
    );

    return ArchiveInboxItemApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _archiveInboxItemEvent =
      const EventChannel("customer_sdk/events/archive_inbox_item");

  @override
  Stream<Result<ArchiveResponseModel>> get archiveInboxItemStream {
    return _archiveInboxItemEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = ArchiveResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case ArchiveResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
