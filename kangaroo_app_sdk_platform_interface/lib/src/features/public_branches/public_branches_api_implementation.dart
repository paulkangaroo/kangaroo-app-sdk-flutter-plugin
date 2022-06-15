import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_branches/public_branches_api_interface.dart';



class PublicBranchesApiFederated extends PublicBranchesApiInterface {
  @override
  getPublicBranches() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_branches');
  }

  static const EventChannel _publicBranchesEvent =
      const EventChannel("customer_sdk/events/get_public_branches");

  @override
  Stream<Result<PublicBranchesModel>> get publicBranchesStream {
    return _publicBranchesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicBranchesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicBranchesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
