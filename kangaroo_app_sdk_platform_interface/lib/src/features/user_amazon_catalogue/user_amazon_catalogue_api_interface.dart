library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_amazon_catalogue/user_amazon_catalogue_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_model.dart';

abstract class UserAmazonCatalogueApiInterface extends PlatformInterface {
  UserAmazonCatalogueApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserAmazonCatalogueApiInterface _instance = UserAmazonCatalogueApiFederated();

  static UserAmazonCatalogueApiInterface get instance => _instance;

  static set instance(UserAmazonCatalogueApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserRewardsModel>?> getUserAmazonCatalogue({ 
        final Map<String, String>? overrideHeaders,
        required final int pageNumber,
        required final int perPage,
        required final String? keywords,
        required final String? filters,
    }) {
    throw UnimplementedError('getUserAmazonCatalogue has not been implemented.');
  }

  Stream<Result<UserRewardsModel>> get userAmazonCatalogueStream {
    throw UnimplementedError('getUserAmazonCatalogueStream has not been implemented.');
  }

  static Future<Result<UserRewardsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserRewardsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserRewardsModel:
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
