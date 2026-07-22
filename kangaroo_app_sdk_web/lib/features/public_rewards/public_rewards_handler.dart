// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getPublicRewards({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = PublicRewardsApi().getPublicRewards(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return PublicRewardsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicRewardsModel>> get publicRewardsStream {
    var controller = StreamController<String>();

    PublicRewardsApi().observePublicRewardsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.publicRewards.PublicRewardsApi')
extension type PublicRewardsApi._(JSObject _) implements JSObject {
  external factory PublicRewardsApi();

  external JSPromise<JSString?> getPublicRewards( 
        String? overrideHeaders, 

    );

  external void observePublicRewardsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

