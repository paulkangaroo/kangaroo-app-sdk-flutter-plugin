// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_rewards/user_business_rewards_platform_interface.dart';


class UserBusinessRewardsHandler extends UserBusinessRewardsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessRewardsApiInterface.instance = UserBusinessRewardsHandler();
  }

  @override
  getUserBusinessRewards({ 
        required final String businessId
    }) {
    UserBusinessRewardsApi().getUserBusinessRewards(
      businessId
    );
  }

  @override
  Stream<Result<UserBusinessRewardsModel>> get userBusinessRewardsStream {
    var controller = StreamController<String>();

    UserBusinessRewardsApi().observeUserBusinessRewardsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessRewards.UserBusinessRewardsApi')
class UserBusinessRewardsApi {
  external UserBusinessRewardsApi();

  external void getUserBusinessRewards( 
        String businessId
    );

  external void observeUserBusinessRewardsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

