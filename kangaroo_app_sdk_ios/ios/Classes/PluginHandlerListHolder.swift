import Foundation

class PluginHandlerListHolder {
    static var pluginHandlerList: [PluginChannelHandler] =
        [
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

    PublicAlaCarteProductsHandler(),

    PublicBannersHandler(),

    PublicBranchesHandler(),

    PublicOffersHandler(),

    PublicProductsHandler(),

    PublicRewardsHandler(),

    SocialMediaLinksHandler(),

    StringsHandler(),

    TiersHandler(),

    TransferMessagesHandler(),

    UserCouponsHandler(),

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

    BalanceTransferHandler(),

    UserUnsubscribeHandler(),

    UpdateNotificationPreferencesHandler(),

    UserPinUpdateHandler(),

    UserProfileUpdateHandler(),

    UserCheckInHandler(),

    UserAccountVerificationHandler(),

    UserAuthenticationHandler()
        ]
}