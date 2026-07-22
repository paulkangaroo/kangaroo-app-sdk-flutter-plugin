// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_social_media_links/user_business_social_media_links_platform_interface.dart';


class UserBusinessSocialMediaLinksHandler extends UserBusinessSocialMediaLinksApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessSocialMediaLinksApiInterface.instance = UserBusinessSocialMediaLinksHandler();
  }

  @override
  getUserBusinessSocialMediaLinks({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessSocialMediaLinksApi().getUserBusinessSocialMediaLinks(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessSocialMediaLinksApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<SocialMediaLinksModel>> get userBusinessSocialMediaLinksStream {
    var controller = StreamController<String>();

    UserBusinessSocialMediaLinksApi().observeUserBusinessSocialMediaLinksState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = SocialMediaLinksModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case SocialMediaLinksModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessSocialMediaLinks.UserBusinessSocialMediaLinksApi')
extension type UserBusinessSocialMediaLinksApi._(JSObject _) implements JSObject {
  external factory UserBusinessSocialMediaLinksApi();

  external JSPromise<JSString?> getUserBusinessSocialMediaLinks( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessSocialMediaLinksState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

