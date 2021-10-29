// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemRequest _$RedeemRequestFromJson(Map<String, dynamic> json) =>
    RedeemRequest(
      branchId: json['branch_id'] as String,
      catalogItems: (json['catalog_items'] as List<dynamic>)
          .map((e) => RedemptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      intent: json['intent'] as String,
    );

Map<String, dynamic> _$RedeemRequestToJson(RedeemRequest instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'catalog_items': instance.catalogItems.map((e) => e.toJson()).toList(),
      'intent': instance.intent,
    };
