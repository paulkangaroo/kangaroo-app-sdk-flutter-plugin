library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/claim_offer/claim_offer_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/claimed_offer_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/claimed_offer_model.dart';

abstract class ClaimOfferApiInterface extends PlatformInterface {
  ClaimOfferApiInterface() : super(token: _token);

  static final Object _token = Object();

  static ClaimOfferApiInterface _instance = ClaimOfferApiFederated();

  static ClaimOfferApiInterface get instance => _instance;

  static set instance(ClaimOfferApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<ClaimedOfferModel>?> claimOffer({ 
        required final int offerId,
        required final String customerId,
    }) {
    throw UnimplementedError('claimOffer has not been implemented.');
  }

  Stream<Result<ClaimedOfferModel>> get claimOfferStream {
    throw UnimplementedError('getClaimOfferStream has not been implemented.');
  }

  static Future<Result<ClaimedOfferModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = ClaimedOfferModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case ClaimedOfferModel:
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
