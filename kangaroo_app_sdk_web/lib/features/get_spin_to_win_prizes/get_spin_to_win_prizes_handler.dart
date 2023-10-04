// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
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
        required final String businessId
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        GetSpinToWinPrizesApi().getSpinToWinPrizes(
        businessId
    ),);

    return GetSpinToWinPrizesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<SpinToWinPrizesModel>> get getSpinToWinPrizesStream {
    var controller = StreamController<String>();

    GetSpinToWinPrizesApi().observeGetSpinToWinPrizesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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
class GetSpinToWinPrizesApi {
  external GetSpinToWinPrizesApi();

  external dynamic getSpinToWinPrizes( 
        String businessId
    );

  external void observeGetSpinToWinPrizesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

