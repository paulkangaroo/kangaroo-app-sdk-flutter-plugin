// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusResponseModel _$OrderStatusResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderStatusResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = OrderStatusResponseModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      OrderStatusModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrderStatusResponseModelToJson(
        OrderStatusResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
