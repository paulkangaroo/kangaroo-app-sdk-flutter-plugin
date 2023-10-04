library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_offer/public_offer_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_offer_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_offer_model.dart';

abstract class PublicOfferApiInterface extends PlatformInterface {
  PublicOfferApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicOfferApiInterface _instance = PublicOfferApiFederated();

  static PublicOfferApiInterface get instance => _instance;

  static set instance(PublicOfferApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicOfferModel>?> getPublicOffer({ 
        required final String offerSlug,
    }) {
    throw UnimplementedError('getPublicOffer has not been implemented.');
  }

  Stream<Result<PublicOfferModel>> get publicOfferStream {
    throw UnimplementedError('getPublicOfferStream has not been implemented.');
  }

  static Future<Result<PublicOfferModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicOfferModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicOfferModel:
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
