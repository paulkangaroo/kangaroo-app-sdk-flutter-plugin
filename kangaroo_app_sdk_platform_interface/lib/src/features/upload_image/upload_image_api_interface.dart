library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/upload_image/upload_image_api_implementation.dart';
import 'models/images_response_model.dart';
import 'models/upload_image_request_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/upload_image/models/images_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/upload_image/models/upload_image_request_model.dart';


abstract class UploadImageApiInterface extends PlatformInterface {
  UploadImageApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UploadImageApiInterface _instance = UploadImageApiFederated();

  static UploadImageApiInterface get instance => _instance;

  static set instance(UploadImageApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<ImagesResponseModel>?> uploadImage({ 
        final Map<String, String>? overrideHeaders,
        required final UploadImageRequestModel uploadImageBodyRequest,
    }) {
    throw UnimplementedError('uploadImage has not been implemented.');
  }

  Stream<Result<ImagesResponseModel>> get uploadImageStream {
    throw UnimplementedError('getUploadImageStream has not been implemented.');
  }

  static Future<Result<ImagesResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = ImagesResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case ImagesResponseModel:
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
