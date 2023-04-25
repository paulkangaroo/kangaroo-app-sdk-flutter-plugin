// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/update_default_business_id/update_default_business_id_platform_interface.dart';


class UpdateDefaultBusinessIdHandler extends UpdateDefaultBusinessIdApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UpdateDefaultBusinessIdApiInterface.instance = UpdateDefaultBusinessIdHandler();
  }

  @override
  updateDefaultBusinessId({ 
        required final String businessId,
        required final String defaultBusinessId
    }) {
    UpdateDefaultBusinessIdApi().updateDefaultBusinessId(
      businessId,
      defaultBusinessId
    );
  }

  @override
  Stream<Result<DefaultBusiness>> get updateDefaultBusinessIdStream {
    var controller = StreamController<String>();

    UpdateDefaultBusinessIdApi().observeUpdateDefaultBusinessIdState(
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

@JS('js.features.updateDefaultBusinessId.UpdateDefaultBusinessIdApi')
class UpdateDefaultBusinessIdApi {
  external UpdateDefaultBusinessIdApi();

  external void updateDefaultBusinessId( 
        String businessId,
        String defaultBusinessId
    );

  external void observeUpdateDefaultBusinessIdState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

