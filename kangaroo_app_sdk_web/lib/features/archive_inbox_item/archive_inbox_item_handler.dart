// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/archive_inbox_item/archive_inbox_item_platform_interface.dart';


class ArchiveInboxItemHandler extends ArchiveInboxItemApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    ArchiveInboxItemApiInterface.instance = ArchiveInboxItemHandler();
  }

  @override
  archiveInboxItem({ 
        required final ArchiveRequest archiveRequest
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        ArchiveInboxItemApi().archiveInboxItem(
        jsonEncode(archiveRequest)
    ),);

    return ArchiveInboxItemApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<ArchiveResponseModel>> get archiveInboxItemStream {
    var controller = StreamController<String>();

    ArchiveInboxItemApi().observeArchiveInboxItemState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.archiveInboxItem.ArchiveInboxItemApi')
class ArchiveInboxItemApi {
  external ArchiveInboxItemApi();

  external dynamic archiveInboxItem( 
        String archiveRequest
    );

  external void observeArchiveInboxItemState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}
