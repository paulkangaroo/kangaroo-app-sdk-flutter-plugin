// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

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
    PublicBranchesApi().getPublicBranches();
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

@JS('kangaroorewards.js.appsdk.features.publicBranches.PublicBranchesApi')
class PublicBranchesApi {
  external PublicBranchesApi();

  external void getPublicBranches();

  external void observePublicBranchesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

