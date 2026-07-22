// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_qr_code_scan_token/get_public_qr_code_scan_token_platform_interface.dart';


class GetPublicQrCodeScanTokenHandler extends GetPublicQrCodeScanTokenApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetPublicQrCodeScanTokenApiInterface.instance = GetPublicQrCodeScanTokenHandler();
  }

  @override
  getPublicQrCodeScanToken({ 
      final Map<String, String>? overrideHeaders,
        required final PublicQrCodeScanTokenRequest publicQrCodeScanTokenRequest
    }) {
    final Future<String?> request = GetPublicQrCodeScanTokenApi().getPublicQrCodeScanToken(
        jsonEncode(overrideHeaders),
        jsonEncode(publicQrCodeScanTokenRequest)
    ).toDart.then((value) => value?.toDart);

    return GetPublicQrCodeScanTokenApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<GetPublicQrCodeScanTokenResponseModel>> get getPublicQrCodeScanTokenStream {
    var controller = StreamController<String>();

    GetPublicQrCodeScanTokenApi().observeGetPublicQrCodeScanTokenState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = GetPublicQrCodeScanTokenResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GetPublicQrCodeScanTokenResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getPublicQrCodeScanToken.GetPublicQrCodeScanTokenApi')
extension type GetPublicQrCodeScanTokenApi._(JSObject _) implements JSObject {
  external factory GetPublicQrCodeScanTokenApi();

  external JSPromise<JSString?> getPublicQrCodeScanToken( 
        String? overrideHeaders, 
        String publicQrCodeScanTokenRequest
    );

  external void observeGetPublicQrCodeScanTokenState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

