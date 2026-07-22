// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_coupon/redeem_coupons_platform_interface.dart';


class RedeemCouponsHandler extends RedeemCouponsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    RedeemCouponsApiInterface.instance = RedeemCouponsHandler();
  }

  @override
  redeemCoupon({ 
      final Map<String, String>? overrideHeaders,
        required final RedeemCouponRequest redeemCouponRequest
    }) {
    final Future<String?> request = RedeemCouponsApi().redeemCoupon(
        jsonEncode(overrideHeaders),
        jsonEncode(redeemCouponRequest)
    ).toDart.then((value) => value?.toDart);

    return RedeemCouponsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<CouponRedemptionResponseModel>> get redeemCouponsStream {
    var controller = StreamController<String>();

    RedeemCouponsApi().observeRedeemCouponsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = CouponRedemptionResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CouponRedemptionResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.redeemCoupon.RedeemCouponsApi')
extension type RedeemCouponsApi._(JSObject _) implements JSObject {
  external factory RedeemCouponsApi();

  external JSPromise<JSString?> redeemCoupon( 
        String? overrideHeaders, 
        String redeemCouponRequest
    );

  external void observeRedeemCouponsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

