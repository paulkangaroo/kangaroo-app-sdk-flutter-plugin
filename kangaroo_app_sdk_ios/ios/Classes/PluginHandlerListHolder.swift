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

    PublicAlaCarteProductsHandler(),

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

    PublicDepositGiftCardHandler(),

    GiftCardPurchaseHandler(),

    TransferRecallHandler(),

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