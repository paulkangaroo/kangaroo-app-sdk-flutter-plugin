// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_rewards/user_rewards_platform_interface.dart';


class UserRewardsHandler extends UserRewardsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserRewardsApiInterface.instance = UserRewardsHandler();
  }

  @override
  getUserRewards() {
    UserRewardsApi().getUserRewards();
  }

  @override
  Stream<Result<UserRewardsModel>> get userRewardsStream {
    var controller = StreamController<String>();

    UserRewardsApi().observeUserRewardsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userRewards.UserRewardsApi')
class UserRewardsApi {
  external UserRewardsApi();

  external void getUserRewards();

  external void observeUserRewardsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

