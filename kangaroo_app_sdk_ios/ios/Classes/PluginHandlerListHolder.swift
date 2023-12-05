import Foundation

class PluginHandlerListHolder {
    static var pluginHandlerList: [PluginChannelHandler] =
        [
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

    GetPublicPromotionsHandler(),

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

    UserBusinessCouponsHandler(),

    UserBusinessSocialMediaLinksHandler(),

    UserBusinessTiersHandler(),

    UserBusinessUsedCouponsHandler(),

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
        ]
}