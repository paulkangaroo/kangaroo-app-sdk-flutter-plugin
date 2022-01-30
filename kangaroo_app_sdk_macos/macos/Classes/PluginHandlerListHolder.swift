import Foundation

class PluginHandlerListHolder {
    static var pluginHandlerList: [PluginChannelHandler] =
        [
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
        ]
}