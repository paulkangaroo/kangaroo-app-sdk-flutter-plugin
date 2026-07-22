/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/order_status_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/order_status_model.dart';

part 'order_status_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OrderStatusResponseModel {
  ///A list of messages for the order status 
  @JsonKey(name: "data")
  final List<OrderStatusModel> data;

  OrderStatusResponseModel({
    required this.data,
  });

  factory OrderStatusResponseModel.fromJson(Map<String, dynamic> data) => _$OrderStatusResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$OrderStatusResponseModelToJson(this);
}


