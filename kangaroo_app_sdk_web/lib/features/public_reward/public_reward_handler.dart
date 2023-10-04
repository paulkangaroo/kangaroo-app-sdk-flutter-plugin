// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_reward/public_reward_platform_interface.dart';


class PublicRewardHandler extends PublicRewardApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicRewardApiInterface.instance = PublicRewardHandler();
  }

  @override
  getPublicReward({ 
        required final String rewardSlug
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        PublicRewardApi().getPublicReward(
        rewardSlug
    ),);

    return PublicRewardApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicRewardModel>> get publicRewardStream {
    var controller = StreamController<String>();

    PublicRewardApi().observePublicRewardState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicReward.PublicRewardApi')
class PublicRewardApi {
  external PublicRewardApi();

  external dynamic getPublicReward( 
        String rewardSlug
    );

  external void observePublicRewardState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

