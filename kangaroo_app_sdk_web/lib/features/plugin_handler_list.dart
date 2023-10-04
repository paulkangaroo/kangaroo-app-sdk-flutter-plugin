import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_web/features/user_authentication/user_authentication_handler.dart';
import 'archive_inbox_item/archive_inbox_item_handler.dart';
import 'claim_offer/claim_offer_handler.dart';
import 'user_registration/user_registration_handler.dart';
import 'user_registration_with_crm/user_registration_with_crm_handler.dart';
import 'user_delete/user_delete_handler.dart';
import 'deposit_gift_card/gift_card_deposit_handler.dart';
import 'user_ala_carte/ala_carte_products_handler.dart';
import 'banners/banners_handler.dart';
import 'business/business_handler.dart';
import 'branches/branches_handler.dart';
import 'business_list/businesses_handler.dart';
import 'user_campaign_messages/campaign_messages_handler.dart';
import 'user_conglomerate_notification_preferences/get_conglomerate_notification_preferences_handler.dart';
import 'countries/countries_handler.dart';
import 'get_crm_fields/get_crm_fields_handler.dart';
import 'get_default_business_id/get_default_business_id_handler.dart';
import 'draws/draws_handler.dart';
import 'frequent_buyer_programs/frequent_buyer_programs_handler.dart';
import 'gift_cards/gift_cards_handler.dart';
import 'user_notification_preferences/get_notification_preferences_handler.dart';
import 'public_a_la_carte_products/public_ala_carte_products_handler.dart';
import 'public_banners/public_banners_handler.dart';
import 'public_branches/public_branches_handler.dart';
import 'public_business_settings/public_business_settings_handler.dart';
import 'public_offer/public_offer_handler.dart';
import 'public_offers/public_offers_handler.dart';
import 'public_products/public_products_handler.dart';
import 'public_reward/public_reward_handler.dart';
import 'public_rewards/public_rewards_handler.dart';
import 'social_media_links/social_media_links_handler.dart';
import 'get_spin_to_win_prizes/get_spin_to_win_prizes_handler.dart';
import 'strings/strings_handler.dart';
import 'tiers/tiers_handler.dart';
import 'user_transfer_messages/transfer_messages_handler.dart';
import 'user_business_ala_carte_products/user_business_ala_carte_products_handler.dart';
import 'user_business_banners/user_business_banners_handler.dart';
import 'user_business_frequent_buyer_programs/user_business_frequent_buyer_programs_handler.dart';
import 'user_business_gift_cards/user_business_gift_cards_handler.dart';
import 'user_business_offers/user_business_offers_handler.dart';
import 'user_business_products/user_business_products_handler.dart';
import 'user_business_profile/user_business_profile_handler.dart';
import 'user_business_rewards/user_business_rewards_handler.dart';
import 'user_business_social_media_links/user_business_social_media_links_handler.dart';
import 'user_business_tiers/user_business_tiers_handler.dart';
import 'user_coupons/user_coupons_handler.dart';
import 'user_details/user_details_handler.dart';
import 'user_offers/user_offers_handler.dart';
import 'user_products/user_products_handler.dart';
import 'user_profile/user_profile_handler.dart';
import 'user_rewards/user_rewards_handler.dart';
import 'user_transaction_history/user_transaction_history_handler.dart';
import 'user_used_coupons/user_used_coupons_handler.dart';
import 'make_pay_pal_payment/pay_pal_payment_handler.dart';
import 'perform_social_media_action/social_media_action_perform_handler.dart';
import 'post_offer_facebook_share/offer_facebook_share_handler.dart';
import 'make_gift_card_purchase/gift_card_purchase_handler.dart';
import 'user_transfer_recall/transfer_recall_handler.dart';
import 'redeem_coupon/redeem_coupons_handler.dart';
import 'redeem_reward/redeem_rewards_handler.dart';
import 'push_token_registration/push_token_registration_handler.dart';
import 'user_pin_reset_request/user_pin_reset_request_handler.dart';
import 'user_pin_reset_with_verification_code/user_pin_reset_handler.dart';
import 'user_scan_receipt/user_scan_receipt_handler.dart';
import 'user_balance_transfer/balance_transfer_handler.dart';
import 'user_unsubscribe/user_unsubscribe_handler.dart';
import 'update_default_business_id/update_default_business_id_handler.dart';
import 'user_notification_preferences_update/update_notification_preferences_handler.dart';
import 'user_pin_update/user_pin_update_handler.dart';
import 'user_profile_update/user_profile_update_handler.dart';
import 'user_check_in/user_check_in_handler.dart';
import 'user_verification/user_account_verification_handler.dart';


List<PluginChannelHandler> pluginHandlerList = [
  ArchiveInboxItemHandler(),

  ClaimOfferHandler(),

  UserRegistrationHandler(),

  UserRegistrationWithCrmHandler(),

  UserDeleteHandler(),

  GiftCardDepositHandler(),

  AlaCarteProductsHandler(),

  BannersHandler(),

  BusinessHandler(),

  BranchesHandler(),

  BusinessesHandler(),

  CampaignMessagesHandler(),

  GetConglomerateNotificationPreferencesHandler(),

  CountriesHandler(),

  GetCrmFieldsHandler(),

  GetDefaultBusinessIdHandler(),

  DrawsHandler(),

  FrequentBuyerProgramsHandler(),

  GiftCardsHandler(),

  GetNotificationPreferencesHandler(),

  PublicAlaCarteProductsHandler(),

  PublicBannersHandler(),

  PublicBranchesHandler(),

  PublicBusinessSettingsHandler(),

  PublicOfferHandler(),

  PublicOffersHandler(),

  PublicProductsHandler(),

  PublicRewardHandler(),

  PublicRewardsHandler(),

  SocialMediaLinksHandler(),

  GetSpinToWinPrizesHandler(),

  StringsHandler(),

  TiersHandler(),

  TransferMessagesHandler(),

  UserBusinessAlaCarteProductsHandler(),

  UserBusinessBannersHandler(),

  UserBusinessFrequentBuyerProgramsHandler(),

  UserBusinessGiftCardsHandler(),

  UserBusinessOffersHandler(),

  UserBusinessProductsHandler(),

  UserBusinessProfileHandler(),

  UserBusinessRewardsHandler(),

  UserBusinessSocialMediaLinksHandler(),

  UserBusinessTiersHandler(),

  UserCouponsHandler(),

  UserDetailsHandler(),

  UserOffersHandler(),

  UserProductsHandler(),

  UserProfileHandler(),

  UserRewardsHandler(),

  UserTransactionHistoryHandler(),

  UserUsedCouponsHandler(),

  PayPalPaymentHandler(),

  SocialMediaActionPerformHandler(),

  OfferFacebookShareHandler(),

  GiftCardPurchaseHandler(),

  TransferRecallHandler(),

  RedeemCouponsHandler(),

  RedeemRewardsHandler(),

  PushTokenRegistrationHandler(),

  UserPinResetRequestHandler(),

  UserPinResetHandler(),

  UserScanReceiptHandler(),

  BalanceTransferHandler(),

  UserUnsubscribeHandler(),

  UpdateDefaultBusinessIdHandler(),

  UpdateNotificationPreferencesHandler(),

  UserPinUpdateHandler(),

  UserProfileUpdateHandler(),

  UserCheckInHandler(),

  UserAccountVerificationHandler(),

  UserAuthenticationHandler()
];
