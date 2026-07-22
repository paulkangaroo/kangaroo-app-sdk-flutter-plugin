// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_amazon_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemAmazonItemRequest _$RedeemAmazonItemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'RedeemAmazonItemRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'intent',
            'catalog_items',
            'trial_mode',
            'branch',
            'customer'
          ],
        );
        final val = RedeemAmazonItemRequest(
          intent: $checkedConvert('intent', (v) => v as String),
          catalogItems: $checkedConvert(
              'catalog_items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      AmazonRedemptionModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          trialMode: $checkedConvert('trial_mode', (v) => v as bool),
          branch: $checkedConvert(
              'branch',
              (v) => AmazonRedemptionBranchModel.fromJson(
                  v as Map<String, dynamic>)),
          customer: $checkedConvert(
              'customer',
              (v) => AmazonRedemptionCustomerModel.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'catalogItems': 'catalog_items',
        'trialMode': 'trial_mode'
      },
    );

Map<String, dynamic> _$RedeemAmazonItemRequestToJson(
        RedeemAmazonItemRequest instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'catalog_items': instance.catalogItems.map((e) => e.toJson()).toList(),
      'trial_mode': instance.trialMode,
      'branch': instance.branch.toJson(),
      'customer': instance.customer.toJson(),
    };
