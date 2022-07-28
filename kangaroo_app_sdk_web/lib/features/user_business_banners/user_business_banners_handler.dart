// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_banners/user_business_banners_platform_interface.dart';


class UserBusinessBannersHandler extends UserBusinessBannersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessBannersApiInterface.instance = UserBusinessBannersHandler();
  }

  @override
  getUserBusinessBanners({ 
        required final String businessId
    }) {
    UserBusinessBannersApi().getUserBusinessBanners(
      businessId
    );
  }

  @override
  Stream<Result<UserBusinessBannersModel>> get userBusinessBannersStream {
    var controller = StreamController<String>();

    UserBusinessBannersApi().observeUserBusinessBannersState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessBannersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessBannersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userBusinessBanners.UserBusinessBannersApi')
class UserBusinessBannersApi {
  external UserBusinessBannersApi();

  external void getUserBusinessBanners( 
        String businessId
    );

  external void observeUserBusinessBannersState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

