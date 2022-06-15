// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
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
        required final RedeemCouponRequest redeemCouponRequest
    }) {
    RedeemCouponsApi().redeemCoupon(
      jsonEncode(redeemCouponRequest)
    );
  }

  @override
  Stream<Result<CouponRedemptionResponseModel>> get redeemCouponsStream {
    var controller = StreamController<String>();

    RedeemCouponsApi().observeRedeemCouponsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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

@JS('kangaroorewards.js.appsdk.features.redeemCoupon.RedeemCouponsApi')
class RedeemCouponsApi {
  external RedeemCouponsApi();

  external void redeemCoupon( 
        String redeemCouponRequest
    );

  external void observeRedeemCouponsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

