// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String rewardSlug
    }) {
    final Future<String?> request = PublicRewardApi().getPublicReward(
        jsonEncode(overrideHeaders),
        rewardSlug
    ).toDart.then((value) => value?.toDart);

    return PublicRewardApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicRewardResponseModel>> get publicRewardStream {
    var controller = StreamController<String>();

    PublicRewardApi().observePublicRewardState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardResponseModel:
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
extension type PublicRewardApi._(JSObject _) implements JSObject {
  external factory PublicRewardApi();

  external JSPromise<JSString?> getPublicReward( 
        String? overrideHeaders, 
        String rewardSlug
    );

  external void observePublicRewardState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

