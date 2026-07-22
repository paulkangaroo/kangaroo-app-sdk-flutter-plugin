// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/post_offer_facebook_share/offer_facebook_share_platform_interface.dart';


class OfferFacebookShareHandler extends OfferFacebookShareApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    OfferFacebookShareApiInterface.instance = OfferFacebookShareHandler();
  }

  @override
  postOfferFacebookShare({ 
      final Map<String, String>? overrideHeaders,
        required final String offerId,
        final String include = "balance",
        required final String facebookUserId,
        final String type = "facebook_share",
        final String friendsCount = "1"
    }) {
    final Future<String?> request = OfferFacebookShareApi().postOfferFacebookShare(
        jsonEncode(overrideHeaders),
        offerId,
      include,
      facebookUserId,
      type,
      friendsCount
    ).toDart.then((value) => value?.toDart);

    return OfferFacebookShareApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileModel>> get offerFacebookShareStream {
    var controller = StreamController<String>();

    OfferFacebookShareApi().observeOfferFacebookShareState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.postOfferFacebookShare.OfferFacebookShareApi')
extension type OfferFacebookShareApi._(JSObject _) implements JSObject {
  external factory OfferFacebookShareApi();

  external JSPromise<JSString?> postOfferFacebookShare( 
        String? overrideHeaders, 
        String offerId,
        String include,
        String facebookUserId,
        String type,
        String friendsCount
    );

  external void observeOfferFacebookShareState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

