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

    GetAmazonProductVariantsHandler(),

    BannersHandler(),

    BusinessHandler(),

    BranchesHandler(),

    GeofencesHandler(),

    BusinessesHandler(),

    CampaignMessagesHandler(),

    ConglomerateMembershipsHandler(),

    GetConglomerateNotificationPreferencesHandler(),

    CountriesHandler(),

    GetCrmFieldsHandler(),

    GetDefaultBusinessIdHandler(),

    DrawsHandler(),

    FrequentBuyerProgramsHandler(),

    GiftCardsHandler(),

    GetNotificationPreferencesHandler(),

    OrderStatusHandler(),

    PublicAlaCarteProductsHandler(),

    PublicAmazonCatalogueHandler(),

    GetPublicAmazonProductVariantsHandler(),

    PublicBannersHandler(),

    PublicBranchesHandler(),

    PublicBusinessSettingsHandler(),

    GetPublicCampaignHandler(),

    PublicOfferHandler(),

    PublicOffersHandler(),

    PublicProductsHandler(),

    GetPublicPromotionsHandler(),

    GetPublicQrCodeScanTokenHandler(),

    PublicRewardHandler(),

    PublicRewardsHandler(),

    SocialMediaLinksHandler(),

    GetSpinToWinPrizesHandler(),

    StringsHandler(),

    TiersHandler(),

    TransferMessagesHandler(),

    UserAmazonCatalogueHandler(),

    UserBusinessAlaCarteProductsHandler(),

    UserBusinessBannersHandler(),

    UserBusinessFrequentBuyerProgramsHandler(),

    UserBusinessGiftCardsHandler(),

    UserBusinessNotificationsHandler(),

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

    PublicDepositGiftCardHandler(),

    GiftCardPurchaseHandler(),

    TransferRecallHandler(),

    RedeemAmazonCatalogueItemsHandler(),

    RedeemCouponsHandler(),

    RedeemRewardsHandler(),

    PushTokenRegistrationHandler(),

    UserPinResetRequestHandler(),

    UserPinResetHandler(),

    UserPinResetWithTokenHandler(),

    ScanningPublicQrCodeHandler(),

    UserScanReceiptHandler(),

    BalanceTransferHandler(),

    TriggerGeofencesHandler(),

    UserUnsubscribeHandler(),

    UpdateDefaultBusinessIdHandler(),

    UpdateNotificationPreferencesHandler(),

    UserPinUpdateHandler(),

    UserProfileUpdateHandler(),

    UserCheckInHandler(),

    UserAccountVerificationHandler(),

    UploadImageHandler(),

    UserAuthenticationHandler()
        ]
}