// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = GetDefaultBusinessIdApi().getDefaultBusinessId(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return GetDefaultBusinessIdApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<DefaultBusiness>> get getDefaultBusinessIdStream {
    var controller = StreamController<String>();

    GetDefaultBusinessIdApi().observeGetDefaultBusinessIdState(
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

@JS('js.features.getDefaultBusinessId.GetDefaultBusinessIdApi')
extension type GetDefaultBusinessIdApi._(JSObject _) implements JSObject {
  external factory GetDefaultBusinessIdApi();

  external JSPromise<JSString?> getDefaultBusinessId( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeGetDefaultBusinessIdState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

