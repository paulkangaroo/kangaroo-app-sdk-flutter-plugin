// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/business_list/businesses_platform_interface.dart';


class BusinessesHandler extends BusinessesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    BusinessesApiInterface.instance = BusinessesHandler();
  }

  @override
  getBusinesses({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = BusinessesApi().getBusinesses(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return BusinessesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<Businesses>> get businessesStream {
    var controller = StreamController<String>();

    BusinessesApi().observeBusinessesState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = Businesses.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case Businesses:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.businessList.BusinessesApi')
extension type BusinessesApi._(JSObject _) implements JSObject {
  external factory BusinessesApi();

  external JSPromise<JSString?> getBusinesses( 
        String? overrideHeaders, 

    );

  external void observeBusinessesState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

