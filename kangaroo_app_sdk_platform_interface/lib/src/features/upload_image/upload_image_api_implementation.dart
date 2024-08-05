import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/upload_image/upload_image_api_interface.dart';

import 'models/images_response_model.dart';
import 'models/upload_image_request_model.dart';

class UploadImageApiFederated extends UploadImageApiInterface {
  @override
Future<Result<ImagesResponseModel>?> uploadImage({ 
        final Map<String, String>? overrideHeaders,
        required final UploadImageRequestModel uploadImageBodyRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/upload_image',
    {
      'overrideHeaders' : overrideHeaders,
      'uploadImageBodyRequest' : jsonEncode(uploadImageBodyRequest)
    }
    );

    return UploadImageApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _uploadImageEvent =
      const EventChannel("customer_sdk/events/upload_image");

  @override
  Stream<Result<ImagesResponseModel>> get uploadImageStream {
    return _uploadImageEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = ImagesResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case ImagesResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
