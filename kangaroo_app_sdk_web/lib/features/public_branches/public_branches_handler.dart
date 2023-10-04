// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_branches/public_branches_platform_interface.dart';


class PublicBranchesHandler extends PublicBranchesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicBranchesApiInterface.instance = PublicBranchesHandler();
  }

  @override
  getPublicBranches() {
    final Future<String?> request = promiseToFuture<String?>(
        PublicBranchesApi().getPublicBranches());

    return PublicBranchesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicBranchesModel>> get publicBranchesStream {
    var controller = StreamController<String>();

    PublicBranchesApi().observePublicBranchesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicBranchesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicBranchesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicBranches.PublicBranchesApi')
class PublicBranchesApi {
  external PublicBranchesApi();

  external dynamic getPublicBranches();

  external void observePublicBranchesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

