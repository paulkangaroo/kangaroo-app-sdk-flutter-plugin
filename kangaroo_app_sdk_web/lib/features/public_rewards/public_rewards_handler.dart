// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_rewards/public_rewards_platform_interface.dart';


class PublicRewardsHandler extends PublicRewardsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicRewardsApiInterface.instance = PublicRewardsHandler();
  }

  @override
  getPublicRewards() {
    PublicRewardsApi().getPublicRewards();
  }

  @override
  Stream<Result<PublicRewardsModel>> get publicRewardsStream {
    var controller = StreamController<String>();

    PublicRewardsApi().observePublicRewardsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.publicRewards.PublicRewardsApi')
class PublicRewardsApi {
  external PublicRewardsApi();

  external void getPublicRewards();

  external void observePublicRewardsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

