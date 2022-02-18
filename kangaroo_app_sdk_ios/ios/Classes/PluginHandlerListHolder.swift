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
        ]
}