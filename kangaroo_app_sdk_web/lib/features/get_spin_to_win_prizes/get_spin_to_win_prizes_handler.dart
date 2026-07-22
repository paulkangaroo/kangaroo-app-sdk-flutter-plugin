// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_spin_to_win_prizes/get_spin_to_win_prizes_platform_interface.dart';


class GetSpinToWinPrizesHandler extends GetSpinToWinPrizesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetSpinToWinPrizesApiInterface.instance = GetSpinToWinPrizesHandler();
  }

  @override
  getSpinToWinPrizes({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = GetSpinToWinPrizesApi().getSpinToWinPrizes(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return GetSpinToWinPrizesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<SpinToWinPrizesModel>> get getSpinToWinPrizesStream {
    var controller = StreamController<String>();

    GetSpinToWinPrizesApi().observeGetSpinToWinPrizesState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = SpinToWinPrizesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case SpinToWinPrizesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getSpinToWinPrizes.GetSpinToWinPrizesApi')
extension type GetSpinToWinPrizesApi._(JSObject _) implements JSObject {
  external factory GetSpinToWinPrizesApi();

  external JSPromise<JSString?> getSpinToWinPrizes( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeGetSpinToWinPrizesState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

