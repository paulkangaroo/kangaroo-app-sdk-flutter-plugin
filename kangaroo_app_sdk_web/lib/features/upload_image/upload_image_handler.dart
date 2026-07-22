// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/upload_image/upload_image_platform_interface.dart';


class UploadImageHandler extends UploadImageApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UploadImageApiInterface.instance = UploadImageHandler();
  }

  @override
  uploadImage({ 
      final Map<String, String>? overrideHeaders,
        required final UploadImageRequestModel uploadImageBodyRequest
    }) {
    final Future<String?> request = UploadImageApi().uploadImage(
        jsonEncode(overrideHeaders),
        jsonEncode(uploadImageBodyRequest)
    ).toDart.then((value) => value?.toDart);

    return UploadImageApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<ImagesResponseModel>> get uploadImageStream {
    var controller = StreamController<String>();

    UploadImageApi().observeUploadImageState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.uploadImage.UploadImageApi')
extension type UploadImageApi._(JSObject _) implements JSObject {
  external factory UploadImageApi();

  external JSPromise<JSString?> uploadImage(
        String? overrideHeaders,
        String uploadImageBodyRequest
    );

  external void observeUploadImageState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

