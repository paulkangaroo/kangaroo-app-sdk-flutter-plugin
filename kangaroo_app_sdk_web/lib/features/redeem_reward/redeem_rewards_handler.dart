// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_reward/redeem_rewards_platform_interface.dart';


class RedeemRewardsHandler extends RedeemRewardsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    RedeemRewardsApiInterface.instance = RedeemRewardsHandler();
  }

  @override
  redeemReward({ 
        required final RedeemRequest redeemRequest
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        RedeemRewardsApi().redeemReward(
        jsonEncode(redeemRequest)
    ),);

    return RedeemRewardsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<RedeemResponseModel>> get redeemRewardsStream {
    var controller = StreamController<String>();

    RedeemRewardsApi().observeRedeemRewardsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = RedeemResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case RedeemResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.redeemReward.RedeemRewardsApi')
class RedeemRewardsApi {
  external RedeemRewardsApi();

  external dynamic redeemReward( 
        String redeemRequest
    );

  external void observeRedeemRewardsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

