import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/upload_image/upload_image_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/upload_image/upload_image_platform_interface.dart';

class UploadImageApi {
  static Future<Result<ImagesResponseModel>?> uploadImage({ 
    final Map<String, String>? overrideHeaders,
    required final UploadImageRequestModel uploadImageBodyRequest,
  }) {
    return UploadImageApiInterface.instance.uploadImage( 
      overrideHeaders: overrideHeaders,
      uploadImageBodyRequest: uploadImageBodyRequest,
    );
  }

  static Stream<Result<ImagesResponseModel>> get uploadImageStream {
    return UploadImageApiInterface.instance.uploadImageStream;
  }
}
