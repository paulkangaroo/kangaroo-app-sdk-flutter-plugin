library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_registration_with_crm/user_registration_with_crm_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_register_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_register_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

abstract class UserRegistrationWithCrmApiInterface extends PlatformInterface {
  UserRegistrationWithCrmApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserRegistrationWithCrmApiInterface _instance = UserRegistrationWithCrmApiFederated();

  static UserRegistrationWithCrmApiInterface get instance => _instance;

  static set instance(UserRegistrationWithCrmApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserProfileDataModel>?> createAccountWithCrm({ 
        required final CrmRegisterRequest registerWithCrmRequest,
    }) {
    throw UnimplementedError('createAccountWithCrm has not been implemented.');
  }

  Stream<Result<UserProfileDataModel>> get userRegistrationWithCrmStream {
    throw UnimplementedError('getUserRegistrationWithCrmStream has not been implemented.');
  }

  static Future<Result<UserProfileDataModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserProfileDataModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserProfileDataModel:
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
