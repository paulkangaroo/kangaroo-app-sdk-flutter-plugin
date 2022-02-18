package com.kangaroo.flutterplugin.android.features

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.features.userAuthentication.UserAuthenticationHandler
import com.kangaroo.flutterplugin.android.features.claimOffer.ClaimOfferHandler
import com.kangaroo.flutterplugin.android.features.userRegistration.UserRegistrationHandler
import com.kangaroo.flutterplugin.android.features.depositGiftCard.GiftCardDepositHandler
import com.kangaroo.flutterplugin.android.features.userAlaCarte.AlaCarteProductsHandler
import com.kangaroo.flutterplugin.android.features.banners.BannersHandler
import com.kangaroo.flutterplugin.android.features.business.BusinessHandler
import com.kangaroo.flutterplugin.android.features.businessList.BusinessesHandler
import com.kangaroo.flutterplugin.android.features.userCampaignMessages.CampaignMessagesHandler
import com.kangaroo.flutterplugin.android.features.countries.CountriesHandler
import com.kangaroo.flutterplugin.android.features.frequentBuyerPrograms.FrequentBuyerProgramsHandler
import com.kangaroo.flutterplugin.android.features.giftCards.GiftCardsHandler
import com.kangaroo.flutterplugin.android.features.userNotificationPreferences.GetNotificationPreferencesHandler
import com.kangaroo.flutterplugin.android.features.socialMediaLinks.SocialMediaLinksHandler
import com.kangaroo.flutterplugin.android.features.strings.StringsHandler
import com.kangaroo.flutterplugin.android.features.tiers.TiersHandler
import com.kangaroo.flutterplugin.android.features.userTransferMessages.TransferMessagesHandler
import com.kangaroo.flutterplugin.android.features.userOffers.UserOffersHandler
import com.kangaroo.flutterplugin.android.features.userProducts.UserProductsHandler
import com.kangaroo.flutterplugin.android.features.userProfile.UserProfileHandler
import com.kangaroo.flutterplugin.android.features.userRewards.UserRewardsHandler
import com.kangaroo.flutterplugin.android.features.userTransactionHistory.UserTransactionHistoryHandler
import com.kangaroo.flutterplugin.android.features.makePayPalPayment.PayPalPaymentHandler
import com.kangaroo.flutterplugin.android.features.postOfferFacebookShare.OfferFacebookShareHandler
import com.kangaroo.flutterplugin.android.features.makeGiftCardPurchase.GiftCardPurchaseHandler
import com.kangaroo.flutterplugin.android.features.userTransferRecall.TransferRecallHandler
import com.kangaroo.flutterplugin.android.features.redeemReward.RedeemRewardsHandler
import com.kangaroo.flutterplugin.android.features.pushTokenRegistration.PushTokenRegistrationHandler
import com.kangaroo.flutterplugin.android.features.userPinResetRequest.UserPinResetRequestHandler
import com.kangaroo.flutterplugin.android.features.userPinResetWithVerificationCode.UserPinResetHandler
import com.kangaroo.flutterplugin.android.features.userBalanceTransfer.BalanceTransferHandler
import com.kangaroo.flutterplugin.android.features.userUnsubscribe.UserUnsubscribeHandler
import com.kangaroo.flutterplugin.android.features.userNotificationPreferencesUpdate.UpdateNotificationPreferencesHandler
import com.kangaroo.flutterplugin.android.features.userPinUpdate.UserPinUpdateHandler
import com.kangaroo.flutterplugin.android.features.userProfileUpdate.UserProfileUpdateHandler
import com.kangaroo.flutterplugin.android.features.userCheckIn.UserCheckInHandler
import com.kangaroo.flutterplugin.android.features.userVerification.UserAccountVerificationHandler

val pluginHandlerList: List<PluginChannelHandler> = listOf(
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

    PushTokenRegistrationHandler(),

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
)
