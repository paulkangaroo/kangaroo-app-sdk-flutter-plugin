library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/post_offer_facebook_share/offer_facebook_share_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class OfferFacebookShareApiInterface extends PlatformInterface {
  OfferFacebookShareApiInterface() : super(token: _token);

  static final Object _token = Object();

  static OfferFacebookShareApiInterface _instance = OfferFacebookShareApiFederated();

  static OfferFacebookShareApiInterface get instance => _instance;

  static set instance(OfferFacebookShareApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserProfileModel>?> postOfferFacebookShare({ 
        required final String offerId,
        final String include = "balance",
        required final String facebookUserId,
        final String type = "facebook_share",
        final String friendsCount = "1",
    }) {
    throw UnimplementedError('postOfferFacebookShare has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get offerFacebookShareStream {
    throw UnimplementedError('getOfferFacebookShareStream has not been implemented.');
  }

  static Future<Result<UserProfileModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserProfileModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
