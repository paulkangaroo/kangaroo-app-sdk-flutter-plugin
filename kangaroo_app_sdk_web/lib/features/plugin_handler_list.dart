import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_web/features/user_authentication/user_authentication_handler.dart';
import 'claim_offer/claim_offer_handler.dart';
import 'user_registration/user_registration_handler.dart';
import 'deposit_gift_card/gift_card_deposit_handler.dart';
import 'user_ala_carte/ala_carte_products_handler.dart';
import 'banners/banners_handler.dart';
import 'business/business_handler.dart';
import 'business_list/businesses_handler.dart';
import 'user_campaign_messages/campaign_messages_handler.dart';
import 'countries/countries_handler.dart';
import 'frequent_buyer_programs/frequent_buyer_programs_handler.dart';
import 'gift_cards/gift_cards_handler.dart';
import 'user_notification_preferences/get_notification_preferences_handler.dart';
import 'social_media_links/social_media_links_handler.dart';
import 'strings/strings_handler.dart';
import 'tiers/tiers_handler.dart';
import 'user_transfer_messages/transfer_messages_handler.dart';
import 'user_offers/user_offers_handler.dart';
import 'user_products/user_products_handler.dart';
import 'user_profile/user_profile_handler.dart';
import 'user_rewards/user_rewards_handler.dart';
import 'user_transaction_history/user_transaction_history_handler.dart';
import 'make_pay_pal_payment/pay_pal_payment_handler.dart';
import 'post_offer_facebook_share/offer_facebook_share_handler.dart';
import 'make_gift_card_purchase/gift_card_purchase_handler.dart';
import 'user_transfer_recall/transfer_recall_handler.dart';
import 'redeem_reward/redeem_rewards_handler.dart';
import 'user_pin_reset_request/user_pin_reset_request_handler.dart';
import 'user_pin_reset_with_verification_code/user_pin_reset_handler.dart';
import 'user_balance_transfer/balance_transfer_handler.dart';
import 'user_unsubscribe/user_unsubscribe_handler.dart';
import 'user_notification_preferences_update/update_notification_preferences_handler.dart';
import 'user_pin_update/user_pin_update_handler.dart';
import 'user_profile_update/user_profile_update_handler.dart';
import 'user_check_in/user_check_in_handler.dart';
import 'user_verification/user_account_verification_handler.dart';


List<PluginChannelHandler> pluginHandlerList = [
  ClaimOfferHandler(),

  UserRegistrationHandler(),

  GiftCardDepositHandler(),

  AlaCarteProductsHandler(),

  BannersHandler(),

  BusinessHandler(),

  BusinessesHandler(),

  CampaignMessagesHandler(),

  CountriesHandler(),

  FrequentBuyerProgramsHandler(),

  GiftCardsHandler(),

  GetNotificationPreferencesHandler(),

  SocialMediaLinksHandler(),

  StringsHandler(),

  TiersHandler(),

  TransferMessagesHandler(),

  UserOffersHandler(),

  UserProductsHandler(),

  UserProfileHandler(),

  UserRewardsHandler(),

  UserTransactionHistoryHandler(),

  PayPalPaymentHandler(),

  OfferFacebookShareHandler(),

  GiftCardPurchaseHandler(),

  TransferRecallHandler(),

  RedeemRewardsHandler(),

  UserPinResetRequestHandler(),

  UserPinResetHandler(),

  BalanceTransferHandler(),

  UserUnsubscribeHandler(),

  UpdateNotificationPreferencesHandler(),

  UserPinUpdateHandler(),

  UserProfileUpdateHandler(),

  UserCheckInHandler(),

  UserAccountVerificationHandler(),

  UserAuthenticationHandler()
];
