// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final RedeemRequest redeemRequest
    }) {
    final Future<String?> request = RedeemRewardsApi().redeemReward(
        jsonEncode(overrideHeaders),
        jsonEncode(redeemRequest)
    ).toDart.then((value) => value?.toDart);

    return RedeemRewardsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<RedeemResponseModel>> get redeemRewardsStream {
    var controller = StreamController<String>();

    RedeemRewardsApi().observeRedeemRewardsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type RedeemRewardsApi._(JSObject _) implements JSObject {
  external factory RedeemRewardsApi();

  external JSPromise<JSString?> redeemReward( 
        String? overrideHeaders, 
        String redeemRequest
    );

  external void observeRedeemRewardsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

