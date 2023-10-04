// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/branches/branches_platform_interface.dart';


class BranchesHandler extends BranchesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    BranchesApiInterface.instance = BranchesHandler();
  }

  @override
  getBusinessBranches({ 
        required final String businessId
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        BranchesApi().getBusinessBranches(
        businessId
    ),);

    return BranchesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<Business>> get branchesStream {
    var controller = StreamController<String>();

    BranchesApi().observeBranchesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = Business.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case Business:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.branches.BranchesApi')
class BranchesApi {
  external BranchesApi();

  external dynamic getBusinessBranches( 
        String businessId
    );

  external void observeBranchesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

