import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_web/features/user_authentication/user_authentication_handler.dart';
import 'claim_offer/claim_offer_handler.dart';
import 'user_registration/user_registration_handler.dart';
import 'user_ala_carte/ala_carte_products_handler.dart';
import 'business/business_handler.dart';
import 'user_campaign_messages/campaign_messages_handler.dart';
import 'countries/countries_handler.dart';
import 'frequent_buyer/frequent_buyer_handler.dart';
import 'social_media/social_media_handler.dart';
import 'user_transfer_messages/transfer_messages_handler.dart';
import 'user_offers/user_offers_handler.dart';
import 'user_products/user_products_handler.dart';
import 'user_profile/user_profile_handler.dart';
import 'user_rewards/user_rewards_handler.dart';
import 'user_transaction_history/user_transaction_history_handler.dart';
import 'post_offer_facebook_share/offer_facebook_share_handler.dart';
import 'user_transfer_recall/transfer_recall_handler.dart';
import 'redeem_reward/redeem_rewards_handler.dart';
import 'user_pin_reset_request/user_pin_reset_request_handler.dart';
import 'user_pin_reset_with_verification_code/user_pin_reset_handler.dart';
import 'user_balance_transfer/balance_transfer_handler.dart';
import 'user_notification_preferences_update/update_notification_preferences_handler.dart';
import 'user_pin_update/user_pin_update_handler.dart';
import 'user_profile_update/user_profile_update_handler.dart';
import 'user_check_in/user_check_in_handler.dart';


List<PluginChannelHandler> pluginHandlerList = [
  ClaimOfferHandler(),

  UserRegistrationHandler(),

  AlaCarteProductsHandler(),

  BusinessHandler(),

  CampaignMessagesHandler(),

  CountriesHandler(),

  FrequentBuyerHandler(),

  SocialMediaHandler(),

  TransferMessagesHandler(),

  UserOffersHandler(),

  UserProductsHandler(),

  UserProfileHandler(),

  UserRewardsHandler(),

  UserTransactionHistoryHandler(),

  OfferFacebookShareHandler(),

  TransferRecallHandler(),

  RedeemRewardsHandler(),

  UserPinResetRequestHandler(),

  UserPinResetHandler(),

  BalanceTransferHandler(),

  UpdateNotificationPreferencesHandler(),

  UserPinUpdateHandler(),

  UserProfileUpdateHandler(),

  UserCheckInHandler(),

  UserAuthenticationHandler()
];
