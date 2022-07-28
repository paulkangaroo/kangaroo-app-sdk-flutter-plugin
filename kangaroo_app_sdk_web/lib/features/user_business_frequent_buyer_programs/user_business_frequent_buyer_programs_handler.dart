// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_frequent_buyer_programs/user_business_frequent_buyer_programs_platform_interface.dart';


class UserBusinessFrequentBuyerProgramsHandler extends UserBusinessFrequentBuyerProgramsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessFrequentBuyerProgramsApiInterface.instance = UserBusinessFrequentBuyerProgramsHandler();
  }

  @override
  getUserBusinessFrequentBuyerPrograms({ 
        required final String businessId
    }) {
    UserBusinessFrequentBuyerProgramsApi().getUserBusinessFrequentBuyerPrograms(
      businessId
    );
  }

  @override
  Stream<Result<FrequentBuyerProgramsModel>> get userBusinessFrequentBuyerProgramsStream {
    var controller = StreamController<String>();

    UserBusinessFrequentBuyerProgramsApi().observeUserBusinessFrequentBuyerProgramsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = FrequentBuyerProgramsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case FrequentBuyerProgramsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userBusinessFrequentBuyerPrograms.UserBusinessFrequentBuyerProgramsApi')
class UserBusinessFrequentBuyerProgramsApi {
  external UserBusinessFrequentBuyerProgramsApi();

  external void getUserBusinessFrequentBuyerPrograms( 
        String businessId
    );

  external void observeUserBusinessFrequentBuyerProgramsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

