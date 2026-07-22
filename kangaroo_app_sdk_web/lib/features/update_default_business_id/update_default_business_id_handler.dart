// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String businessId,
        required final String defaultBusinessId
    }) {
    final Future<String?> request = UpdateDefaultBusinessIdApi().updateDefaultBusinessId(
        jsonEncode(overrideHeaders),
        businessId,
      defaultBusinessId
    ).toDart.then((value) => value?.toDart);

    return UpdateDefaultBusinessIdApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<DefaultBusiness>> get updateDefaultBusinessIdStream {
    var controller = StreamController<String>();

    UpdateDefaultBusinessIdApi().observeUpdateDefaultBusinessIdState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type UpdateDefaultBusinessIdApi._(JSObject _) implements JSObject {
  external factory UpdateDefaultBusinessIdApi();

  external JSPromise<JSString?> updateDefaultBusinessId( 
        String? overrideHeaders, 
        String businessId,
        String defaultBusinessId
    );

  external void observeUpdateDefaultBusinessIdState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

