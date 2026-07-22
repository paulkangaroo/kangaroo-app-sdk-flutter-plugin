// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media_links/social_media_links_platform_interface.dart';


class SocialMediaLinksHandler extends SocialMediaLinksApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    SocialMediaLinksApiInterface.instance = SocialMediaLinksHandler();
  }

  @override
  getSocialMediaLinks({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = SocialMediaLinksApi().getSocialMediaLinks(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return SocialMediaLinksApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<SocialMediaLinksModel>> get socialMediaLinksStream {
    var controller = StreamController<String>();

    SocialMediaLinksApi().observeSocialMediaLinksState(
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

@JS('js.features.socialMediaLinks.SocialMediaLinksApi')
extension type SocialMediaLinksApi._(JSObject _) implements JSObject {
  external factory SocialMediaLinksApi();

  external JSPromise<JSString?> getSocialMediaLinks( 
        String? overrideHeaders, 

    );

  external void observeSocialMediaLinksState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

