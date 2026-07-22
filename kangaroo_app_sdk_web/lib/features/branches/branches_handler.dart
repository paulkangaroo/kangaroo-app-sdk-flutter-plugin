// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = BranchesApi().getBusinessBranches(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return BranchesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<Business>> get branchesStream {
    var controller = StreamController<String>();

    BranchesApi().observeBranchesState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type BranchesApi._(JSObject _) implements JSObject {
  external factory BranchesApi();

  external JSPromise<JSString?> getBusinessBranches( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeBranchesState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

