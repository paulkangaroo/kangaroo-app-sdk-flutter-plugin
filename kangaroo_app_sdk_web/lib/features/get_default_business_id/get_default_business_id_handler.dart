// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_default_business_id/get_default_business_id_platform_interface.dart';


class GetDefaultBusinessIdHandler extends GetDefaultBusinessIdApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetDefaultBusinessIdApiInterface.instance = GetDefaultBusinessIdHandler();
  }

  @override
  getDefaultBusinessId({ 
        required final String businessId
    }) {
    GetDefaultBusinessIdApi().getDefaultBusinessId(
      businessId
    );
  }

  @override
  Stream<Result<DefaultBusiness>> get getDefaultBusinessIdStream {
    var controller = StreamController<String>();

    GetDefaultBusinessIdApi().observeGetDefaultBusinessIdState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = DefaultBusiness.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case DefaultBusiness:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getDefaultBusinessId.GetDefaultBusinessIdApi')
class GetDefaultBusinessIdApi {
  external GetDefaultBusinessIdApi();

  external void getDefaultBusinessId( 
        String businessId
    );

  external void observeGetDefaultBusinessIdState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

