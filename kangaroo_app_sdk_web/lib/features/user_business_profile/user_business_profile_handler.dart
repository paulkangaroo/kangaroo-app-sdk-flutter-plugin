// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_profile/user_business_profile_platform_interface.dart';


class UserBusinessProfileHandler extends UserBusinessProfileApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessProfileApiInterface.instance = UserBusinessProfileHandler();
  }

  @override
  getUserBusinessProfile({ 
        required final String businessId
    }) {
    UserBusinessProfileApi().getUserBusinessProfile(
      businessId
    );
  }

  @override
  Stream<Result<UserBusinessProfileModel>> get userBusinessProfileStream {
    var controller = StreamController<String>();

    UserBusinessProfileApi().observeUserBusinessProfileState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessProfile.UserBusinessProfileApi')
class UserBusinessProfileApi {
  external UserBusinessProfileApi();

  external void getUserBusinessProfile( 
        String businessId
    );

  external void observeUserBusinessProfileState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

