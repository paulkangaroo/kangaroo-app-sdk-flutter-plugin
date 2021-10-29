package com.kangaroo.flutterplugin.android.features

import com.kangaroo.flutterplugin.android.base.PluginChannelHandler
import com.kangaroo.flutterplugin.android.features.userAuthentication.UserAuthenticationHandler
import com.kangaroo.flutterplugin.android.features.claimOffer.ClaimOfferHandler
import com.kangaroo.flutterplugin.android.features.userRegistration.UserRegistrationHandler
import com.kangaroo.flutterplugin.android.features.userAlaCarte.AlaCarteProductsHandler
import com.kangaroo.flutterplugin.android.features.business.BusinessHandler
import com.kangaroo.flutterplugin.android.features.userCampaignMessages.CampaignMessagesHandler
import com.kangaroo.flutterplugin.android.features.countries.CountriesHandler
import com.kangaroo.flutterplugin.android.features.frequentBuyer.FrequentBuyerHandler
import com.kangaroo.flutterplugin.android.features.socialMedia.SocialMediaHandler
import com.kangaroo.flutterplugin.android.features.userTransferMessages.TransferMessagesHandler
import com.kangaroo.flutterplugin.android.features.userOffers.UserOffersHandler
import com.kangaroo.flutterplugin.android.features.userProducts.UserProductsHandler
import com.kangaroo.flutterplugin.android.features.userProfile.UserProfileHandler
import com.kangaroo.flutterplugin.android.features.userRewards.UserRewardsHandler
import com.kangaroo.flutterplugin.android.features.userTransactionHistory.UserTransactionHistoryHandler
import com.kangaroo.flutterplugin.android.features.postOfferFacebookShare.OfferFacebookShareHandler
import com.kangaroo.flutterplugin.android.features.userTransferRecall.TransferRecallHandler
import com.kangaroo.flutterplugin.android.features.redeemReward.RedeemRewardsHandler
import com.kangaroo.flutterplugin.android.features.userPinResetRequest.UserPinResetRequestHandler
import com.kangaroo.flutterplugin.android.features.userPinResetWithVerificationCode.UserPinResetHandler
import com.kangaroo.flutterplugin.android.features.userBalanceTransfer.BalanceTransferHandler
import com.kangaroo.flutterplugin.android.features.userNotificationPreferencesUpdate.UpdateNotificationPreferencesHandler
import com.kangaroo.flutterplugin.android.features.userPinUpdate.UserPinUpdateHandler
import com.kangaroo.flutterplugin.android.features.userProfileUpdate.UserProfileUpdateHandler
import com.kangaroo.flutterplugin.android.features.userCheckIn.UserCheckInHandler

val pluginHandlerList: List<PluginChannelHandler> = listOf(
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
)
