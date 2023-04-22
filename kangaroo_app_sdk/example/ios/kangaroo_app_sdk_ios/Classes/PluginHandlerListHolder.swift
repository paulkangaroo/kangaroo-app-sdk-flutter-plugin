import Foundation

class PluginHandlerListHolder {
    static var pluginHandlerList: [PluginChannelHandler] =
        [
    ClaimOfferHandler(),

    UserRegistrationHandler(),

    UserDeleteHandler(),

    GiftCardDepositHandler(),

    AlaCarteProductsHandler(),

    BannersHandler(),

    BusinessHandler(),

    BranchesHandler(),

    BusinessesHandler(),

    CampaignMessagesHandler(),

    CountriesHandler(),

    GetDefaultBusinessIdHandler(),

    FrequentBuyerProgramsHandler(),

    GiftCardsHandler(),

    GetNotificationPreferencesHandler(),

    PublicAlaCarteProductsHandler(),

    PublicBannersHandler(),

    PublicBranchesHandler(),

    PublicBusinessSettingsHandler(),

    PublicOffersHandler(),

    PublicProductsHandler(),

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

    UserCouponsHandler(),

    UserDetailsHandler(),

    UserOffersHandler(),

    UserProductsHandler(),

    UserProfileHandler(),

    UserRewardsHandler(),

    UserTransactionHistoryHandler(),

    UserUsedCouponsHandler(),

    PayPalPaymentHandler(),

    OfferFacebookShareHandler(),

    GiftCardPurchaseHandler(),

    TransferRecallHandler(),

    RedeemCouponsHandler(),

    RedeemRewardsHandler(),

    PushTokenRegistrationHandler(),

    UserPinResetRequestHandler(),

    UserPinResetHandler(),

//    UserScanReceiptHandler(),

    BalanceTransferHandler(),

    UserUnsubscribeHandler(),

    UpdateDefaultBusinessIdHandler(),

    UpdateNotificationPreferencesHandler(),

    UserPinUpdateHandler(),

    UserProfileUpdateHandler(),

    UserCheckInHandler(),

    UserAccountVerificationHandler(),

    UserAuthenticationHandler()
        ]
}
