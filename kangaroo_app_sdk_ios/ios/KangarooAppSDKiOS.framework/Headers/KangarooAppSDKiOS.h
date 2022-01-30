#import <Foundation/NSArray.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSError.h>
#import <Foundation/NSObject.h>
#import <Foundation/NSSet.h>
#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>

@class KASDKOSToken, KASDKOSRuntimeQuery<__covariant RowType>, KASDKOSKtor_client_coreHttpRequestBuilder, KASDKOSKotlinUnit, KASDKOSKtor_httpHttpAuthHeader, KASDKOSModelOld, KASDKOSResult<__covariant T>, KASDKOSResultMetaData, KASDKOSResultIdle<__covariant T>, KASDKOSResultLoadingCompanion, KASDKOSResultLoading<__covariant T>, KASDKOSKotlinArray<T>, KASDKOSResultSuccessCompanion, KASDKOSResultSuccess<__covariant T>, KASDKOSResultUnauthorizedErrorCompanion, KASDKOSResultUnauthorizedError<__covariant T>, KASDKOSResultUnknownErrorCompanion, KASDKOSResultUnknownError<__covariant T>, KASDKOSResultMetaDataCompanion, KASDKOSSerializedResult<__covariant T>, KASDKOSSerializedResultIdleCompanion, KASDKOSSerializedResultIdle, KASDKOSSerializedResultLoadingCompanion, KASDKOSSerializedResultLoading, KASDKOSSerializedResultSuccessCompanion, KASDKOSSerializedResultSuccess, KASDKOSSerializedResultUnauthorizedErrorCompanion, KASDKOSSerializedResultUnauthorizedError, KASDKOSSerializedResultUnknownErrorCompanion, KASDKOSSerializedResultUnknownError, KASDKOSModel, KASDKOSLanguage, KASDKOSTranslation, KASDKOSRewardTranslation, KASDKOSModelCompanion, KASDKOSEmptyResponse, KASDKOSKangarooCacheCompanion, KASDKOSApi, KASDKOSBusinessApiCompanion, KASDKOSBusiness, KASDKOSCFlow<T>, KASDKOSBranchPhone, KASDKOSImage, KASDKOSBranchAddress, KASDKOSBranchCompanion, KASDKOSBranch, KASDKOSBranchAddressCompanion, KASDKOSBranchPhoneCompanion, KASDKOSBusinessData, KASDKOSBusinessBranchesData, KASDKOSBusinessCompanion, KASDKOSBusinessBranchesDataCompanion, KASDKOSBusinessCategoryCompanion, KASDKOSBusinessCategory, KASDKOSBusinessDataCompanion, KASDKOSImageCompanion, KASDKOSUserRegistrationApiCompanion, KASDKOSUserProfileModel, KASDKOSUserProfileDataCompanion, KASDKOSUserProfileData, KASDKOSUserProfileModelCompanion, KASDKOSUserPinResetRequestApiCompanion, KASDKOSUserPinResetRequest, KASDKOSUserPinResetRequestCompanion, KASDKOSOfferFacebookShareApiCompanion, KASDKOSUserProfileModel_, KASDKOSUserProfileBalanceDataCompanion, KASDKOSUserProfileBalanceData, KASDKOSUserProfileData_Companion, KASDKOSUserProfileData_, KASDKOSUserProfileIncludeCompanion, KASDKOSUserProfileInclude, KASDKOSUserProfileModel_Companion, KASDKOSAlaCarteProductsApiCompanion, KASDKOSAlaCarteProductsModel, KASDKOSProductItemModel, KASDKOSAlaCarteItemModelCompanion, KASDKOSAlaCarteItemModel, KASDKOSUserProfileData__, KASDKOSUserAlaCarteIncluded, KASDKOSAlaCarteProductsModelCompanion, KASDKOSErrorCompanion, KASDKOSError, KASDKOSImagesCompanion, KASDKOSImages, KASDKOSLanguage_Companion, KASDKOSLanguage_, KASDKOSLanguagesCompanion, KASDKOSLanguages, KASDKOSProductItemModelCompanion, KASDKOSUserAlaCarteIncludedCompanion, KASDKOSUserProfileData__Companion, KASDKOSSocialMediaApiCompanion, KASDKOSSocialMediaModel, KASDKOSError_Companion, KASDKOSError_, KASDKOSSocialMediaItemModel, KASDKOSSocialMediaIncludedCompanion, KASDKOSSocialMediaIncluded, KASDKOSSocialMediaItemModelCompanion, KASDKOSSocialMediaModelCompanion, KASDKOSUserPinUpdateApiCompanion, KASDKOSUserProfileModel__, KASDKOSUpdatePinRequest, KASDKOSUpdatePinRequestCompanion, KASDKOSUserProfileBalanceData_Companion, KASDKOSUserProfileBalanceData_, KASDKOSUserProfileData___Companion, KASDKOSUserProfileData___, KASDKOSUserProfileInclude_Companion, KASDKOSUserProfileInclude_, KASDKOSUserProfileModel__Companion, KASDKOSUserTransactionHistoryApiCompanion, KASDKOSUserTransactionHistoryModel, KASDKOSTransactionCompanion, KASDKOSTransaction, KASDKOSUserTransactionHistoryModelCompanion, KASDKOSTransferRecallApiCompanion, KASDKOSTransferRecallResultModel, KASDKOSImage_Companion, KASDKOSImage_, KASDKOSLanguage__Companion, KASDKOSLanguage__, KASDKOSOfferActionCompanion, KASDKOSOfferAction, KASDKOSOfferTranslation, KASDKOSOfferModelCompanion, KASDKOSOfferModel, KASDKOSOfferTranslationCompanion, KASDKOSTransferMessageGiftCardQueue, KASDKOSTransferMessageActions, KASDKOSTransferMessageCompanion, KASDKOSTransferMessage, KASDKOSTransferMessageActionsCompanion, KASDKOSTransferMessageGiftCardQueueCompanion, KASDKOSTransferRecallResultModelCompanion, KASDKOSBalanceTransferApiCompanion, KASDKOSTransferModel, KASDKOSTransferFromCompanion, KASDKOSTransferFrom, KASDKOSTransferTo, KASDKOSTransferModelCompanion, KASDKOSTransferToCompanion, KASDKOSFrequentBuyerApiCompanion, KASDKOSFrequentBuyerModel, KASDKOSError__Companion, KASDKOSError__, KASDKOSFrequentBuyerItemModel, KASDKOSFrequentBuyerIncludedCompanion, KASDKOSFrequentBuyerIncluded, KASDKOSFrequentBuyerUsersModel, KASDKOSFrequentBuyerItemModelCompanion, KASDKOSUserProfileData____, KASDKOSFrequentBuyerModelCompanion, KASDKOSFrequentBuyerUsersModelCompanion, KASDKOSUserProfileData____Companion, KASDKOSUserOffersApiCompanion, KASDKOSUserOffersModel, KASDKOSImage__Companion, KASDKOSImage__, KASDKOSLanguage___Companion, KASDKOSLanguage___, KASDKOSOfferAction_Companion, KASDKOSOfferAction_, KASDKOSOfferTranslation_, KASDKOSOfferModel_Companion, KASDKOSOfferModel_, KASDKOSOfferTranslation_Companion, KASDKOSUserOffersModelCompanion, KASDKOSClaimOfferApiCompanion, KASDKOSClaimedOfferModel, KASDKOSOfferModel__, KASDKOSClaimedOfferModelCompanion, KASDKOSImage___Companion, KASDKOSImage___, KASDKOSLanguage____Companion, KASDKOSLanguage____, KASDKOSOfferAction__Companion, KASDKOSOfferAction__, KASDKOSOfferTranslation__, KASDKOSOfferModel__Companion, KASDKOSOfferTranslation__Companion, KASDKOSUserProfileUpdateApiCompanion, KASDKOSUserProfileModel___, KASDKOSUserProfileBalanceData__Companion, KASDKOSUserProfileBalanceData__, KASDKOSUserProfileData_____Companion, KASDKOSUserProfileData_____, KASDKOSUserProfileInclude__Companion, KASDKOSUserProfileInclude__, KASDKOSUserProfileModel___Companion, KASDKOSRedeemRewardsApiCompanion, KASDKOSRedeemResponseModel, KASDKOSRedeemRequest, KASDKOSRedemptionModel, KASDKOSRedeemRequestCompanion, KASDKOSUserProfileModel____, KASDKOSRedeemResponseDataCompanion, KASDKOSRedeemResponseData, KASDKOSRedeemResponseModelCompanion, KASDKOSRedemptionModelCompanion, KASDKOSUserProfileBalanceData___Companion, KASDKOSUserProfileBalanceData___, KASDKOSUserProfileData______Companion, KASDKOSUserProfileData______, KASDKOSUserProfileInclude___Companion, KASDKOSUserProfileInclude___, KASDKOSUserProfileModel____Companion, KASDKOSUserCheckInApiCompanion, KASDKOSCheckInRequest, KASDKOSCheckInRequestCompanion, KASDKOSUpdateNotificationPreferencesApiCompanion, KASDKOSNotificationUpdateModel, KASDKOSNotificationPreferencesRequest, KASDKOSBusiness_Companion, KASDKOSBusiness_, KASDKOSNotificationPreferencesRequestCompanion, KASDKOSNotificationUpdateResponseData, KASDKOSNotificationUpdateModelCompanion, KASDKOSNotificationUpdateResponseDataCompanion, KASDKOSUserAuthenticationApiCompanion, KASDKOSUserAuthenticationModel, KASDKOSUserAuthenticationModelCompanion, KASDKOSUserProfileApiCompanion, KASDKOSUserProfileModel_____, KASDKOSUserProfileBalanceData____Companion, KASDKOSUserProfileBalanceData____, KASDKOSUserProfileData_______Companion, KASDKOSUserProfileData_______, KASDKOSUserProfileInclude____Companion, KASDKOSUserProfileInclude____, KASDKOSUserProfileModel_____Companion, KASDKOSCountriesApiCompanion, KASDKOSCountries, KASDKOSCountry, KASDKOSCountriesCompanion, KASDKOSCountryCompanion, KASDKOSUserPinResetApiCompanion, KASDKOSUserRewardsApiCompanion, KASDKOSUserRewardsModel, KASDKOSImage____Companion, KASDKOSImage____, KASDKOSLanguage_____Companion, KASDKOSLanguage_____, KASDKOSRewardTranslation_, KASDKOSRewardModelCompanion, KASDKOSRewardModel, KASDKOSRewardTranslation_Companion, KASDKOSUserRewardsDataCompanion, KASDKOSUserRewardsData, KASDKOSUserRewardsModelCompanion, KASDKOSCampaignMessagesApiCompanion, KASDKOSCampaignMessagesModel, KASDKOSBusinessCategory_Companion, KASDKOSBusinessCategory_, KASDKOSImage_____, KASDKOSBusinessData_Companion, KASDKOSBusinessData_, KASDKOSOfferModel___, KASDKOSCampaignCompanion, KASDKOSCampaign, KASDKOSCampaignMessageCompanion, KASDKOSCampaignMessage, KASDKOSCampaignMessagesModelCompanion, KASDKOSImage_____Companion, KASDKOSLanguage______Companion, KASDKOSLanguage______, KASDKOSOfferAction___Companion, KASDKOSOfferAction___, KASDKOSOfferTranslation___, KASDKOSOfferModel___Companion, KASDKOSOfferTranslation___Companion, KASDKOSUserProductsApiCompanion, KASDKOSUserProductsModel, KASDKOSError___Companion, KASDKOSError___, KASDKOSImages_Companion, KASDKOSImages_, KASDKOSLanguage_______Companion, KASDKOSLanguage_______, KASDKOSLanguages_Companion, KASDKOSLanguages_, KASDKOSProductCompanion, KASDKOSProduct, KASDKOSUserProductsIncludedCompanion, KASDKOSUserProductsIncluded, KASDKOSUserProfileData________, KASDKOSUserProductsModelCompanion, KASDKOSUserProfileData________Companion, KASDKOSTransferMessagesApiCompanion, KASDKOSTransferMessagesModel, KASDKOSImage______Companion, KASDKOSImage______, KASDKOSLanguage________Companion, KASDKOSLanguage________, KASDKOSOfferAction____Companion, KASDKOSOfferAction____, KASDKOSOfferTranslation____, KASDKOSOfferModel____Companion, KASDKOSOfferModel____, KASDKOSOfferTranslation____Companion, KASDKOSTransferMessageGiftCardQueue_, KASDKOSTransferMessageActions_, KASDKOSTransferMessage_Companion, KASDKOSTransferMessage_, KASDKOSTransferMessageActions_Companion, KASDKOSTransferMessageGiftCardQueue_Companion, KASDKOSTransferMessagesModelCompanion, KASDKOSKtor_httpHeadersBuilder, KASDKOSKtor_client_coreHttpRequestBuilderCompanion, KASDKOSKtor_client_coreHttpRequestData, KASDKOSKtor_httpURLBuilder, KASDKOSKtor_httpHttpMethod, KASDKOSKtor_httpHttpAuthHeaderCompanion, KASDKOSKtor_httpHeaderValueEncoding, KASDKOSKotlinThrowable, KASDKOSKotlinException, KASDKOSKotlinRuntimeException, KASDKOSKotlinIllegalStateException, KASDKOSRuntimeTransacterTransaction, KASDKOSKotlinByteArray, KASDKOSKtor_utilsStringValuesBuilder, KASDKOSKtor_httpUrl, KASDKOSKtor_httpOutgoingContent, KASDKOSKtor_utilsAttributeKey<T>, KASDKOSKtor_httpURLProtocol, KASDKOSKtor_httpParametersBuilder, KASDKOSKtor_httpURLBuilderCompanion, KASDKOSKotlinCancellationException, KASDKOSKtor_httpHttpMethodCompanion, KASDKOSKtor_httpHttpAuthHeaderParameterized, KASDKOSKtor_ioCharset, KASDKOSKotlinEnumCompanion, KASDKOSKotlinEnum<E>, KASDKOSKotlinx_serialization_coreSerializersModule, KASDKOSKotlinx_serialization_coreSerialKind, KASDKOSKotlinNothing, KASDKOSKotlinByteIterator, KASDKOSKtor_httpUrlCompanion, KASDKOSKtor_httpContentType, KASDKOSKtor_httpHttpStatusCode, KASDKOSKtor_httpURLProtocolCompanion, KASDKOSKtor_httpUrlEncodingOption, KASDKOSKtor_httpHeaderValueParam, KASDKOSKtor_ioCharsetCompanion, KASDKOSKtor_ioCharsetDecoder, KASDKOSKtor_ioCharsetEncoder, KASDKOSKtor_httpHeaderValueWithParametersCompanion, KASDKOSKtor_httpHeaderValueWithParameters, KASDKOSKtor_httpContentTypeCompanion, KASDKOSKtor_httpHttpStatusCodeCompanion, KASDKOSKotlinx_coroutines_coreAtomicDesc, KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp, KASDKOSKotlinx_coroutines_coreAtomicOp<__contravariant T>, KASDKOSKotlinx_coroutines_coreOpDescriptor, KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode, KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAbstractAtomicDesc, KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAddLastDesc<T>, KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeRemoveFirstDesc<T>;

@protocol KASDKOSRuntimeTransactionWithoutReturn, KASDKOSRuntimeTransactionWithReturn, KASDKOSRuntimeTransacter, KASDKOSKotlinx_serialization_coreKSerializer, KASDKOSKotlinx_coroutines_coreFlowCollector, KASDKOSKotlinx_coroutines_coreFlow, KASDKOSKtor_ioCloseable, KASDKOSKotlinSuspendFunction0, KASDKOSRuntimeSqlDriver, KASDKOSKangarooCacheQueries, KASDKOSKangarooCache, KASDKOSRuntimeSqlDriverSchema, KASDKOSRuntimeSqlCursor, KASDKOSRuntimeQueryListener, KASDKOSRuntimeTransactionCallbacks, KASDKOSKtor_httpHttpMessageBuilder, KASDKOSKtor_client_coreHttpClientEngineCapability, KASDKOSKtor_utilsAttributes, KASDKOSKotlinx_coroutines_coreJob, KASDKOSKotlinx_serialization_coreEncoder, KASDKOSKotlinx_serialization_coreSerialDescriptor, KASDKOSKotlinx_serialization_coreSerializationStrategy, KASDKOSKotlinx_serialization_coreDecoder, KASDKOSKotlinx_serialization_coreDeserializationStrategy, KASDKOSKotlinIterator, KASDKOSKotlinFunction, KASDKOSRuntimeSqlPreparedStatement, KASDKOSRuntimeCloseable, KASDKOSKtor_utilsStringValues, KASDKOSKotlinMapEntry, KASDKOSKtor_httpHeaders, KASDKOSKotlinx_coroutines_coreChildHandle, KASDKOSKotlinx_coroutines_coreChildJob, KASDKOSKotlinx_coroutines_coreDisposableHandle, KASDKOSKotlinSequence, KASDKOSKotlinx_coroutines_coreSelectClause0, KASDKOSKotlinCoroutineContextKey, KASDKOSKotlinCoroutineContextElement, KASDKOSKotlinCoroutineContext, KASDKOSKotlinComparable, KASDKOSKotlinx_serialization_coreCompositeEncoder, KASDKOSKotlinAnnotation, KASDKOSKotlinx_serialization_coreCompositeDecoder, KASDKOSKtor_httpParameters, KASDKOSKotlinx_coroutines_coreParentJob, KASDKOSKotlinx_coroutines_coreSelectInstance, KASDKOSKotlinx_serialization_coreSerializersModuleCollector, KASDKOSKotlinKClass, KASDKOSKotlinContinuation, KASDKOSKotlinKDeclarationContainer, KASDKOSKotlinKAnnotatedElement, KASDKOSKotlinKClassifier;

NS_ASSUME_NONNULL_BEGIN
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunknown-warning-option"
#pragma clang diagnostic ignored "-Wincompatible-property-type"
#pragma clang diagnostic ignored "-Wnullability"

#pragma push_macro("_Nullable_result")
#if !__has_feature(nullability_nullable_result)
#undef _Nullable_result
#define _Nullable_result _Nullable
#endif

__attribute__((swift_name("KotlinBase")))
@interface KASDKOSBase : NSObject
- (instancetype)init __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
+ (void)initialize __attribute__((objc_requires_super));
@end;

@interface KASDKOSBase (KASDKOSBaseCopying) <NSCopying>
@end;

__attribute__((swift_name("KotlinMutableSet")))
@interface KASDKOSMutableSet<ObjectType> : NSMutableSet<ObjectType>
@end;

__attribute__((swift_name("KotlinMutableDictionary")))
@interface KASDKOSMutableDictionary<KeyType, ObjectType> : NSMutableDictionary<KeyType, ObjectType>
@end;

@interface NSError (NSErrorKASDKOSKotlinException)
@property (readonly) id _Nullable kotlinException;
@end;

__attribute__((swift_name("KotlinNumber")))
@interface KASDKOSNumber : NSNumber
- (instancetype)initWithChar:(char)value __attribute__((unavailable));
- (instancetype)initWithUnsignedChar:(unsigned char)value __attribute__((unavailable));
- (instancetype)initWithShort:(short)value __attribute__((unavailable));
- (instancetype)initWithUnsignedShort:(unsigned short)value __attribute__((unavailable));
- (instancetype)initWithInt:(int)value __attribute__((unavailable));
- (instancetype)initWithUnsignedInt:(unsigned int)value __attribute__((unavailable));
- (instancetype)initWithLong:(long)value __attribute__((unavailable));
- (instancetype)initWithUnsignedLong:(unsigned long)value __attribute__((unavailable));
- (instancetype)initWithLongLong:(long long)value __attribute__((unavailable));
- (instancetype)initWithUnsignedLongLong:(unsigned long long)value __attribute__((unavailable));
- (instancetype)initWithFloat:(float)value __attribute__((unavailable));
- (instancetype)initWithDouble:(double)value __attribute__((unavailable));
- (instancetype)initWithBool:(BOOL)value __attribute__((unavailable));
- (instancetype)initWithInteger:(NSInteger)value __attribute__((unavailable));
- (instancetype)initWithUnsignedInteger:(NSUInteger)value __attribute__((unavailable));
+ (instancetype)numberWithChar:(char)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedChar:(unsigned char)value __attribute__((unavailable));
+ (instancetype)numberWithShort:(short)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedShort:(unsigned short)value __attribute__((unavailable));
+ (instancetype)numberWithInt:(int)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedInt:(unsigned int)value __attribute__((unavailable));
+ (instancetype)numberWithLong:(long)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedLong:(unsigned long)value __attribute__((unavailable));
+ (instancetype)numberWithLongLong:(long long)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedLongLong:(unsigned long long)value __attribute__((unavailable));
+ (instancetype)numberWithFloat:(float)value __attribute__((unavailable));
+ (instancetype)numberWithDouble:(double)value __attribute__((unavailable));
+ (instancetype)numberWithBool:(BOOL)value __attribute__((unavailable));
+ (instancetype)numberWithInteger:(NSInteger)value __attribute__((unavailable));
+ (instancetype)numberWithUnsignedInteger:(NSUInteger)value __attribute__((unavailable));
@end;

__attribute__((swift_name("KotlinByte")))
@interface KASDKOSByte : KASDKOSNumber
- (instancetype)initWithChar:(char)value;
+ (instancetype)numberWithChar:(char)value;
@end;

__attribute__((swift_name("KotlinUByte")))
@interface KASDKOSUByte : KASDKOSNumber
- (instancetype)initWithUnsignedChar:(unsigned char)value;
+ (instancetype)numberWithUnsignedChar:(unsigned char)value;
@end;

__attribute__((swift_name("KotlinShort")))
@interface KASDKOSShort : KASDKOSNumber
- (instancetype)initWithShort:(short)value;
+ (instancetype)numberWithShort:(short)value;
@end;

__attribute__((swift_name("KotlinUShort")))
@interface KASDKOSUShort : KASDKOSNumber
- (instancetype)initWithUnsignedShort:(unsigned short)value;
+ (instancetype)numberWithUnsignedShort:(unsigned short)value;
@end;

__attribute__((swift_name("KotlinInt")))
@interface KASDKOSInt : KASDKOSNumber
- (instancetype)initWithInt:(int)value;
+ (instancetype)numberWithInt:(int)value;
@end;

__attribute__((swift_name("KotlinUInt")))
@interface KASDKOSUInt : KASDKOSNumber
- (instancetype)initWithUnsignedInt:(unsigned int)value;
+ (instancetype)numberWithUnsignedInt:(unsigned int)value;
@end;

__attribute__((swift_name("KotlinLong")))
@interface KASDKOSLong : KASDKOSNumber
- (instancetype)initWithLongLong:(long long)value;
+ (instancetype)numberWithLongLong:(long long)value;
@end;

__attribute__((swift_name("KotlinULong")))
@interface KASDKOSULong : KASDKOSNumber
- (instancetype)initWithUnsignedLongLong:(unsigned long long)value;
+ (instancetype)numberWithUnsignedLongLong:(unsigned long long)value;
@end;

__attribute__((swift_name("KotlinFloat")))
@interface KASDKOSFloat : KASDKOSNumber
- (instancetype)initWithFloat:(float)value;
+ (instancetype)numberWithFloat:(float)value;
@end;

__attribute__((swift_name("KotlinDouble")))
@interface KASDKOSDouble : KASDKOSNumber
- (instancetype)initWithDouble:(double)value;
+ (instancetype)numberWithDouble:(double)value;
@end;

__attribute__((swift_name("KotlinBoolean")))
@interface KASDKOSBoolean : KASDKOSNumber
- (instancetype)initWithBool:(BOOL)value;
+ (instancetype)numberWithBool:(BOOL)value;
@end;

__attribute__((swift_name("RuntimeTransacter")))
@protocol KASDKOSRuntimeTransacter
@required
- (void)transactionNoEnclosing:(BOOL)noEnclosing body:(void (^)(id<KASDKOSRuntimeTransactionWithoutReturn>))body __attribute__((swift_name("transaction(noEnclosing:body:)")));
- (id _Nullable)transactionWithResultNoEnclosing:(BOOL)noEnclosing bodyWithReturn:(id _Nullable (^)(id<KASDKOSRuntimeTransactionWithReturn>))bodyWithReturn __attribute__((swift_name("transactionWithResult(noEnclosing:bodyWithReturn:)")));
@end;

__attribute__((swift_name("KangarooCacheQueries")))
@protocol KASDKOSKangarooCacheQueries <KASDKOSRuntimeTransacter>
@required
- (void)clearTokens __attribute__((swift_name("clearTokens()")));
- (KASDKOSRuntimeQuery<KASDKOSToken *> *)getTokens __attribute__((swift_name("getTokens()")));
- (KASDKOSRuntimeQuery<id> *)getTokensMapper:(id (^)(NSString *, NSString *))mapper __attribute__((swift_name("getTokens(mapper:)")));
- (void)saveTokensAccessToken:(NSString *)accessToken refreshToken:(NSString *)refreshToken __attribute__((swift_name("saveTokens(accessToken:refreshToken:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Token")))
@interface KASDKOSToken : KASDKOSBase
- (instancetype)initWithAccessToken:(NSString *)accessToken refreshToken:(NSString *)refreshToken __attribute__((swift_name("init(accessToken:refreshToken:)"))) __attribute__((objc_designated_initializer));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSToken *)doCopyAccessToken:(NSString *)accessToken refreshToken:(NSString *)refreshToken __attribute__((swift_name("doCopy(accessToken:refreshToken:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *accessToken __attribute__((swift_name("accessToken")));
@property (readonly) NSString *refreshToken __attribute__((swift_name("refreshToken")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KangarooSdk")))
@interface KASDKOSKangarooSdk : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));

/**
 * Initializes the sdk. Accessing the sdk prior to running this command
 * will throw an exception
 */
- (void)initializeApplicationKey:(NSString *)applicationKey clientId:(NSString *)clientId clientSecret:(NSString *)clientSecret __attribute__((swift_name("initialize(applicationKey:clientId:clientSecret:)")));
@end;


/**
 * Client basic authentication provider.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BasicAuthProvider")))
@interface KASDKOSBasicAuthProvider : KASDKOSBase
- (instancetype)initWithUsername:(NSString *)username password:(NSString *)password realm:(NSString * _Nullable)realm sendWithoutRequest:(BOOL)sendWithoutRequest __attribute__((swift_name("init(username:password:realm:sendWithoutRequest:)"))) __attribute__((objc_designated_initializer));

/**
 @note This method converts instances of CancellationException to errors.
 Other uncaught Kotlin exceptions are fatal.
*/
- (void)addRequestHeadersRequest:(KASDKOSKtor_client_coreHttpRequestBuilder *)request completionHandler:(void (^)(KASDKOSKotlinUnit * _Nullable, NSError * _Nullable))completionHandler __attribute__((swift_name("addRequestHeaders(request:completionHandler:)")));
- (BOOL)isApplicableAuth:(KASDKOSKtor_httpHttpAuthHeader *)auth __attribute__((swift_name("isApplicable(auth:)")));
@property (readonly) BOOL sendWithoutRequest __attribute__((swift_name("sendWithoutRequest")));
@end;

__attribute__((swift_name("ModelOld")))
@interface KASDKOSModelOld : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@end;

__attribute__((swift_name("ModelList")))
@interface KASDKOSModelList<T> : KASDKOSModelOld
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (readonly) NSArray<T> *all __attribute__((swift_name("all")));
@end;


/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
__attribute__((swift_name("Result")))
@interface KASDKOSResult<__covariant T> : KASDKOSBase

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultIdle")))
@interface KASDKOSResultIdle<__covariant T> : KASDKOSResult<T>
- (instancetype)initWithState:(KASDKOSResultMetaData *)state __attribute__((swift_name("init(state:)"))) __attribute__((objc_designated_initializer));

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
- (KASDKOSResultMetaData *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSResultIdle<T> *)doCopyState:(KASDKOSResultMetaData *)state __attribute__((swift_name("doCopy(state:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSResultMetaData *state __attribute__((swift_name("state")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultLoading")))
@interface KASDKOSResultLoading<__covariant T> : KASDKOSResult<T>
- (instancetype)initWithState:(KASDKOSResultMetaData *)state __attribute__((swift_name("init(state:)"))) __attribute__((objc_designated_initializer));

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSResultLoadingCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSResultMetaData *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSResultLoading<T> *)doCopyState:(KASDKOSResultMetaData *)state __attribute__((swift_name("doCopy(state:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSResultMetaData *state __attribute__((swift_name("state")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultLoadingCompanion")))
@interface KASDKOSResultLoadingCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSResultLoadingCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeParamsSerializers:(KASDKOSKotlinArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *)typeParamsSerializers __attribute__((swift_name("serializer(typeParamsSerializers:)")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeSerial0:(id<KASDKOSKotlinx_serialization_coreKSerializer>)typeSerial0 __attribute__((swift_name("serializer(typeSerial0:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultSuccess")))
@interface KASDKOSResultSuccess<__covariant T> : KASDKOSResult<T>
- (instancetype)initWithData:(T)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSResultSuccessCompanion *companion __attribute__((swift_name("companion")));
- (T)component1 __attribute__((swift_name("component1()")));
- (KASDKOSResultSuccess<T> *)doCopyData:(T)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) T data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultSuccessCompanion")))
@interface KASDKOSResultSuccessCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSResultSuccessCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeParamsSerializers:(KASDKOSKotlinArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *)typeParamsSerializers __attribute__((swift_name("serializer(typeParamsSerializers:)")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeSerial0:(id<KASDKOSKotlinx_serialization_coreKSerializer>)typeSerial0 __attribute__((swift_name("serializer(typeSerial0:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultUnauthorizedError")))
@interface KASDKOSResultUnauthorizedError<__covariant T> : KASDKOSResult<T>
- (instancetype)initWithError:(KASDKOSResultMetaData *)error __attribute__((swift_name("init(error:)"))) __attribute__((objc_designated_initializer));

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSResultUnauthorizedErrorCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSResultMetaData *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSResultUnauthorizedError<T> *)doCopyError:(KASDKOSResultMetaData *)error __attribute__((swift_name("doCopy(error:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSResultMetaData *error __attribute__((swift_name("error")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultUnauthorizedErrorCompanion")))
@interface KASDKOSResultUnauthorizedErrorCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSResultUnauthorizedErrorCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeParamsSerializers:(KASDKOSKotlinArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *)typeParamsSerializers __attribute__((swift_name("serializer(typeParamsSerializers:)")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeSerial0:(id<KASDKOSKotlinx_serialization_coreKSerializer>)typeSerial0 __attribute__((swift_name("serializer(typeSerial0:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultUnknownError")))
@interface KASDKOSResultUnknownError<__covariant T> : KASDKOSResult<T>
- (instancetype)initWithError:(KASDKOSResultMetaData *)error __attribute__((swift_name("init(error:)"))) __attribute__((objc_designated_initializer));

/**
 * Base result class returned from all [Api] calls.
 * Result will wrap various states such as Success, Error, Loading, etc...
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSResultUnknownErrorCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSResultMetaData *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSResultUnknownError<T> *)doCopyError:(KASDKOSResultMetaData *)error __attribute__((swift_name("doCopy(error:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSResultMetaData *error __attribute__((swift_name("error")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultUnknownErrorCompanion")))
@interface KASDKOSResultUnknownErrorCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSResultUnknownErrorCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeParamsSerializers:(KASDKOSKotlinArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *)typeParamsSerializers __attribute__((swift_name("serializer(typeParamsSerializers:)")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeSerial0:(id<KASDKOSKotlinx_serialization_coreKSerializer>)typeSerial0 __attribute__((swift_name("serializer(typeSerial0:)")));
@end;


/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultMetaData")))
@interface KASDKOSResultMetaData : KASDKOSBase
- (instancetype)initWithType:(NSString *)type code:(int32_t)code msg:(NSString *)msg __attribute__((swift_name("init(type:code:msg:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSResultMetaDataCompanion *companion __attribute__((swift_name("companion")));

/** Must match the class name of the Error being returned eg "UnauthorizedError" */
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (int32_t)component2 __attribute__((swift_name("component2()")));
- (NSString *)component3 __attribute__((swift_name("component3()")));

/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
- (KASDKOSResultMetaData *)doCopyType:(NSString *)type code:(int32_t)code msg:(NSString *)msg __attribute__((swift_name("doCopy(type:code:msg:)")));

/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t code __attribute__((swift_name("code")));
@property (readonly) NSString *msg __attribute__((swift_name("msg")));

/** Must match the class name of the Error being returned eg "UnauthorizedError" */
@property (readonly) NSString *type __attribute__((swift_name("type")));
@end;


/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ResultMetaData.Companion")))
@interface KASDKOSResultMetaDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSResultMetaDataCompanion *shared __attribute__((swift_name("shared")));

/**
 * Metadata class used to store serializable information
 * about [Result] states. Any state that is not [Result.Success]
 * should contain metadata.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((swift_name("SerializedResult")))
@interface KASDKOSSerializedResult<__covariant T> : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultIdle")))
@interface KASDKOSSerializedResultIdle : KASDKOSSerializedResult<NSString *>
- (instancetype)initWithState:(NSString *)state __attribute__((swift_name("init(state:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSerializedResultIdleCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSSerializedResultIdle *)doCopyState:(NSString *)state __attribute__((swift_name("doCopy(state:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *state __attribute__((swift_name("state")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultIdle.Companion")))
@interface KASDKOSSerializedResultIdleCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSerializedResultIdleCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultLoading")))
@interface KASDKOSSerializedResultLoading : KASDKOSSerializedResult<NSString *>
- (instancetype)initWithState:(NSString *)state __attribute__((swift_name("init(state:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSerializedResultLoadingCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSSerializedResultLoading *)doCopyState:(NSString *)state __attribute__((swift_name("doCopy(state:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *state __attribute__((swift_name("state")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultLoading.Companion")))
@interface KASDKOSSerializedResultLoadingCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSerializedResultLoadingCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultSuccess")))
@interface KASDKOSSerializedResultSuccess : KASDKOSSerializedResult<NSString *>
- (instancetype)initWithData:(NSString *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSerializedResultSuccessCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSSerializedResultSuccess *)doCopyData:(NSString *)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultSuccess.Companion")))
@interface KASDKOSSerializedResultSuccessCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSerializedResultSuccessCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultUnauthorizedError")))
@interface KASDKOSSerializedResultUnauthorizedError : KASDKOSSerializedResult<NSString *>
- (instancetype)initWithError:(NSString *)error __attribute__((swift_name("init(error:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSerializedResultUnauthorizedErrorCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSSerializedResultUnauthorizedError *)doCopyError:(NSString *)error __attribute__((swift_name("doCopy(error:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *error __attribute__((swift_name("error")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultUnauthorizedError.Companion")))
@interface KASDKOSSerializedResultUnauthorizedErrorCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSerializedResultUnauthorizedErrorCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultUnknownError")))
@interface KASDKOSSerializedResultUnknownError : KASDKOSSerializedResult<NSString *>
- (instancetype)initWithError:(NSString *)error __attribute__((swift_name("init(error:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSerializedResultUnknownErrorCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSSerializedResultUnknownError *)doCopyError:(NSString *)error __attribute__((swift_name("doCopy(error:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *error __attribute__((swift_name("error")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SerializedResultUnknownError.Companion")))
@interface KASDKOSSerializedResultUnknownErrorCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSerializedResultUnknownErrorCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Base class for all Api classes in the SDK. Api classes are the
 * gateway to all functionality in the sdk, and will throw an error
 * if they are accessed before the sdk has been initialized.
 */
__attribute__((swift_name("Api")))
@interface KASDKOSApi : KASDKOSBase
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreFlow")))
@protocol KASDKOSKotlinx_coroutines_coreFlow
@required

/**
 @note This method converts instances of CancellationException to errors.
 Other uncaught Kotlin exceptions are fatal.
*/
- (void)collectCollector:(id<KASDKOSKotlinx_coroutines_coreFlowCollector>)collector completionHandler:(void (^)(KASDKOSKotlinUnit * _Nullable, NSError * _Nullable))completionHandler __attribute__((swift_name("collect(collector:completionHandler:)")));
@end;


/**
 * Common Flow wrapper which can be observed from JVM and Native code
 *
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CFlow")))
@interface KASDKOSCFlow<T> : KASDKOSBase <KASDKOSKotlinx_coroutines_coreFlow>
- (instancetype)initWithOrigin:(id<KASDKOSKotlinx_coroutines_coreFlow>)origin __attribute__((swift_name("init(origin:)"))) __attribute__((objc_designated_initializer));

/**
 @note This method converts instances of CancellationException to errors.
 Other uncaught Kotlin exceptions are fatal.
*/
- (void)collectCollector:(id<KASDKOSKotlinx_coroutines_coreFlowCollector>)collector completionHandler:(void (^)(KASDKOSKotlinUnit * _Nullable, NSError * _Nullable))completionHandler __attribute__((swift_name("collect(collector:completionHandler:)")));

/**
 * Observes the flow for value updates.
 */
- (id<KASDKOSKtor_ioCloseable>)observeBlock:(void (^)(T _Nullable))block __attribute__((swift_name("observe(block:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("MultiRequestApi")))
@interface KASDKOSMultiRequestApi : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (NSMutableArray<KASDKOSResult<KASDKOSModel *> *> *)sendMultiRequestFunctions:(KASDKOSKotlinArray<id<KASDKOSKotlinSuspendFunction0>> *)functions __attribute__((swift_name("sendMultiRequest(functions:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language")))
@interface KASDKOSLanguage : KASDKOSBase
- (instancetype)initWithId:(int32_t)id code:(NSString *)code name:(NSString *)name __attribute__((swift_name("init(id:code:name:)"))) __attribute__((objc_designated_initializer));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (NSString *)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage *)doCopyId:(int32_t)id code:(NSString *)code name:(NSString *)name __attribute__((swift_name("doCopy(id:code:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *code __attribute__((swift_name("code")));
@property (readonly) int32_t id __attribute__((swift_name("id")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end;

__attribute__((swift_name("Translation")))
@interface KASDKOSTranslation : KASDKOSModelOld
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (readonly) KASDKOSLanguage *language __attribute__((swift_name("language")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RewardTranslation")))
@interface KASDKOSRewardTranslation : KASDKOSTranslation
- (instancetype)initWithTitle:(NSString *)title description:(NSString *)description termsAndConditions:(NSString *)termsAndConditions link:(NSString *)link language:(KASDKOSLanguage *)language __attribute__((swift_name("init(title:description:termsAndConditions:link:language:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (NSString *)component3 __attribute__((swift_name("component3()")));
- (NSString *)component4 __attribute__((swift_name("component4()")));
- (KASDKOSLanguage *)component5 __attribute__((swift_name("component5()")));
- (KASDKOSRewardTranslation *)doCopyTitle:(NSString *)title description:(NSString *)description termsAndConditions:(NSString *)termsAndConditions link:(NSString *)link language:(KASDKOSLanguage *)language __attribute__((swift_name("doCopy(title:description:termsAndConditions:link:language:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSLanguage *language __attribute__((swift_name("language")));
@property (readonly) NSString *link __attribute__((swift_name("link")));
@property (readonly) NSString *termsAndConditions __attribute__((swift_name("termsAndConditions")));
@property (readonly) NSString *title __attribute__((swift_name("title")));
@end;

__attribute__((swift_name("Translatable")))
@protocol KASDKOSTranslatable
@required
@property (readonly) NSArray<KASDKOSTranslation *> *translations __attribute__((swift_name("translations")));
@end;


/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
__attribute__((swift_name("Model")))
@interface KASDKOSModel : KASDKOSBase

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSModelCompanion *companion __attribute__((swift_name("companion")));
@end;


/**
 * Represents an empty response. This could be either a successful response
 * or an error - it simply means the http response has no body.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("EmptyResponse")))
@interface KASDKOSEmptyResponse : KASDKOSModel
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Represents an empty response. This could be either a successful response
 * or an error - it simply means the http response has no body.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
+ (instancetype)emptyResponse __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSEmptyResponse *shared __attribute__((swift_name("shared")));
@end;


/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Model.Companion")))
@interface KASDKOSModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializerTypeParamsSerializers:(KASDKOSKotlinArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *)typeParamsSerializers __attribute__((swift_name("serializer(typeParamsSerializers:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("DatabaseDriverFactory")))
@interface KASDKOSDatabaseDriverFactory : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (id<KASDKOSRuntimeSqlDriver>)createDriver __attribute__((swift_name("createDriver()")));
@end;

__attribute__((swift_name("KangarooCache")))
@protocol KASDKOSKangarooCache <KASDKOSRuntimeTransacter>
@required
@property (readonly) id<KASDKOSKangarooCacheQueries> kangarooCacheQueries __attribute__((swift_name("kangarooCacheQueries")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KangarooCacheCompanion")))
@interface KASDKOSKangarooCacheCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKangarooCacheCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKangarooCache>)invokeDriver:(id<KASDKOSRuntimeSqlDriver>)driver __attribute__((swift_name("invoke(driver:)")));
@property (readonly) id<KASDKOSRuntimeSqlDriverSchema> Schema __attribute__((swift_name("Schema")));
@end;


/**
 * Get the business associated with this user account and application [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessApi")))
@interface KASDKOSBusinessApi : KASDKOSApi

/**
 * Get the business associated with this user account and application [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get the business associated with this user account and application [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSBusinessApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get the business associated with this user account and application
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSBusiness *> *> *)getBusinessBusinessId:(NSString *)businessId __attribute__((swift_name("getBusiness(businessId:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSBusiness *> *> *businessState __attribute__((swift_name("businessState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessApi.Companion")))
@interface KASDKOSBusinessApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Branch")))
@interface KASDKOSBranch : KASDKOSBase
- (instancetype)initWithId:(NSString * _Nullable)id name:(NSString * _Nullable)name webSite:(NSString * _Nullable)webSite phone:(KASDKOSBranchPhone * _Nullable)phone logo:(KASDKOSImage * _Nullable)logo coverPhoto:(KASDKOSImage * _Nullable)coverPhoto address:(KASDKOSBranchAddress * _Nullable)address __attribute__((swift_name("init(id:name:webSite:phone:logo:coverPhoto:address:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBranchCompanion *companion __attribute__((swift_name("companion")));

/** Unique ID for this branch */
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));

/** The name of this branch */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The website for this branch */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBranchPhone * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSImage * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSBranchAddress * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSBranch *)doCopyId:(NSString * _Nullable)id name:(NSString * _Nullable)name webSite:(NSString * _Nullable)webSite phone:(KASDKOSBranchPhone * _Nullable)phone logo:(KASDKOSImage * _Nullable)logo coverPhoto:(KASDKOSImage * _Nullable)coverPhoto address:(KASDKOSBranchAddress * _Nullable)address __attribute__((swift_name("doCopy(id:name:webSite:phone:logo:coverPhoto:address:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSBranchAddress * _Nullable address __attribute__((swift_name("address")));
@property (readonly) KASDKOSImage * _Nullable coverPhoto __attribute__((swift_name("coverPhoto")));

/** Unique ID for this branch */
@property (readonly) NSString * _Nullable id __attribute__((swift_name("id")));
@property (readonly) KASDKOSImage * _Nullable logo __attribute__((swift_name("logo")));

/** The name of this branch */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@property (readonly) KASDKOSBranchPhone * _Nullable phone __attribute__((swift_name("phone")));

/** The website for this branch */
@property (readonly) NSString * _Nullable webSite __attribute__((swift_name("webSite")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Branch.Companion")))
@interface KASDKOSBranchCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBranchCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BranchAddress")))
@interface KASDKOSBranchAddress : KASDKOSBase
- (instancetype)initWithFormatted:(NSString * _Nullable)formatted street:(NSString * _Nullable)street city:(NSString * _Nullable)city region:(NSString * _Nullable)region country:(NSString * _Nullable)country lat:(KASDKOSFloat * _Nullable)lat long:(KASDKOSFloat * _Nullable)long_ __attribute__((swift_name("init(formatted:street:city:region:country:lat:long:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBranchAddressCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSFloat * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSFloat * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSBranchAddress *)doCopyFormatted:(NSString * _Nullable)formatted street:(NSString * _Nullable)street city:(NSString * _Nullable)city region:(NSString * _Nullable)region country:(NSString * _Nullable)country lat:(KASDKOSFloat * _Nullable)lat long:(KASDKOSFloat * _Nullable)long_ __attribute__((swift_name("doCopy(formatted:street:city:region:country:lat:long:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable city __attribute__((swift_name("city")));
@property (readonly) NSString * _Nullable country __attribute__((swift_name("country")));
@property (readonly) NSString * _Nullable formatted __attribute__((swift_name("formatted")));
@property (readonly) KASDKOSFloat * _Nullable lat __attribute__((swift_name("lat")));
@property (readonly, getter=long) KASDKOSFloat * _Nullable long_ __attribute__((swift_name("long_")));
@property (readonly) NSString * _Nullable region __attribute__((swift_name("region")));
@property (readonly) NSString * _Nullable street __attribute__((swift_name("street")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BranchAddress.Companion")))
@interface KASDKOSBranchAddressCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBranchAddressCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BranchPhone")))
@interface KASDKOSBranchPhone : KASDKOSBase
- (instancetype)initWithNumber:(NSString * _Nullable)number countryCode:(NSString * _Nullable)countryCode nationalFormat:(NSString * _Nullable)nationalFormat intlFormat:(NSString * _Nullable)intlFormat __attribute__((swift_name("init(number:countryCode:nationalFormat:intlFormat:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBranchPhoneCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSBranchPhone *)doCopyNumber:(NSString * _Nullable)number countryCode:(NSString * _Nullable)countryCode nationalFormat:(NSString * _Nullable)nationalFormat intlFormat:(NSString * _Nullable)intlFormat __attribute__((swift_name("doCopy(number:countryCode:nationalFormat:intlFormat:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));
@property (readonly) NSString * _Nullable intlFormat __attribute__((swift_name("intlFormat")));
@property (readonly) NSString * _Nullable nationalFormat __attribute__((swift_name("nationalFormat")));
@property (readonly) NSString * _Nullable number __attribute__((swift_name("number")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BranchPhone.Companion")))
@interface KASDKOSBranchPhoneCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBranchPhoneCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Business")))
@interface KASDKOSBusiness : KASDKOSModel
- (instancetype)initWithData:(KASDKOSBusinessData *)data include:(KASDKOSBusinessBranchesData *)include __attribute__((swift_name("init(data:include:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSBusinessCompanion *companion __attribute__((swift_name("companion")));

/** Details about a business */
- (KASDKOSBusinessData *)component1 __attribute__((swift_name("component1()")));

/** Details about a business&#39; branches */
- (KASDKOSBusinessBranchesData *)component2 __attribute__((swift_name("component2()")));

/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
- (KASDKOSBusiness *)doCopyData:(KASDKOSBusinessData *)data include:(KASDKOSBusinessBranchesData *)include __attribute__((swift_name("doCopy(data:include:)")));

/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Details about a business */
@property (readonly) KASDKOSBusinessData *data __attribute__((swift_name("data")));

/** Details about a business&#39; branches */
@property (readonly) KASDKOSBusinessBranchesData *include __attribute__((swift_name("include")));
@end;


/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Business.Companion")))
@interface KASDKOSBusinessCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessCompanion *shared __attribute__((swift_name("shared")));

/**
 * Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessBranchesData")))
@interface KASDKOSBusinessBranchesData : KASDKOSBase
- (instancetype)initWithBranches:(NSArray<KASDKOSBranch *> *)branches __attribute__((swift_name("init(branches:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBusinessBranchesDataCompanion *companion __attribute__((swift_name("companion")));
- (NSArray<KASDKOSBranch *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSBusinessBranchesData *)doCopyBranches:(NSArray<KASDKOSBranch *> *)branches __attribute__((swift_name("doCopy(branches:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSBranch *> *branches __attribute__((swift_name("branches")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessBranchesData.Companion")))
@interface KASDKOSBusinessBranchesDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessBranchesDataCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessCategory")))
@interface KASDKOSBusinessCategory : KASDKOSBase
- (instancetype)initWithName:(NSString * _Nullable)name icon:(NSString * _Nullable)icon code:(NSString * _Nullable)code __attribute__((swift_name("init(name:icon:code:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBusinessCategoryCompanion *companion __attribute__((swift_name("companion")));

/** Name of this category */
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));

/** Url to this category&#39;s icon */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Unique ategory code for this category */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (KASDKOSBusinessCategory *)doCopyName:(NSString * _Nullable)name icon:(NSString * _Nullable)icon code:(NSString * _Nullable)code __attribute__((swift_name("doCopy(name:icon:code:)")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Unique ategory code for this category */
@property (readonly) NSString * _Nullable code __attribute__((swift_name("code")));

/** Url to this category&#39;s icon */
@property (readonly) NSString * _Nullable icon __attribute__((swift_name("icon")));

/** Name of this category */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;


/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessCategory.Companion")))
@interface KASDKOSBusinessCategoryCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessCategoryCompanion *shared __attribute__((swift_name("shared")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessData")))
@interface KASDKOSBusinessData : KASDKOSBase
- (instancetype)initWithId:(NSString *)id name:(NSString * _Nullable)name loyaltyType:(NSString * _Nullable)loyaltyType conglomerate:(NSString * _Nullable)conglomerate whiteLabel:(NSString * _Nullable)whiteLabel about:(NSString * _Nullable)about logo:(KASDKOSImage * _Nullable)logo logoTransparentBackground:(KASDKOSImage * _Nullable)logoTransparentBackground coverPhoto:(KASDKOSImage * _Nullable)coverPhoto category:(KASDKOSBusinessCategory * _Nullable)category __attribute__((swift_name("init(id:name:loyaltyType:conglomerate:whiteLabel:about:logo:logoTransparentBackground:coverPhoto:category:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBusinessDataCompanion *companion __attribute__((swift_name("companion")));

/** Unique business ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSBusinessCategory * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The name of this business */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The manner in which this business rewards its customers. This can be by purchase amount of by visit to the store  */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** Whether this is a conglomerate business. Conglomerate businesses are umbrellas for multiple business&#39; in Kangaroo  */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this is a white label business. White label business&#39; don&#39;t appear in the Kangaroo Mobile Customer app, as they usually have their own app.  */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** General about text for the business */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSImage * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSImage * _Nullable)component8 __attribute__((swift_name("component8()")));
- (KASDKOSImage * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSBusinessData *)doCopyId:(NSString *)id name:(NSString * _Nullable)name loyaltyType:(NSString * _Nullable)loyaltyType conglomerate:(NSString * _Nullable)conglomerate whiteLabel:(NSString * _Nullable)whiteLabel about:(NSString * _Nullable)about logo:(KASDKOSImage * _Nullable)logo logoTransparentBackground:(KASDKOSImage * _Nullable)logoTransparentBackground coverPhoto:(KASDKOSImage * _Nullable)coverPhoto category:(KASDKOSBusinessCategory * _Nullable)category __attribute__((swift_name("doCopy(id:name:loyaltyType:conglomerate:whiteLabel:about:logo:logoTransparentBackground:coverPhoto:category:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** General about text for the business */
@property (readonly) NSString * _Nullable about __attribute__((swift_name("about")));
@property (readonly) KASDKOSBusinessCategory * _Nullable category __attribute__((swift_name("category")));

/** Whether this is a conglomerate business. Conglomerate businesses are umbrellas for multiple business&#39; in Kangaroo  */
@property (readonly) NSString * _Nullable conglomerate __attribute__((swift_name("conglomerate")));
@property (readonly) KASDKOSImage * _Nullable coverPhoto __attribute__((swift_name("coverPhoto")));

/** Unique business ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));
@property (readonly) KASDKOSImage * _Nullable logo __attribute__((swift_name("logo")));
@property (readonly) KASDKOSImage * _Nullable logoTransparentBackground __attribute__((swift_name("logoTransparentBackground")));

/** The manner in which this business rewards its customers. This can be by purchase amount of by visit to the store  */
@property (readonly) NSString * _Nullable loyaltyType __attribute__((swift_name("loyaltyType")));

/** The name of this business */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));

/** Whether this is a white label business. White label business&#39; don&#39;t appear in the Kangaroo Mobile Customer app, as they usually have their own app.  */
@property (readonly) NSString * _Nullable whiteLabel __attribute__((swift_name("whiteLabel")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessData.Companion")))
@interface KASDKOSBusinessDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessDataCompanion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image")))
@interface KASDKOSImage : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImageCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image.Companion")))
@interface KASDKOSImageCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImageCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Register a new user. Either a phone number or an email address is required. [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRegistrationApi")))
@interface KASDKOSUserRegistrationApi : KASDKOSApi

/**
 * Register a new user. Either a phone number or an email address is required. [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Register a new user. Either a phone number or an email address is required. [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserRegistrationApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Register a new user. Either a phone number or an email address is required.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel *> *> *)createAccountEmail:(NSString * _Nullable)email phone:(NSString * _Nullable)phone countryCode:(NSString * _Nullable)countryCode language:(NSString * _Nullable)language __attribute__((swift_name("createAccount(email:phone:countryCode:language:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel *> *> *userRegistrationState __attribute__((swift_name("userRegistrationState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRegistrationApi.Companion")))
@interface KASDKOSUserRegistrationApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserRegistrationApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData")))
@interface KASDKOSUserProfileData : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileDataCompanion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData.Companion")))
@interface KASDKOSUserProfileDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileDataCompanion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel")))
@interface KASDKOSUserProfileModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProfileModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains the new users profile data */
- (KASDKOSUserProfileData *)component1 __attribute__((swift_name("component1()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileModel *)doCopyData:(KASDKOSUserProfileData *)data __attribute__((swift_name("doCopy(data:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains the new users profile data */
@property (readonly) KASDKOSUserProfileData *data __attribute__((swift_name("data")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel.Companion")))
@interface KASDKOSUserProfileModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Request a PIN reset. Either a phone number or email address is required If successful, a verification code will be sent by either email or SMS message.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinResetRequestApi")))
@interface KASDKOSUserPinResetRequestApi : KASDKOSApi

/**
 * Request a PIN reset. Either a phone number or email address is required If successful, a verification code will be sent by either email or SMS message.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Request a PIN reset. Either a phone number or email address is required If successful, a verification code will be sent by either email or SMS message.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserPinResetRequestApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Request a PIN reset. Either a phone number or email address is required If successful, a verification code will be sent by either email or SMS message.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserPinResetRequest *> *> *)requestPinResetMode:(NSString *)mode email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone countryCode:(NSString * _Nullable)countryCode __attribute__((swift_name("requestPinReset(mode:email:phone:countryCode:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserPinResetRequest *> *> *userPinResetRequestState __attribute__((swift_name("userPinResetRequestState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinResetRequestApi.Companion")))
@interface KASDKOSUserPinResetRequestApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserPinResetRequestApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * User PIN reset request status
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinResetRequest")))
@interface KASDKOSUserPinResetRequest : KASDKOSModel
- (instancetype)initWithStatusCode:(int32_t)statusCode message:(NSString *)message description:(NSString *)description __attribute__((swift_name("init(statusCode:message:description:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserPinResetRequestCompanion *companion __attribute__((swift_name("companion")));

/** The response code for the pin reset request. Anything within the 200 range indicates a success  */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The message and status returned by the pin reset request */
- (NSString *)component2 __attribute__((swift_name("component2()")));

/** A description of the pin reset request */
- (NSString *)component3 __attribute__((swift_name("component3()")));

/**
 * User PIN reset request status
 */
- (KASDKOSUserPinResetRequest *)doCopyStatusCode:(int32_t)statusCode message:(NSString *)message description:(NSString *)description __attribute__((swift_name("doCopy(statusCode:message:description:)")));

/**
 * User PIN reset request status
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User PIN reset request status
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User PIN reset request status
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** A description of the pin reset request */
@property (readonly) NSString *description_ __attribute__((swift_name("description_")));

/** The message and status returned by the pin reset request */
@property (readonly) NSString *message __attribute__((swift_name("message")));

/** The response code for the pin reset request. Anything within the 200 range indicates a success  */
@property (readonly) int32_t statusCode __attribute__((swift_name("statusCode")));
@end;


/**
 * User PIN reset request status
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinResetRequest.Companion")))
@interface KASDKOSUserPinResetRequestCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User PIN reset request status
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserPinResetRequestCompanion *shared __attribute__((swift_name("shared")));

/**
 * User PIN reset request status
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Notify Kangaroo that an offer has been shared to facebook [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferFacebookShareApi")))
@interface KASDKOSOfferFacebookShareApi : KASDKOSApi

/**
 * Notify Kangaroo that an offer has been shared to facebook [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Notify Kangaroo that an offer has been shared to facebook [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSOfferFacebookShareApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Notify Kangaroo that an offer has been shared to facebook
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel_ *> *> *)postOfferFacebookShareOfferId:(NSString *)offerId include:(NSString *)include facebookUserId:(NSString *)facebookUserId type:(NSString *)type friendsCount:(NSString *)friendsCount __attribute__((swift_name("postOfferFacebookShare(offerId:include:facebookUserId:type:friendsCount:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel_ *> *> *offerFacebookShareState __attribute__((swift_name("offerFacebookShareState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferFacebookShareApi.Companion")))
@interface KASDKOSOfferFacebookShareApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferFacebookShareApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData")))
@interface KASDKOSUserProfileBalanceData : KASDKOSBase
- (instancetype)initWithPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("init(points:giftcard:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileBalanceDataCompanion *companion __attribute__((swift_name("companion")));

/** The number of points this user currently has. */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** The amount of store credit in the users&#39; e-wallet. */
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile balance data
 */
- (KASDKOSUserProfileBalanceData *)doCopyPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("doCopy(points:giftcard:)")));

/**
 * User Profile balance data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile balance data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile balance data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount of store credit in the users&#39; e-wallet. */
@property (readonly) KASDKOSDouble * _Nullable giftcard __attribute__((swift_name("giftcard")));

/** The number of points this user currently has. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData.Companion")))
@interface KASDKOSUserProfileBalanceDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile balance data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileBalanceDataCompanion *shared __attribute__((swift_name("shared")));

/**
 * User Profile balance data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData_")))
@interface KASDKOSUserProfileData_ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData_Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData_ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData_.Companion")))
@interface KASDKOSUserProfileData_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData_Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude")))
@interface KASDKOSUserProfileInclude : KASDKOSBase
- (instancetype)initWithBalance:(KASDKOSUserProfileBalanceData *)balance __attribute__((swift_name("init(balance:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileIncludeCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSUserProfileBalanceData *)component1 __attribute__((swift_name("component1()")));

/**
 * Extra user profile data
 */
- (KASDKOSUserProfileInclude *)doCopyBalance:(KASDKOSUserProfileBalanceData *)balance __attribute__((swift_name("doCopy(balance:)")));

/**
 * Extra user profile data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Extra user profile data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Extra user profile data
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSUserProfileBalanceData *balance __attribute__((swift_name("balance")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude.Companion")))
@interface KASDKOSUserProfileIncludeCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Extra user profile data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileIncludeCompanion *shared __attribute__((swift_name("shared")));

/**
 * Extra user profile data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel_")))
@interface KASDKOSUserProfileModel_ : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData_ *)data included:(KASDKOSUserProfileInclude * _Nullable)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProfileModel_Companion *companion __attribute__((swift_name("companion")));

/** Contains all user profile data */
- (KASDKOSUserProfileData_ *)component1 __attribute__((swift_name("component1()")));

/** Contains user balance data */
- (KASDKOSUserProfileInclude * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileModel_ *)doCopyData:(KASDKOSUserProfileData_ *)data included:(KASDKOSUserProfileInclude * _Nullable)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user profile data */
@property (readonly) KASDKOSUserProfileData_ *data __attribute__((swift_name("data")));

/** Contains user balance data */
@property (readonly) KASDKOSUserProfileInclude * _Nullable included __attribute__((swift_name("included")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel_.Companion")))
@interface KASDKOSUserProfileModel_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileModel_Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get user A la carte list [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AlaCarteProductsApi")))
@interface KASDKOSAlaCarteProductsApi : KASDKOSApi

/**
 * Get user A la carte list [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get user A la carte list [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSAlaCarteProductsApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get user A la carte list
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSAlaCarteProductsModel *> *> *)getAlaCarteProducts __attribute__((swift_name("getAlaCarteProducts()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSAlaCarteProductsModel *> *> *alaCarteProductsState __attribute__((swift_name("alaCarteProductsState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AlaCarteProductsApi.Companion")))
@interface KASDKOSAlaCarteProductsApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSAlaCarteProductsApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AlaCarteItemModel")))
@interface KASDKOSAlaCarteItemModel : KASDKOSModel
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id points:(KASDKOSInt * _Nullable)points product:(KASDKOSProductItemModel * _Nullable)product __attribute__((swift_name("init(id:points:product:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSAlaCarteItemModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));
- (KASDKOSProductItemModel * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSAlaCarteItemModel *)doCopyId:(KASDKOSInt * _Nullable)id points:(KASDKOSInt * _Nullable)points product:(KASDKOSProductItemModel * _Nullable)product __attribute__((swift_name("doCopy(id:points:product:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) KASDKOSInt * _Nullable points __attribute__((swift_name("points")));
@property (readonly) KASDKOSProductItemModel * _Nullable product __attribute__((swift_name("product")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AlaCarteItemModel.Companion")))
@interface KASDKOSAlaCarteItemModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSAlaCarteItemModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User A la carte products model class containing user A la carte list
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AlaCarteProductsModel")))
@interface KASDKOSAlaCarteProductsModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData__ *)data included:(KASDKOSUserAlaCarteIncluded *)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSAlaCarteProductsModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains all user data */
- (KASDKOSUserProfileData__ *)component1 __attribute__((swift_name("component1()")));

/** Contains all A la carte items */
- (KASDKOSUserAlaCarteIncluded *)component2 __attribute__((swift_name("component2()")));

/**
 * User A la carte products model class containing user A la carte list
 */
- (KASDKOSAlaCarteProductsModel *)doCopyData:(KASDKOSUserProfileData__ *)data included:(KASDKOSUserAlaCarteIncluded *)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User A la carte products model class containing user A la carte list
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User A la carte products model class containing user A la carte list
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User A la carte products model class containing user A la carte list
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user data */
@property (readonly) KASDKOSUserProfileData__ *data __attribute__((swift_name("data")));

/** Contains all A la carte items */
@property (readonly) KASDKOSUserAlaCarteIncluded *included __attribute__((swift_name("included")));
@end;


/**
 * User A la carte products model class containing user A la carte list
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("AlaCarteProductsModel.Companion")))
@interface KASDKOSAlaCarteProductsModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User A la carte products model class containing user A la carte list
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSAlaCarteProductsModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * User A la carte products model class containing user A la carte list
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error")))
@interface KASDKOSError : KASDKOSBase
- (instancetype)initWithCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("init(code:message:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSErrorCompanion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSError *)doCopyCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("doCopy(code:message:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t code __attribute__((swift_name("code")));
@property (readonly) NSString *message __attribute__((swift_name("message")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error.Companion")))
@interface KASDKOSErrorCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSErrorCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Images")))
@interface KASDKOSImages : KASDKOSBase
- (instancetype)initWithPath:(NSString * _Nullable)path large:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(path:large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImagesCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSImages *)doCopyPath:(NSString * _Nullable)path large:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(path:large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable path __attribute__((swift_name("path")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Images.Companion")))
@interface KASDKOSImagesCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImagesCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language_")))
@interface KASDKOSLanguage_ : KASDKOSBase
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage_Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage_ *)doCopyId:(KASDKOSInt * _Nullable)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language_.Companion")))
@interface KASDKOSLanguage_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Languages")))
@interface KASDKOSLanguages : KASDKOSBase
- (instancetype)initWithLanguageId:(KASDKOSInt * _Nullable)languageId title:(NSString * _Nullable)title description:(NSString * _Nullable)description language:(KASDKOSLanguage_ * _Nullable)language __attribute__((swift_name("init(languageId:title:description:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguagesCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage_ * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSLanguages *)doCopyLanguageId:(KASDKOSInt * _Nullable)languageId title:(NSString * _Nullable)title description:(NSString * _Nullable)description language:(KASDKOSLanguage_ * _Nullable)language __attribute__((swift_name("doCopy(languageId:title:description:language:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSLanguage_ * _Nullable language __attribute__((swift_name("language")));
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Languages.Companion")))
@interface KASDKOSLanguagesCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguagesCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ProductItemModel")))
@interface KASDKOSProductItemModel : KASDKOSModel
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id title:(NSString * _Nullable)title description:(NSString * _Nullable)description images:(NSArray<KASDKOSImages *> * _Nullable)images productSku:(NSString * _Nullable)productSku termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link productLanguages:(NSArray<KASDKOSLanguages *> * _Nullable)productLanguages __attribute__((swift_name("init(id:title:description:images:productSku:termsConditions:link:productLanguages:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSProductItemModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSArray<KASDKOSImages *> * _Nullable)component4 __attribute__((swift_name("component4()")));
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));
- (NSArray<KASDKOSLanguages *> * _Nullable)component8 __attribute__((swift_name("component8()")));
- (KASDKOSProductItemModel *)doCopyId:(KASDKOSInt * _Nullable)id title:(NSString * _Nullable)title description:(NSString * _Nullable)description images:(NSArray<KASDKOSImages *> * _Nullable)images productSku:(NSString * _Nullable)productSku termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link productLanguages:(NSArray<KASDKOSLanguages *> * _Nullable)productLanguages __attribute__((swift_name("doCopy(id:title:description:images:productSku:termsConditions:link:productLanguages:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) NSArray<KASDKOSImages *> * _Nullable images __attribute__((swift_name("images")));
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));
@property (readonly) NSArray<KASDKOSLanguages *> * _Nullable productLanguages __attribute__((swift_name("productLanguages")));
@property (readonly) NSString * _Nullable productSku __attribute__((swift_name("productSku")));
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ProductItemModel.Companion")))
@interface KASDKOSProductItemModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSProductItemModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserAlaCarteIncluded")))
@interface KASDKOSUserAlaCarteIncluded : KASDKOSBase
- (instancetype)initWithProductRewards:(NSArray<KASDKOSAlaCarteItemModel *> *)productRewards __attribute__((swift_name("init(productRewards:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserAlaCarteIncludedCompanion *companion __attribute__((swift_name("companion")));
- (NSArray<KASDKOSAlaCarteItemModel *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSUserAlaCarteIncluded *)doCopyProductRewards:(NSArray<KASDKOSAlaCarteItemModel *> *)productRewards __attribute__((swift_name("doCopy(productRewards:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSAlaCarteItemModel *> *productRewards __attribute__((swift_name("productRewards")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserAlaCarteIncluded.Companion")))
@interface KASDKOSUserAlaCarteIncludedCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserAlaCarteIncludedCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData__")))
@interface KASDKOSUserProfileData__ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData__Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData__ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData__.Companion")))
@interface KASDKOSUserProfileData__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData__Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get Social Media List [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaApi")))
@interface KASDKOSSocialMediaApi : KASDKOSApi

/**
 * Get Social Media List [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get Social Media List [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSSocialMediaApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get Social Media List
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSSocialMediaModel *> *> *)getSocialMedia __attribute__((swift_name("getSocialMedia()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSSocialMediaModel *> *> *socialMediaState __attribute__((swift_name("socialMediaState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaApi.Companion")))
@interface KASDKOSSocialMediaApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSocialMediaApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error_")))
@interface KASDKOSError_ : KASDKOSBase
- (instancetype)initWithCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("init(code:message:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSError_Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSError_ *)doCopyCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("doCopy(code:message:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t code __attribute__((swift_name("code")));
@property (readonly) NSString *message __attribute__((swift_name("message")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error_.Companion")))
@interface KASDKOSError_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSError_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaIncluded")))
@interface KASDKOSSocialMediaIncluded : KASDKOSBase
- (instancetype)initWithSocialMedia:(NSArray<KASDKOSSocialMediaItemModel *> *)socialMedia __attribute__((swift_name("init(socialMedia:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSSocialMediaIncludedCompanion *companion __attribute__((swift_name("companion")));
- (NSArray<KASDKOSSocialMediaItemModel *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSSocialMediaIncluded *)doCopySocialMedia:(NSArray<KASDKOSSocialMediaItemModel *> *)socialMedia __attribute__((swift_name("doCopy(socialMedia:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSSocialMediaItemModel *> *socialMedia __attribute__((swift_name("socialMedia")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaIncluded.Companion")))
@interface KASDKOSSocialMediaIncludedCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSocialMediaIncludedCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaItemModel")))
@interface KASDKOSSocialMediaItemModel : KASDKOSModel
- (instancetype)initWithIcon:(NSString * _Nullable)icon url:(NSString * _Nullable)url __attribute__((swift_name("init(icon:url:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSocialMediaItemModelCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (KASDKOSSocialMediaItemModel *)doCopyIcon:(NSString * _Nullable)icon url:(NSString * _Nullable)url __attribute__((swift_name("doCopy(icon:url:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable icon __attribute__((swift_name("icon")));
@property (readonly) NSString * _Nullable url __attribute__((swift_name("url")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaItemModel.Companion")))
@interface KASDKOSSocialMediaItemModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSocialMediaItemModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Social Media Model containing list of all social media links
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaModel")))
@interface KASDKOSSocialMediaModel : KASDKOSModel
- (instancetype)initWithIncluded:(KASDKOSSocialMediaIncluded * _Nullable)included __attribute__((swift_name("init(included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSSocialMediaModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains all Social media links */
- (KASDKOSSocialMediaIncluded * _Nullable)component1 __attribute__((swift_name("component1()")));

/**
 * Social Media Model containing list of all social media links
 */
- (KASDKOSSocialMediaModel *)doCopyIncluded:(KASDKOSSocialMediaIncluded * _Nullable)included __attribute__((swift_name("doCopy(included:)")));

/**
 * Social Media Model containing list of all social media links
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Social Media Model containing list of all social media links
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Social Media Model containing list of all social media links
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all Social media links */
@property (readonly) KASDKOSSocialMediaIncluded * _Nullable included __attribute__((swift_name("included")));
@end;


/**
 * Social Media Model containing list of all social media links
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("SocialMediaModel.Companion")))
@interface KASDKOSSocialMediaModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Social Media Model containing list of all social media links
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSSocialMediaModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * Social Media Model containing list of all social media links
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Update a users' PIN [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinUpdateApi")))
@interface KASDKOSUserPinUpdateApi : KASDKOSApi

/**
 * Update a users' PIN [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Update a users' PIN [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserPinUpdateApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Update a users' PIN
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel__ *> *> *)updatePinUpdatePinRequest:(KASDKOSUpdatePinRequest *)updatePinRequest __attribute__((swift_name("updatePin(updatePinRequest:)")));
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel__ *> *> *)updatePinMethods:(NSDictionary<NSString *, id> *)methods __attribute__((swift_name("updatePin(methods:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel__ *> *> *userPinUpdateState __attribute__((swift_name("userPinUpdateState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinUpdateApi.Companion")))
@interface KASDKOSUserPinUpdateApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserPinUpdateApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UpdatePinRequest")))
@interface KASDKOSUpdatePinRequest : KASDKOSBase
- (instancetype)initWithPinCode:(NSString *)pinCode __attribute__((swift_name("init(pinCode:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUpdatePinRequestCompanion *companion __attribute__((swift_name("companion")));

/** The new PIN */
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSUpdatePinRequest *)doCopyPinCode:(NSString *)pinCode __attribute__((swift_name("doCopy(pinCode:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** The new PIN */
@property (readonly) NSString *pinCode __attribute__((swift_name("pinCode")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UpdatePinRequest.Companion")))
@interface KASDKOSUpdatePinRequestCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUpdatePinRequestCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData_")))
@interface KASDKOSUserProfileBalanceData_ : KASDKOSBase
- (instancetype)initWithPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("init(points:giftcard:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileBalanceData_Companion *companion __attribute__((swift_name("companion")));

/** The number of points this user currently has. */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** The amount of store credit in the users&#39; e-wallet. */
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile balance data
 */
- (KASDKOSUserProfileBalanceData_ *)doCopyPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("doCopy(points:giftcard:)")));

/**
 * User Profile balance data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile balance data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile balance data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount of store credit in the users&#39; e-wallet. */
@property (readonly) KASDKOSDouble * _Nullable giftcard __attribute__((swift_name("giftcard")));

/** The number of points this user currently has. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData_.Companion")))
@interface KASDKOSUserProfileBalanceData_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile balance data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileBalanceData_Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile balance data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData___")))
@interface KASDKOSUserProfileData___ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData___Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData___ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData___.Companion")))
@interface KASDKOSUserProfileData___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData___Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude_")))
@interface KASDKOSUserProfileInclude_ : KASDKOSBase
- (instancetype)initWithBalance:(KASDKOSUserProfileBalanceData_ *)balance __attribute__((swift_name("init(balance:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileInclude_Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSUserProfileBalanceData_ *)component1 __attribute__((swift_name("component1()")));

/**
 * Extra user profile data
 */
- (KASDKOSUserProfileInclude_ *)doCopyBalance:(KASDKOSUserProfileBalanceData_ *)balance __attribute__((swift_name("doCopy(balance:)")));

/**
 * Extra user profile data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Extra user profile data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Extra user profile data
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSUserProfileBalanceData_ *balance __attribute__((swift_name("balance")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude_.Companion")))
@interface KASDKOSUserProfileInclude_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Extra user profile data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileInclude_Companion *shared __attribute__((swift_name("shared")));

/**
 * Extra user profile data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel__")))
@interface KASDKOSUserProfileModel__ : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData___ *)data included:(KASDKOSUserProfileInclude_ * _Nullable)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProfileModel__Companion *companion __attribute__((swift_name("companion")));

/** Contains all user profile data */
- (KASDKOSUserProfileData___ *)component1 __attribute__((swift_name("component1()")));

/** Contains user balance data */
- (KASDKOSUserProfileInclude_ * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileModel__ *)doCopyData:(KASDKOSUserProfileData___ *)data included:(KASDKOSUserProfileInclude_ * _Nullable)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user profile data */
@property (readonly) KASDKOSUserProfileData___ *data __attribute__((swift_name("data")));

/** Contains user balance data */
@property (readonly) KASDKOSUserProfileInclude_ * _Nullable included __attribute__((swift_name("included")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel__.Companion")))
@interface KASDKOSUserProfileModel__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileModel__Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get transaction history this user. [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserTransactionHistoryApi")))
@interface KASDKOSUserTransactionHistoryApi : KASDKOSApi

/**
 * Get transaction history this user. [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get transaction history this user. [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserTransactionHistoryApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get transaction history this user.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserTransactionHistoryModel *> *> *)getUserTransactionHistory __attribute__((swift_name("getUserTransactionHistory()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserTransactionHistoryModel *> *> *userTransactionHistoryState __attribute__((swift_name("userTransactionHistoryState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserTransactionHistoryApi.Companion")))
@interface KASDKOSUserTransactionHistoryApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserTransactionHistoryApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * Transaction model containting transaction details
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Transaction")))
@interface KASDKOSTransaction : KASDKOSBase
- (instancetype)initWithId:(int64_t)id amount:(KASDKOSDouble * _Nullable)amount points:(KASDKOSDouble * _Nullable)points name:(NSString * _Nullable)name transactionType:(KASDKOSInt * _Nullable)transactionType createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt __attribute__((swift_name("init(id:amount:points:name:transactionType:createdAt:updatedAt:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransactionCompanion *companion __attribute__((swift_name("companion")));

/** Unique transaction ID. */
- (int64_t)component1 __attribute__((swift_name("component1()")));

/** The amount in $ for this transaction. */
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The amount in points for this transaction. */
- (KASDKOSDouble * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The transaction label. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The transaction type ID. */
- (KASDKOSInt * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Date the transaction was created. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Date the transaction was last updated. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/**
 * Transaction model containting transaction details
 */
- (KASDKOSTransaction *)doCopyId:(int64_t)id amount:(KASDKOSDouble * _Nullable)amount points:(KASDKOSDouble * _Nullable)points name:(NSString * _Nullable)name transactionType:(KASDKOSInt * _Nullable)transactionType createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt __attribute__((swift_name("doCopy(id:amount:points:name:transactionType:createdAt:updatedAt:)")));

/**
 * Transaction model containting transaction details
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Transaction model containting transaction details
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Transaction model containting transaction details
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount in $ for this transaction. */
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));

/** Date the transaction was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Unique transaction ID. */
@property (readonly) int64_t id __attribute__((swift_name("id")));

/** The transaction label. */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));

/** The amount in points for this transaction. */
@property (readonly) KASDKOSDouble * _Nullable points __attribute__((swift_name("points")));

/** The transaction type ID. */
@property (readonly) KASDKOSInt * _Nullable transactionType __attribute__((swift_name("transactionType")));

/** Date the transaction was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * Transaction model containting transaction details
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Transaction.Companion")))
@interface KASDKOSTransactionCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Transaction model containting transaction details
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransactionCompanion *shared __attribute__((swift_name("shared")));

/**
 * Transaction model containting transaction details
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserTransactionHistoryModel")))
@interface KASDKOSUserTransactionHistoryModel : KASDKOSModel
- (instancetype)initWithData:(NSArray<KASDKOSTransaction *> *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserTransactionHistoryModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains user transaction history. */
- (NSArray<KASDKOSTransaction *> *)component1 __attribute__((swift_name("component1()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserTransactionHistoryModel *)doCopyData:(NSArray<KASDKOSTransaction *> *)data __attribute__((swift_name("doCopy(data:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains user transaction history. */
@property (readonly) NSArray<KASDKOSTransaction *> *data __attribute__((swift_name("data")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserTransactionHistoryModel.Companion")))
@interface KASDKOSUserTransactionHistoryModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserTransactionHistoryModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Recall a transfer. This could be a points transfer, e-wallet transfer, or a gift card  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferRecallApi")))
@interface KASDKOSTransferRecallApi : KASDKOSApi

/**
 * Recall a transfer. This could be a points transfer, e-wallet transfer, or a gift card  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Recall a transfer. This could be a points transfer, e-wallet transfer, or a gift card  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSTransferRecallApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Recall a transfer. This could be a points transfer, e-wallet transfer, or a gift card
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSTransferRecallResultModel *> *> *)recallTransferRecallId:(NSString *)recallId __attribute__((swift_name("recallTransfer(recallId:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSTransferRecallResultModel *> *> *transferRecallState __attribute__((swift_name("transferRecallState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferRecallApi.Companion")))
@interface KASDKOSTransferRecallApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferRecallApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image_")))
@interface KASDKOSImage_ : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImage_Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage_ *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image_.Companion")))
@interface KASDKOSImage_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImage_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language__")))
@interface KASDKOSLanguage__ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage__Companion *companion __attribute__((swift_name("companion")));

/** The Kangaroo ID of this language. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The full name of this language (English, French, Spanish) */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage__ *)doCopyId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));

/** The Kangaroo ID of this language. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The full name of this language (English, French, Spanish) */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language__.Companion")))
@interface KASDKOSLanguage__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage__Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction")))
@interface KASDKOSOfferAction : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferActionCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSOfferAction *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction.Companion")))
@interface KASDKOSOfferActionCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferActionCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel")))
@interface KASDKOSOfferModel : KASDKOSModel
- (instancetype)initWithId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage_ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction *> * _Nullable)actions __attribute__((swift_name("init(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSOfferModelCompanion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The minimum purchase amount for this offer to be applied */
- (KASDKOSDouble * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The maximum purchase amount for this offer to be applied. */
- (KASDKOSDouble * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
- (KASDKOSBoolean * _Nullable)component12 __attribute__((swift_name("component12()")));
- (KASDKOSInt * _Nullable)component13 __attribute__((swift_name("component13()")));
- (NSArray<NSString *> * _Nullable)component14 __attribute__((swift_name("component14()")));
- (NSString * _Nullable)component15 __attribute__((swift_name("component15()")));
- (NSString * _Nullable)component16 __attribute__((swift_name("component16()")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
- (NSString * _Nullable)component17 __attribute__((swift_name("component17()")));

/** The offer title. */
- (NSString * _Nullable)component18 __attribute__((swift_name("component18()")));

/** The offer description. */
- (NSString * _Nullable)component19 __attribute__((swift_name("component19()")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The unique slug for this offer */
- (NSString * _Nullable)component20 __attribute__((swift_name("component20()")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
- (NSArray<KASDKOSImage_ *> * _Nullable)component21 __attribute__((swift_name("component21()")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
- (KASDKOSBoolean * _Nullable)component22 __attribute__((swift_name("component22()")));

/** The terms and conditions attached to this offer. */
- (NSString * _Nullable)component23 __attribute__((swift_name("component23()")));

/** The external link attached to this offer. */
- (NSString * _Nullable)component24 __attribute__((swift_name("component24()")));

/** A list of translations of this offer into different languages. */
- (NSArray<KASDKOSOfferTranslation *> * _Nullable)component25 __attribute__((swift_name("component25()")));

/** A list of possible actions to perform on this offer. */
- (NSArray<KASDKOSOfferAction *> * _Nullable)component26 __attribute__((swift_name("component26()")));

/** The publication date of this offer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The expiration date of this offer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this offer is currently published or not. */
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
- (KASDKOSBoolean * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The real value  (in $) of this offer */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The discount value (in $) of this offer */
- (KASDKOSDouble * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
- (KASDKOSDouble * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSOfferModel *)doCopyId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage_ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction *> * _Nullable)actions __attribute__((swift_name("doCopy(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of possible actions to perform on this offer. */
@property (readonly) NSArray<KASDKOSOfferAction *> * _Nullable actions __attribute__((swift_name("actions")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
@property (readonly) KASDKOSBoolean * _Nullable appsOnly __attribute__((swift_name("appsOnly")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
@property (readonly) KASDKOSBoolean * _Nullable couponConvertible __attribute__((swift_name("couponConvertible")));

/** The offer description. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));

/** The discount value (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable discountValue __attribute__((swift_name("discountValue")));

/** The expiration date of this offer. */
@property (readonly) NSString * _Nullable expiresAt __attribute__((swift_name("expiresAt")));
@property (readonly) NSArray<NSString *> * _Nullable freqDetails __attribute__((swift_name("freqDetails")));

/** A unique ID identifying this reward */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
@property (readonly) NSArray<KASDKOSImage_ *> * _Nullable images __attribute__((swift_name("images")));

/** Whether this offer is currently published or not. */
@property (readonly) KASDKOSBoolean * _Nullable isPublished __attribute__((swift_name("isPublished")));

/** The external link attached to this offer. */
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));

/** The maximum purchase amount for this offer to be applied. */
@property (readonly) KASDKOSDouble * _Nullable maxPurchase __attribute__((swift_name("maxPurchase")));

/** The minimum purchase amount for this offer to be applied */
@property (readonly) KASDKOSDouble * _Nullable minPurchase __attribute__((swift_name("minPurchase")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
@property (readonly) KASDKOSDouble * _Nullable multipFactor __attribute__((swift_name("multipFactor")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
@property (readonly) KASDKOSBoolean * _Nullable neverExpiresFlag __attribute__((swift_name("neverExpiresFlag")));
@property (readonly) KASDKOSInt * _Nullable offerFrequencyId __attribute__((swift_name("offerFrequencyId")));

/** A list of translations of this offer into different languages. */
@property (readonly) NSArray<KASDKOSOfferTranslation *> * _Nullable offerLanguages __attribute__((swift_name("offerLanguages")));
@property (readonly) NSString * _Nullable peakFrom __attribute__((swift_name("peakFrom")));
@property (readonly) NSString * _Nullable peakTo __attribute__((swift_name("peakTo")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The publication date of this offer. */
@property (readonly) NSString * _Nullable publishAt __attribute__((swift_name("publishAt")));

/** The real value  (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable realValue __attribute__((swift_name("realValue")));

/** The unique slug for this offer */
@property (readonly) NSString * _Nullable slug __attribute__((swift_name("slug")));

/** The terms and conditions attached to this offer. */
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));

/** The offer title. */
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel.Companion")))
@interface KASDKOSOfferModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation")))
@interface KASDKOSOfferTranslation : KASDKOSBase
- (instancetype)initWithId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage__ * _Nullable)language __attribute__((swift_name("init(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferTranslationCompanion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The ID of this specific translation */
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The translated offer title. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The translated offer description. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The translated offer terms and conditions. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The language appropriate link of this offer. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The language for which this translation applies. */
- (KASDKOSLanguage__ * _Nullable)component7 __attribute__((swift_name("component7()")));

/**
 * A language translation of this offer.
 */
- (KASDKOSOfferTranslation *)doCopyId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage__ * _Nullable)language __attribute__((swift_name("doCopy(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)")));

/**
 * A language translation of this offer.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A language translation of this offer.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A language translation of this offer.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The language for which this translation applies. */
@property (readonly) KASDKOSLanguage__ * _Nullable language __attribute__((swift_name("language")));

/** The ID of this specific translation */
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));

/** The translated offer description. */
@property (readonly) NSString * _Nullable offerDescription __attribute__((swift_name("offerDescription")));

/** The language appropriate link of this offer. */
@property (readonly) NSString * _Nullable offerLink __attribute__((swift_name("offerLink")));

/** The translated offer terms and conditions. */
@property (readonly) NSString * _Nullable offerTermsConditions __attribute__((swift_name("offerTermsConditions")));

/** The translated offer title. */
@property (readonly) NSString * _Nullable offerTitle __attribute__((swift_name("offerTitle")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation.Companion")))
@interface KASDKOSOfferTranslationCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A language translation of this offer.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferTranslationCompanion *shared __attribute__((swift_name("shared")));

/**
 * A language translation of this offer.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessage")))
@interface KASDKOSTransferMessage : KASDKOSBase
- (instancetype)initWithId:(int64_t)id typeId:(KASDKOSLong * _Nullable)typeId type:(NSString * _Nullable)type description:(NSString * _Nullable)description points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount hidden:(KASDKOSBoolean * _Nullable)hidden createdAt:(NSString * _Nullable)createdAt offer:(KASDKOSOfferModel * _Nullable)offer giftCardQueue:(KASDKOSTransferMessageGiftCardQueue * _Nullable)giftCardQueue actions:(NSArray<KASDKOSTransferMessageActions *> * _Nullable)actions __attribute__((swift_name("init(id:typeId:type:description:points:amount:hidden:createdAt:offer:giftCardQueue:actions:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferMessageCompanion *companion __attribute__((swift_name("companion")));

/** The unique ID of this transfer. */
- (int64_t)component1 __attribute__((swift_name("component1()")));
- (KASDKOSTransferMessageGiftCardQueue * _Nullable)component10 __attribute__((swift_name("component10()")));
- (NSArray<KASDKOSTransferMessageActions *> * _Nullable)component11 __attribute__((swift_name("component11()")));

/** The type ID of this transfer. */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** A string representation of this transfer type. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The description of this transfer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The amount of points sent in this transfer. */
- (KASDKOSLong * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The amount in $ sent in this transfer. */
- (KASDKOSDouble * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSBoolean * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The orignal send date of this transfer. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The gift card in this transfer if applicable. Gift cards are an offer sub-type in Kangaroo.  */
- (KASDKOSOfferModel * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (KASDKOSTransferMessage *)doCopyId:(int64_t)id typeId:(KASDKOSLong * _Nullable)typeId type:(NSString * _Nullable)type description:(NSString * _Nullable)description points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount hidden:(KASDKOSBoolean * _Nullable)hidden createdAt:(NSString * _Nullable)createdAt offer:(KASDKOSOfferModel * _Nullable)offer giftCardQueue:(KASDKOSTransferMessageGiftCardQueue * _Nullable)giftCardQueue actions:(NSArray<KASDKOSTransferMessageActions *> * _Nullable)actions __attribute__((swift_name("doCopy(id:typeId:type:description:points:amount:hidden:createdAt:offer:giftCardQueue:actions:)")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSTransferMessageActions *> * _Nullable actions __attribute__((swift_name("actions")));

/** The amount in $ sent in this transfer. */
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));

/** The orignal send date of this transfer. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** The description of this transfer. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSTransferMessageGiftCardQueue * _Nullable giftCardQueue __attribute__((swift_name("giftCardQueue")));
@property (readonly) KASDKOSBoolean * _Nullable hidden __attribute__((swift_name("hidden")));

/** The unique ID of this transfer. */
@property (readonly) int64_t id __attribute__((swift_name("id")));

/** The gift card in this transfer if applicable. Gift cards are an offer sub-type in Kangaroo.  */
@property (readonly) KASDKOSOfferModel * _Nullable offer __attribute__((swift_name("offer")));

/** The amount of points sent in this transfer. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** A string representation of this transfer type. */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));

/** The type ID of this transfer. */
@property (readonly) KASDKOSLong * _Nullable typeId __attribute__((swift_name("typeId")));
@end;


/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessage.Companion")))
@interface KASDKOSTransferMessageCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessageCompanion *shared __attribute__((swift_name("shared")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageActions")))
@interface KASDKOSTransferMessageActions : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferMessageActionsCompanion *companion __attribute__((swift_name("companion")));

/** The action type. */
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSTransferMessageActions *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** The action type. */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageActions.Companion")))
@interface KASDKOSTransferMessageActionsCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessageActionsCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageGiftCardQueue")))
@interface KASDKOSTransferMessageGiftCardQueue : KASDKOSBase
- (instancetype)initWithId:(KASDKOSLong * _Nullable)id enabled:(KASDKOSBoolean * _Nullable)enabled senderName:(NSString * _Nullable)senderName recipientName:(NSString * _Nullable)recipientName emailPhone:(NSString * _Nullable)emailPhone points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount createdAt:(NSString * _Nullable)createdAt scheduledAt:(NSString * _Nullable)scheduledAt __attribute__((swift_name("init(id:enabled:senderName:recipientName:emailPhone:points:amount:createdAt:scheduledAt:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferMessageGiftCardQueueCompanion *companion __attribute__((swift_name("companion")));

/** The unique ID of this gift_card_queue */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** Whether this item is enabled. Usually true. */
- (KASDKOSBoolean * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The name of the sender of this transfer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The name of the recipient of this transfer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The phone number or email address that this transfer was sent to.  */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The amount of points sent in this transfer. */
- (KASDKOSLong * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The amount in $ sent in this transfer. */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The orignal creation date of this transfer. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The original scheduled delivery date of this transfer. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSTransferMessageGiftCardQueue *)doCopyId:(KASDKOSLong * _Nullable)id enabled:(KASDKOSBoolean * _Nullable)enabled senderName:(NSString * _Nullable)senderName recipientName:(NSString * _Nullable)recipientName emailPhone:(NSString * _Nullable)emailPhone points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount createdAt:(NSString * _Nullable)createdAt scheduledAt:(NSString * _Nullable)scheduledAt __attribute__((swift_name("doCopy(id:enabled:senderName:recipientName:emailPhone:points:amount:createdAt:scheduledAt:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount in $ sent in this transfer. */
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));

/** The orignal creation date of this transfer. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** The phone number or email address that this transfer was sent to.  */
@property (readonly) NSString * _Nullable emailPhone __attribute__((swift_name("emailPhone")));

/** Whether this item is enabled. Usually true. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** The unique ID of this gift_card_queue */
@property (readonly) KASDKOSLong * _Nullable id __attribute__((swift_name("id")));

/** The amount of points sent in this transfer. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The name of the recipient of this transfer. */
@property (readonly) NSString * _Nullable recipientName __attribute__((swift_name("recipientName")));

/** The original scheduled delivery date of this transfer. */
@property (readonly) NSString * _Nullable scheduledAt __attribute__((swift_name("scheduledAt")));

/** The name of the sender of this transfer. */
@property (readonly) NSString * _Nullable senderName __attribute__((swift_name("senderName")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageGiftCardQueue.Companion")))
@interface KASDKOSTransferMessageGiftCardQueueCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessageGiftCardQueueCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Contains the result of a recalled transfer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferRecallResultModel")))
@interface KASDKOSTransferRecallResultModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSTransferMessage *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSTransferRecallResultModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSTransferMessage *)component1 __attribute__((swift_name("component1()")));

/**
 * Contains the result of a recalled transfer.
 */
- (KASDKOSTransferRecallResultModel *)doCopyData:(KASDKOSTransferMessage *)data __attribute__((swift_name("doCopy(data:)")));

/**
 * Contains the result of a recalled transfer.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Contains the result of a recalled transfer.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Contains the result of a recalled transfer.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSTransferMessage *data __attribute__((swift_name("data")));
@end;


/**
 * Contains the result of a recalled transfer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferRecallResultModel.Companion")))
@interface KASDKOSTransferRecallResultModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Contains the result of a recalled transfer.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferRecallResultModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * Contains the result of a recalled transfer.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Transfer points or e-wallet balance to another users account.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BalanceTransferApi")))
@interface KASDKOSBalanceTransferApi : KASDKOSApi

/**
 * Transfer points or e-wallet balance to another users account.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Transfer points or e-wallet balance to another users account.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSBalanceTransferApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Transfer points or e-wallet balance to another users account.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *)transferTransferRequest:(KASDKOSTransferModel *)transferRequest __attribute__((swift_name("transfer(transferRequest:)")));
- (KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *)transferMethods:(NSDictionary<NSString *, id> *)methods __attribute__((swift_name("transfer(methods:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *balanceTransferState __attribute__((swift_name("balanceTransferState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BalanceTransferApi.Companion")))
@interface KASDKOSBalanceTransferApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBalanceTransferApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferFrom")))
@interface KASDKOSTransferFrom : KASDKOSBase
- (instancetype)initWithName:(NSString *)name phone:(NSString * _Nullable)phone countryCode:(NSString * _Nullable)countryCode email:(NSString * _Nullable)email __attribute__((swift_name("init(name:phone:countryCode:email:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferFromCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
- (KASDKOSTransferFrom *)doCopyName:(NSString *)name phone:(NSString * _Nullable)phone countryCode:(NSString * _Nullable)countryCode email:(NSString * _Nullable)email __attribute__((swift_name("doCopy(name:phone:countryCode:email:)")));

/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));
@end;


/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferFrom.Companion")))
@interface KASDKOSTransferFromCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferFromCompanion *shared __attribute__((swift_name("shared")));

/**
 * The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferModel")))
@interface KASDKOSTransferModel : KASDKOSModel
- (instancetype)initWithIntent:(NSString *)intent language:(NSString *)language points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount to:(KASDKOSTransferTo * _Nullable)to from:(KASDKOSTransferFrom * _Nullable)from __attribute__((swift_name("init(intent:language:points:amount:to:from:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSTransferModelCompanion *companion __attribute__((swift_name("companion")));

/** The transfer intent for this transfer. This can be transfer_amount or transfer_points  */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** The two character language code of the language that this transfer should be sent in.  */
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSLong * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSDouble * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSTransferTo * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSTransferFrom * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSTransferModel *)doCopyIntent:(NSString *)intent language:(NSString *)language points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount to:(KASDKOSTransferTo * _Nullable)to from:(KASDKOSTransferFrom * _Nullable)from __attribute__((swift_name("doCopy(intent:language:points:amount:to:from:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));
@property (readonly) KASDKOSTransferFrom * _Nullable from __attribute__((swift_name("from")));

/** The transfer intent for this transfer. This can be transfer_amount or transfer_points  */
@property (readonly) NSString *intent __attribute__((swift_name("intent")));

/** The two character language code of the language that this transfer should be sent in.  */
@property (readonly) NSString *language __attribute__((swift_name("language")));
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@property (readonly) KASDKOSTransferTo * _Nullable to __attribute__((swift_name("to")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferModel.Companion")))
@interface KASDKOSTransferModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferTo")))
@interface KASDKOSTransferTo : KASDKOSBase
- (instancetype)initWithName:(NSString *)name __attribute__((swift_name("init(name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferToCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSTransferTo *)doCopyName:(NSString *)name __attribute__((swift_name("doCopy(name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferTo.Companion")))
@interface KASDKOSTransferToCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferToCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get List of Frequent Buyer program [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerApi")))
@interface KASDKOSFrequentBuyerApi : KASDKOSApi

/**
 * Get List of Frequent Buyer program [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get List of Frequent Buyer program [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSFrequentBuyerApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get List of Frequent Buyer program
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSFrequentBuyerModel *> *> *)getFrequentBuyer __attribute__((swift_name("getFrequentBuyer()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSFrequentBuyerModel *> *> *frequentBuyerState __attribute__((swift_name("frequentBuyerState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerApi.Companion")))
@interface KASDKOSFrequentBuyerApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSFrequentBuyerApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error__")))
@interface KASDKOSError__ : KASDKOSBase
- (instancetype)initWithCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("init(code:message:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSError__Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSError__ *)doCopyCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("doCopy(code:message:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t code __attribute__((swift_name("code")));
@property (readonly) NSString *message __attribute__((swift_name("message")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error__.Companion")))
@interface KASDKOSError__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSError__Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerIncluded")))
@interface KASDKOSFrequentBuyerIncluded : KASDKOSBase
- (instancetype)initWithFrequentBuyerPrograms:(NSArray<KASDKOSFrequentBuyerItemModel *> *)frequentBuyerPrograms __attribute__((swift_name("init(frequentBuyerPrograms:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSFrequentBuyerIncludedCompanion *companion __attribute__((swift_name("companion")));
- (NSArray<KASDKOSFrequentBuyerItemModel *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSFrequentBuyerIncluded *)doCopyFrequentBuyerPrograms:(NSArray<KASDKOSFrequentBuyerItemModel *> *)frequentBuyerPrograms __attribute__((swift_name("doCopy(frequentBuyerPrograms:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSFrequentBuyerItemModel *> *frequentBuyerPrograms __attribute__((swift_name("frequentBuyerPrograms")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerIncluded.Companion")))
@interface KASDKOSFrequentBuyerIncludedCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSFrequentBuyerIncludedCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerItemModel")))
@interface KASDKOSFrequentBuyerItemModel : KASDKOSModel
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id title:(NSString * _Nullable)title buyUnits:(KASDKOSInt * _Nullable)buyUnits getUnits:(KASDKOSInt * _Nullable)getUnits resetInterval:(KASDKOSInt * _Nullable)resetInterval createdAt:(NSString * _Nullable)createdAt frequentBuyerUsers:(NSArray<KASDKOSFrequentBuyerUsersModel *> * _Nullable)frequentBuyerUsers __attribute__((swift_name("init(id:title:buyUnits:getUnits:resetInterval:createdAt:frequentBuyerUsers:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSFrequentBuyerItemModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (KASDKOSInt * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSInt * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSInt * _Nullable)component5 __attribute__((swift_name("component5()")));
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (NSArray<KASDKOSFrequentBuyerUsersModel *> * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSFrequentBuyerItemModel *)doCopyId:(KASDKOSInt * _Nullable)id title:(NSString * _Nullable)title buyUnits:(KASDKOSInt * _Nullable)buyUnits getUnits:(KASDKOSInt * _Nullable)getUnits resetInterval:(KASDKOSInt * _Nullable)resetInterval createdAt:(NSString * _Nullable)createdAt frequentBuyerUsers:(NSArray<KASDKOSFrequentBuyerUsersModel *> * _Nullable)frequentBuyerUsers __attribute__((swift_name("doCopy(id:title:buyUnits:getUnits:resetInterval:createdAt:frequentBuyerUsers:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSInt * _Nullable buyUnits __attribute__((swift_name("buyUnits")));
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));
@property (readonly) NSArray<KASDKOSFrequentBuyerUsersModel *> * _Nullable frequentBuyerUsers __attribute__((swift_name("frequentBuyerUsers")));
@property (readonly) KASDKOSInt * _Nullable getUnits __attribute__((swift_name("getUnits")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) KASDKOSInt * _Nullable resetInterval __attribute__((swift_name("resetInterval")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerItemModel.Companion")))
@interface KASDKOSFrequentBuyerItemModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSFrequentBuyerItemModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerModel")))
@interface KASDKOSFrequentBuyerModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData____ *)data included:(KASDKOSFrequentBuyerIncluded *)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSFrequentBuyerModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains all user data */
- (KASDKOSUserProfileData____ *)component1 __attribute__((swift_name("component1()")));

/** Contains all Frequent buyer items */
- (KASDKOSFrequentBuyerIncluded *)component2 __attribute__((swift_name("component2()")));

/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
- (KASDKOSFrequentBuyerModel *)doCopyData:(KASDKOSUserProfileData____ *)data included:(KASDKOSFrequentBuyerIncluded *)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user data */
@property (readonly) KASDKOSUserProfileData____ *data __attribute__((swift_name("data")));

/** Contains all Frequent buyer items */
@property (readonly) KASDKOSFrequentBuyerIncluded *included __attribute__((swift_name("included")));
@end;


/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerModel.Companion")))
@interface KASDKOSFrequentBuyerModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSFrequentBuyerModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * Frequent Buyer Model containing list of Frequent Buyer program
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerUsersModel")))
@interface KASDKOSFrequentBuyerUsersModel : KASDKOSModel
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id status:(KASDKOSInt * _Nullable)status purchasesCount:(KASDKOSInt * _Nullable)purchasesCount __attribute__((swift_name("init(id:status:purchasesCount:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSFrequentBuyerUsersModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));
- (KASDKOSInt * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSFrequentBuyerUsersModel *)doCopyId:(KASDKOSInt * _Nullable)id status:(KASDKOSInt * _Nullable)status purchasesCount:(KASDKOSInt * _Nullable)purchasesCount __attribute__((swift_name("doCopy(id:status:purchasesCount:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) KASDKOSInt * _Nullable purchasesCount __attribute__((swift_name("purchasesCount")));
@property (readonly) KASDKOSInt * _Nullable status __attribute__((swift_name("status")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FrequentBuyerUsersModel.Companion")))
@interface KASDKOSFrequentBuyerUsersModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSFrequentBuyerUsersModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData____")))
@interface KASDKOSUserProfileData____ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData____Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData____ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData____.Companion")))
@interface KASDKOSUserProfileData____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData____Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get a list of offers available to this user. [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserOffersApi")))
@interface KASDKOSUserOffersApi : KASDKOSApi

/**
 * Get a list of offers available to this user. [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get a list of offers available to this user. [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserOffersApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get a list of offers available to this user.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserOffersModel *> *> *)getUserOffers __attribute__((swift_name("getUserOffers()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserOffersModel *> *> *userOffersState __attribute__((swift_name("userOffersState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserOffersApi.Companion")))
@interface KASDKOSUserOffersApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserOffersApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image__")))
@interface KASDKOSImage__ : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImage__Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage__ *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image__.Companion")))
@interface KASDKOSImage__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImage__Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language___")))
@interface KASDKOSLanguage___ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage___Companion *companion __attribute__((swift_name("companion")));

/** The Kangaroo ID of this language. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The full name of this language (English, French, Spanish) */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage___ *)doCopyId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));

/** The Kangaroo ID of this language. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The full name of this language (English, French, Spanish) */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language___.Companion")))
@interface KASDKOSLanguage___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage___Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction_")))
@interface KASDKOSOfferAction_ : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferAction_Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSOfferAction_ *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction_.Companion")))
@interface KASDKOSOfferAction_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferAction_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel_")))
@interface KASDKOSOfferModel_ : KASDKOSModel
- (instancetype)initWithId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage__ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation_ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction_ *> * _Nullable)actions __attribute__((swift_name("init(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSOfferModel_Companion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The minimum purchase amount for this offer to be applied */
- (KASDKOSDouble * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The maximum purchase amount for this offer to be applied. */
- (KASDKOSDouble * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
- (KASDKOSBoolean * _Nullable)component12 __attribute__((swift_name("component12()")));
- (KASDKOSInt * _Nullable)component13 __attribute__((swift_name("component13()")));
- (NSArray<NSString *> * _Nullable)component14 __attribute__((swift_name("component14()")));
- (NSString * _Nullable)component15 __attribute__((swift_name("component15()")));
- (NSString * _Nullable)component16 __attribute__((swift_name("component16()")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
- (NSString * _Nullable)component17 __attribute__((swift_name("component17()")));

/** The offer title. */
- (NSString * _Nullable)component18 __attribute__((swift_name("component18()")));

/** The offer description. */
- (NSString * _Nullable)component19 __attribute__((swift_name("component19()")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The unique slug for this offer */
- (NSString * _Nullable)component20 __attribute__((swift_name("component20()")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
- (NSArray<KASDKOSImage__ *> * _Nullable)component21 __attribute__((swift_name("component21()")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
- (KASDKOSBoolean * _Nullable)component22 __attribute__((swift_name("component22()")));

/** The terms and conditions attached to this offer. */
- (NSString * _Nullable)component23 __attribute__((swift_name("component23()")));

/** The external link attached to this offer. */
- (NSString * _Nullable)component24 __attribute__((swift_name("component24()")));

/** A list of translations of this offer into different languages. */
- (NSArray<KASDKOSOfferTranslation_ *> * _Nullable)component25 __attribute__((swift_name("component25()")));

/** A list of possible actions to perform on this offer. */
- (NSArray<KASDKOSOfferAction_ *> * _Nullable)component26 __attribute__((swift_name("component26()")));

/** The publication date of this offer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The expiration date of this offer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this offer is currently published or not. */
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
- (KASDKOSBoolean * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The real value  (in $) of this offer */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The discount value (in $) of this offer */
- (KASDKOSDouble * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
- (KASDKOSDouble * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSOfferModel_ *)doCopyId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage__ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation_ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction_ *> * _Nullable)actions __attribute__((swift_name("doCopy(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of possible actions to perform on this offer. */
@property (readonly) NSArray<KASDKOSOfferAction_ *> * _Nullable actions __attribute__((swift_name("actions")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
@property (readonly) KASDKOSBoolean * _Nullable appsOnly __attribute__((swift_name("appsOnly")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
@property (readonly) KASDKOSBoolean * _Nullable couponConvertible __attribute__((swift_name("couponConvertible")));

/** The offer description. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));

/** The discount value (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable discountValue __attribute__((swift_name("discountValue")));

/** The expiration date of this offer. */
@property (readonly) NSString * _Nullable expiresAt __attribute__((swift_name("expiresAt")));
@property (readonly) NSArray<NSString *> * _Nullable freqDetails __attribute__((swift_name("freqDetails")));

/** A unique ID identifying this reward */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
@property (readonly) NSArray<KASDKOSImage__ *> * _Nullable images __attribute__((swift_name("images")));

/** Whether this offer is currently published or not. */
@property (readonly) KASDKOSBoolean * _Nullable isPublished __attribute__((swift_name("isPublished")));

/** The external link attached to this offer. */
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));

/** The maximum purchase amount for this offer to be applied. */
@property (readonly) KASDKOSDouble * _Nullable maxPurchase __attribute__((swift_name("maxPurchase")));

/** The minimum purchase amount for this offer to be applied */
@property (readonly) KASDKOSDouble * _Nullable minPurchase __attribute__((swift_name("minPurchase")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
@property (readonly) KASDKOSDouble * _Nullable multipFactor __attribute__((swift_name("multipFactor")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
@property (readonly) KASDKOSBoolean * _Nullable neverExpiresFlag __attribute__((swift_name("neverExpiresFlag")));
@property (readonly) KASDKOSInt * _Nullable offerFrequencyId __attribute__((swift_name("offerFrequencyId")));

/** A list of translations of this offer into different languages. */
@property (readonly) NSArray<KASDKOSOfferTranslation_ *> * _Nullable offerLanguages __attribute__((swift_name("offerLanguages")));
@property (readonly) NSString * _Nullable peakFrom __attribute__((swift_name("peakFrom")));
@property (readonly) NSString * _Nullable peakTo __attribute__((swift_name("peakTo")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The publication date of this offer. */
@property (readonly) NSString * _Nullable publishAt __attribute__((swift_name("publishAt")));

/** The real value  (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable realValue __attribute__((swift_name("realValue")));

/** The unique slug for this offer */
@property (readonly) NSString * _Nullable slug __attribute__((swift_name("slug")));

/** The terms and conditions attached to this offer. */
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));

/** The offer title. */
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel_.Companion")))
@interface KASDKOSOfferModel_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferModel_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation_")))
@interface KASDKOSOfferTranslation_ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage___ * _Nullable)language __attribute__((swift_name("init(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferTranslation_Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The ID of this specific translation */
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The translated offer title. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The translated offer description. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The translated offer terms and conditions. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The language appropriate link of this offer. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The language for which this translation applies. */
- (KASDKOSLanguage___ * _Nullable)component7 __attribute__((swift_name("component7()")));

/**
 * A language translation of this offer.
 */
- (KASDKOSOfferTranslation_ *)doCopyId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage___ * _Nullable)language __attribute__((swift_name("doCopy(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)")));

/**
 * A language translation of this offer.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A language translation of this offer.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A language translation of this offer.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The language for which this translation applies. */
@property (readonly) KASDKOSLanguage___ * _Nullable language __attribute__((swift_name("language")));

/** The ID of this specific translation */
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));

/** The translated offer description. */
@property (readonly) NSString * _Nullable offerDescription __attribute__((swift_name("offerDescription")));

/** The language appropriate link of this offer. */
@property (readonly) NSString * _Nullable offerLink __attribute__((swift_name("offerLink")));

/** The translated offer terms and conditions. */
@property (readonly) NSString * _Nullable offerTermsConditions __attribute__((swift_name("offerTermsConditions")));

/** The translated offer title. */
@property (readonly) NSString * _Nullable offerTitle __attribute__((swift_name("offerTitle")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation_.Companion")))
@interface KASDKOSOfferTranslation_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A language translation of this offer.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferTranslation_Companion *shared __attribute__((swift_name("shared")));

/**
 * A language translation of this offer.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserOffersModel")))
@interface KASDKOSUserOffersModel : KASDKOSModel
- (instancetype)initWithData:(NSArray<KASDKOSOfferModel_ *> *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserOffersModelCompanion *companion __attribute__((swift_name("companion")));

/** A list of all offers available to this user */
- (NSArray<KASDKOSOfferModel_ *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSUserOffersModel *)doCopyData:(NSArray<KASDKOSOfferModel_ *> *)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of all offers available to this user */
@property (readonly) NSArray<KASDKOSOfferModel_ *> *data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserOffersModel.Companion")))
@interface KASDKOSUserOffersModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserOffersModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Claim an offer. Once it has been claimed it will be available to be used towards a purchase.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ClaimOfferApi")))
@interface KASDKOSClaimOfferApi : KASDKOSApi

/**
 * Claim an offer. Once it has been claimed it will be available to be used towards a purchase.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Claim an offer. Once it has been claimed it will be available to be used towards a purchase.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSClaimOfferApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Claim an offer. Once it has been claimed it will be available to be used towards a purchase.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSClaimedOfferModel *> *> *)claimOfferOfferId:(int32_t)offerId customerId:(NSString *)customerId __attribute__((swift_name("claimOffer(offerId:customerId:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSClaimedOfferModel *> *> *claimOfferState __attribute__((swift_name("claimOfferState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ClaimOfferApi.Companion")))
@interface KASDKOSClaimOfferApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSClaimOfferApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ClaimedOfferModel")))
@interface KASDKOSClaimedOfferModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSOfferModel__ *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSClaimedOfferModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSOfferModel__ *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSClaimedOfferModel *)doCopyData:(KASDKOSOfferModel__ *)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSOfferModel__ *data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("ClaimedOfferModel.Companion")))
@interface KASDKOSClaimedOfferModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSClaimedOfferModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image___")))
@interface KASDKOSImage___ : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImage___Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage___ *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image___.Companion")))
@interface KASDKOSImage___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImage___Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language____")))
@interface KASDKOSLanguage____ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage____Companion *companion __attribute__((swift_name("companion")));

/** The Kangaroo ID of this language. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The full name of this language (English, French, Spanish) */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage____ *)doCopyId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));

/** The Kangaroo ID of this language. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The full name of this language (English, French, Spanish) */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language____.Companion")))
@interface KASDKOSLanguage____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage____Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction__")))
@interface KASDKOSOfferAction__ : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferAction__Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSOfferAction__ *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction__.Companion")))
@interface KASDKOSOfferAction__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferAction__Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel__")))
@interface KASDKOSOfferModel__ : KASDKOSModel
- (instancetype)initWithId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage___ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation__ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction__ *> * _Nullable)actions __attribute__((swift_name("init(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSOfferModel__Companion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The minimum purchase amount for this offer to be applied */
- (KASDKOSDouble * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The maximum purchase amount for this offer to be applied. */
- (KASDKOSDouble * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
- (KASDKOSBoolean * _Nullable)component12 __attribute__((swift_name("component12()")));
- (KASDKOSInt * _Nullable)component13 __attribute__((swift_name("component13()")));
- (NSArray<NSString *> * _Nullable)component14 __attribute__((swift_name("component14()")));
- (NSString * _Nullable)component15 __attribute__((swift_name("component15()")));
- (NSString * _Nullable)component16 __attribute__((swift_name("component16()")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
- (NSString * _Nullable)component17 __attribute__((swift_name("component17()")));

/** The offer title. */
- (NSString * _Nullable)component18 __attribute__((swift_name("component18()")));

/** The offer description. */
- (NSString * _Nullable)component19 __attribute__((swift_name("component19()")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The unique slug for this offer */
- (NSString * _Nullable)component20 __attribute__((swift_name("component20()")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
- (NSArray<KASDKOSImage___ *> * _Nullable)component21 __attribute__((swift_name("component21()")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
- (KASDKOSBoolean * _Nullable)component22 __attribute__((swift_name("component22()")));

/** The terms and conditions attached to this offer. */
- (NSString * _Nullable)component23 __attribute__((swift_name("component23()")));

/** The external link attached to this offer. */
- (NSString * _Nullable)component24 __attribute__((swift_name("component24()")));

/** A list of translations of this offer into different languages. */
- (NSArray<KASDKOSOfferTranslation__ *> * _Nullable)component25 __attribute__((swift_name("component25()")));

/** A list of possible actions to perform on this offer. */
- (NSArray<KASDKOSOfferAction__ *> * _Nullable)component26 __attribute__((swift_name("component26()")));

/** The publication date of this offer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The expiration date of this offer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this offer is currently published or not. */
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
- (KASDKOSBoolean * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The real value  (in $) of this offer */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The discount value (in $) of this offer */
- (KASDKOSDouble * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
- (KASDKOSDouble * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSOfferModel__ *)doCopyId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage___ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation__ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction__ *> * _Nullable)actions __attribute__((swift_name("doCopy(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of possible actions to perform on this offer. */
@property (readonly) NSArray<KASDKOSOfferAction__ *> * _Nullable actions __attribute__((swift_name("actions")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
@property (readonly) KASDKOSBoolean * _Nullable appsOnly __attribute__((swift_name("appsOnly")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
@property (readonly) KASDKOSBoolean * _Nullable couponConvertible __attribute__((swift_name("couponConvertible")));

/** The offer description. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));

/** The discount value (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable discountValue __attribute__((swift_name("discountValue")));

/** The expiration date of this offer. */
@property (readonly) NSString * _Nullable expiresAt __attribute__((swift_name("expiresAt")));
@property (readonly) NSArray<NSString *> * _Nullable freqDetails __attribute__((swift_name("freqDetails")));

/** A unique ID identifying this reward */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
@property (readonly) NSArray<KASDKOSImage___ *> * _Nullable images __attribute__((swift_name("images")));

/** Whether this offer is currently published or not. */
@property (readonly) KASDKOSBoolean * _Nullable isPublished __attribute__((swift_name("isPublished")));

/** The external link attached to this offer. */
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));

/** The maximum purchase amount for this offer to be applied. */
@property (readonly) KASDKOSDouble * _Nullable maxPurchase __attribute__((swift_name("maxPurchase")));

/** The minimum purchase amount for this offer to be applied */
@property (readonly) KASDKOSDouble * _Nullable minPurchase __attribute__((swift_name("minPurchase")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
@property (readonly) KASDKOSDouble * _Nullable multipFactor __attribute__((swift_name("multipFactor")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
@property (readonly) KASDKOSBoolean * _Nullable neverExpiresFlag __attribute__((swift_name("neverExpiresFlag")));
@property (readonly) KASDKOSInt * _Nullable offerFrequencyId __attribute__((swift_name("offerFrequencyId")));

/** A list of translations of this offer into different languages. */
@property (readonly) NSArray<KASDKOSOfferTranslation__ *> * _Nullable offerLanguages __attribute__((swift_name("offerLanguages")));
@property (readonly) NSString * _Nullable peakFrom __attribute__((swift_name("peakFrom")));
@property (readonly) NSString * _Nullable peakTo __attribute__((swift_name("peakTo")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The publication date of this offer. */
@property (readonly) NSString * _Nullable publishAt __attribute__((swift_name("publishAt")));

/** The real value  (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable realValue __attribute__((swift_name("realValue")));

/** The unique slug for this offer */
@property (readonly) NSString * _Nullable slug __attribute__((swift_name("slug")));

/** The terms and conditions attached to this offer. */
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));

/** The offer title. */
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel__.Companion")))
@interface KASDKOSOfferModel__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferModel__Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation__")))
@interface KASDKOSOfferTranslation__ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage____ * _Nullable)language __attribute__((swift_name("init(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferTranslation__Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The ID of this specific translation */
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The translated offer title. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The translated offer description. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The translated offer terms and conditions. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The language appropriate link of this offer. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The language for which this translation applies. */
- (KASDKOSLanguage____ * _Nullable)component7 __attribute__((swift_name("component7()")));

/**
 * A language translation of this offer.
 */
- (KASDKOSOfferTranslation__ *)doCopyId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage____ * _Nullable)language __attribute__((swift_name("doCopy(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)")));

/**
 * A language translation of this offer.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A language translation of this offer.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A language translation of this offer.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The language for which this translation applies. */
@property (readonly) KASDKOSLanguage____ * _Nullable language __attribute__((swift_name("language")));

/** The ID of this specific translation */
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));

/** The translated offer description. */
@property (readonly) NSString * _Nullable offerDescription __attribute__((swift_name("offerDescription")));

/** The language appropriate link of this offer. */
@property (readonly) NSString * _Nullable offerLink __attribute__((swift_name("offerLink")));

/** The translated offer terms and conditions. */
@property (readonly) NSString * _Nullable offerTermsConditions __attribute__((swift_name("offerTermsConditions")));

/** The translated offer title. */
@property (readonly) NSString * _Nullable offerTitle __attribute__((swift_name("offerTitle")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation__.Companion")))
@interface KASDKOSOfferTranslation__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A language translation of this offer.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferTranslation__Companion *shared __attribute__((swift_name("shared")));

/**
 * A language translation of this offer.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Update a users' profile [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileUpdateApi")))
@interface KASDKOSUserProfileUpdateApi : KASDKOSApi

/**
 * Update a users' profile [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Update a users' profile [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserProfileUpdateApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Update a users' profile
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel___ *> *> *)updateUserProfileFirstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language gender:(NSString * _Nullable)gender profilePhoto:(NSString * _Nullable)profilePhoto __attribute__((swift_name("updateUserProfile(firstName:lastName:birthDate:language:gender:profilePhoto:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel___ *> *> *userProfileUpdateState __attribute__((swift_name("userProfileUpdateState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileUpdateApi.Companion")))
@interface KASDKOSUserProfileUpdateApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileUpdateApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData__")))
@interface KASDKOSUserProfileBalanceData__ : KASDKOSBase
- (instancetype)initWithPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("init(points:giftcard:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileBalanceData__Companion *companion __attribute__((swift_name("companion")));

/** The number of points this user currently has. */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** The amount of store credit in the users&#39; e-wallet. */
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile balance data
 */
- (KASDKOSUserProfileBalanceData__ *)doCopyPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("doCopy(points:giftcard:)")));

/**
 * User Profile balance data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile balance data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile balance data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount of store credit in the users&#39; e-wallet. */
@property (readonly) KASDKOSDouble * _Nullable giftcard __attribute__((swift_name("giftcard")));

/** The number of points this user currently has. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData__.Companion")))
@interface KASDKOSUserProfileBalanceData__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile balance data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileBalanceData__Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile balance data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData_____")))
@interface KASDKOSUserProfileData_____ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData_____Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData_____ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData_____.Companion")))
@interface KASDKOSUserProfileData_____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData_____Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude__")))
@interface KASDKOSUserProfileInclude__ : KASDKOSBase
- (instancetype)initWithBalance:(KASDKOSUserProfileBalanceData__ *)balance __attribute__((swift_name("init(balance:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileInclude__Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSUserProfileBalanceData__ *)component1 __attribute__((swift_name("component1()")));

/**
 * Extra user profile data
 */
- (KASDKOSUserProfileInclude__ *)doCopyBalance:(KASDKOSUserProfileBalanceData__ *)balance __attribute__((swift_name("doCopy(balance:)")));

/**
 * Extra user profile data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Extra user profile data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Extra user profile data
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSUserProfileBalanceData__ *balance __attribute__((swift_name("balance")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude__.Companion")))
@interface KASDKOSUserProfileInclude__Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Extra user profile data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileInclude__Companion *shared __attribute__((swift_name("shared")));

/**
 * Extra user profile data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel___")))
@interface KASDKOSUserProfileModel___ : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData_____ *)data included:(KASDKOSUserProfileInclude__ * _Nullable)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProfileModel___Companion *companion __attribute__((swift_name("companion")));

/** Contains all user profile data */
- (KASDKOSUserProfileData_____ *)component1 __attribute__((swift_name("component1()")));

/** Contains user balance data */
- (KASDKOSUserProfileInclude__ * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileModel___ *)doCopyData:(KASDKOSUserProfileData_____ *)data included:(KASDKOSUserProfileInclude__ * _Nullable)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user profile data */
@property (readonly) KASDKOSUserProfileData_____ *data __attribute__((swift_name("data")));

/** Contains user balance data */
@property (readonly) KASDKOSUserProfileInclude__ * _Nullable included __attribute__((swift_name("included")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel___.Companion")))
@interface KASDKOSUserProfileModel___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileModel___Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Redeem a set of rewards. This action costs points which will be deducted from the users' balance. Only Partner Rewards can be redeemed from the customer api.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemRewardsApi")))
@interface KASDKOSRedeemRewardsApi : KASDKOSApi

/**
 * Redeem a set of rewards. This action costs points which will be deducted from the users' balance. Only Partner Rewards can be redeemed from the customer api.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Redeem a set of rewards. This action costs points which will be deducted from the users' balance. Only Partner Rewards can be redeemed from the customer api.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSRedeemRewardsApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Redeem a set of rewards. This action costs points which will be deducted from the users' balance. Only Partner Rewards can be redeemed from the customer api.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSRedeemResponseModel *> *> *)redeemRewardRedeemRequest:(KASDKOSRedeemRequest *)redeemRequest __attribute__((swift_name("redeemReward(redeemRequest:)")));
- (KASDKOSCFlow<KASDKOSResult<KASDKOSRedeemResponseModel *> *> *)redeemRewardMethods:(NSDictionary<NSString *, id> *)methods __attribute__((swift_name("redeemReward(methods:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSRedeemResponseModel *> *> *redeemRewardsState __attribute__((swift_name("redeemRewardsState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemRewardsApi.Companion")))
@interface KASDKOSRedeemRewardsApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRedeemRewardsApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemRequest")))
@interface KASDKOSRedeemRequest : KASDKOSBase
- (instancetype)initWithBranchId:(NSString *)branchId catalogItems:(NSArray<KASDKOSRedemptionModel *> *)catalogItems intent:(NSString *)intent __attribute__((swift_name("init(branchId:catalogItems:intent:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSRedeemRequestCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** A list of rewards to redeem. */
- (NSArray<KASDKOSRedemptionModel *> *)component2 __attribute__((swift_name("component2()")));
- (NSString *)component3 __attribute__((swift_name("component3()")));
- (KASDKOSRedeemRequest *)doCopyBranchId:(NSString *)branchId catalogItems:(NSArray<KASDKOSRedemptionModel *> *)catalogItems intent:(NSString *)intent __attribute__((swift_name("doCopy(branchId:catalogItems:intent:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *branchId __attribute__((swift_name("branchId")));

/** A list of rewards to redeem. */
@property (readonly) NSArray<KASDKOSRedemptionModel *> *catalogItems __attribute__((swift_name("catalogItems")));
@property (readonly) NSString *intent __attribute__((swift_name("intent")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemRequest.Companion")))
@interface KASDKOSRedeemRequestCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRedeemRequestCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemResponseData")))
@interface KASDKOSRedeemResponseData : KASDKOSBase
- (instancetype)initWithId:(int32_t)id amount:(KASDKOSDouble * _Nullable)amount points:(KASDKOSLong * _Nullable)points name:(NSString * _Nullable)name createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt customer:(KASDKOSUserProfileModel____ * _Nullable)customer __attribute__((swift_name("init(id:amount:points:name:createdAt:updatedAt:customer:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSRedeemResponseDataCompanion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));
- (KASDKOSLong * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSUserProfileModel____ * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSRedeemResponseData *)doCopyId:(int32_t)id amount:(KASDKOSDouble * _Nullable)amount points:(KASDKOSLong * _Nullable)points name:(NSString * _Nullable)name createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt customer:(KASDKOSUserProfileModel____ * _Nullable)customer __attribute__((swift_name("doCopy(id:amount:points:name:createdAt:updatedAt:customer:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));
@property (readonly) KASDKOSUserProfileModel____ * _Nullable customer __attribute__((swift_name("customer")));
@property (readonly) int32_t id __attribute__((swift_name("id")));
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemResponseData.Companion")))
@interface KASDKOSRedeemResponseDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRedeemResponseDataCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemResponseModel")))
@interface KASDKOSRedeemResponseModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSRedeemResponseData *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSRedeemResponseModelCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSRedeemResponseData *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSRedeemResponseModel *)doCopyData:(KASDKOSRedeemResponseData *)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSRedeemResponseData *data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedeemResponseModel.Companion")))
@interface KASDKOSRedeemResponseModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRedeemResponseModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedemptionModel")))
@interface KASDKOSRedemptionModel : KASDKOSModel
- (instancetype)initWithId:(int32_t)id quantity:(int32_t)quantity __attribute__((swift_name("init(id:quantity:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSRedemptionModelCompanion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The amount of times to redeem this reward */
- (int32_t)component2 __attribute__((swift_name("component2()")));
- (KASDKOSRedemptionModel *)doCopyId:(int32_t)id quantity:(int32_t)quantity __attribute__((swift_name("doCopy(id:quantity:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A unique ID identifying this reward. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The amount of times to redeem this reward */
@property (readonly) int32_t quantity __attribute__((swift_name("quantity")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RedemptionModel.Companion")))
@interface KASDKOSRedemptionModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRedemptionModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData___")))
@interface KASDKOSUserProfileBalanceData___ : KASDKOSBase
- (instancetype)initWithPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("init(points:giftcard:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileBalanceData___Companion *companion __attribute__((swift_name("companion")));

/** The number of points this user currently has. */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** The amount of store credit in the users&#39; e-wallet. */
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile balance data
 */
- (KASDKOSUserProfileBalanceData___ *)doCopyPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("doCopy(points:giftcard:)")));

/**
 * User Profile balance data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile balance data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile balance data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount of store credit in the users&#39; e-wallet. */
@property (readonly) KASDKOSDouble * _Nullable giftcard __attribute__((swift_name("giftcard")));

/** The number of points this user currently has. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData___.Companion")))
@interface KASDKOSUserProfileBalanceData___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile balance data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileBalanceData___Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile balance data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData______")))
@interface KASDKOSUserProfileData______ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData______Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData______ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData______.Companion")))
@interface KASDKOSUserProfileData______Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData______Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude___")))
@interface KASDKOSUserProfileInclude___ : KASDKOSBase
- (instancetype)initWithBalance:(KASDKOSUserProfileBalanceData___ *)balance __attribute__((swift_name("init(balance:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileInclude___Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSUserProfileBalanceData___ *)component1 __attribute__((swift_name("component1()")));

/**
 * Extra user profile data
 */
- (KASDKOSUserProfileInclude___ *)doCopyBalance:(KASDKOSUserProfileBalanceData___ *)balance __attribute__((swift_name("doCopy(balance:)")));

/**
 * Extra user profile data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Extra user profile data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Extra user profile data
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSUserProfileBalanceData___ *balance __attribute__((swift_name("balance")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude___.Companion")))
@interface KASDKOSUserProfileInclude___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Extra user profile data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileInclude___Companion *shared __attribute__((swift_name("shared")));

/**
 * Extra user profile data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel____")))
@interface KASDKOSUserProfileModel____ : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData______ *)data included:(KASDKOSUserProfileInclude___ * _Nullable)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProfileModel____Companion *companion __attribute__((swift_name("companion")));

/** Contains all user profile data */
- (KASDKOSUserProfileData______ *)component1 __attribute__((swift_name("component1()")));

/** Contains user balance data */
- (KASDKOSUserProfileInclude___ * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileModel____ *)doCopyData:(KASDKOSUserProfileData______ *)data included:(KASDKOSUserProfileInclude___ * _Nullable)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user profile data */
@property (readonly) KASDKOSUserProfileData______ *data __attribute__((swift_name("data")));

/** Contains user balance data */
@property (readonly) KASDKOSUserProfileInclude___ * _Nullable included __attribute__((swift_name("included")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel____.Companion")))
@interface KASDKOSUserProfileModel____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileModel____Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Check in with a business. The user may be rewarded for this action according to rules set in the business portal on Kangaroo.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserCheckInApi")))
@interface KASDKOSUserCheckInApi : KASDKOSApi

/**
 * Check in with a business. The user may be rewarded for this action according to rules set in the business portal on Kangaroo.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Check in with a business. The user may be rewarded for this action according to rules set in the business portal on Kangaroo.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserCheckInApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Check in with a business. The user may be rewarded for this action according to rules set in the business portal on Kangaroo.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *)userCheckInCheckInRequest:(KASDKOSCheckInRequest *)checkInRequest __attribute__((swift_name("userCheckIn(checkInRequest:)")));
- (KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *)userCheckInMethods:(NSDictionary<NSString *, id> *)methods __attribute__((swift_name("userCheckIn(methods:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *userCheckInState __attribute__((swift_name("userCheckInState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserCheckInApi.Companion")))
@interface KASDKOSUserCheckInApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserCheckInApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CheckInRequest")))
@interface KASDKOSCheckInRequest : KASDKOSBase
- (instancetype)initWithBranchId:(NSString *)branchId intent:(NSString *)intent __attribute__((swift_name("init(branchId:intent:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSCheckInRequestCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSCheckInRequest *)doCopyBranchId:(NSString *)branchId intent:(NSString *)intent __attribute__((swift_name("doCopy(branchId:intent:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *branchId __attribute__((swift_name("branchId")));
@property (readonly) NSString *intent __attribute__((swift_name("intent")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CheckInRequest.Companion")))
@interface KASDKOSCheckInRequestCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCheckInRequestCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Update a users notification settings. This will enable or disable push, sms, and or email notifications from the selected business.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UpdateNotificationPreferencesApi")))
@interface KASDKOSUpdateNotificationPreferencesApi : KASDKOSApi

/**
 * Update a users notification settings. This will enable or disable push, sms, and or email notifications from the selected business.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Update a users notification settings. This will enable or disable push, sms, and or email notifications from the selected business.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUpdateNotificationPreferencesApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Update a users notification settings. This will enable or disable push, sms, and or email notifications from the selected business.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSNotificationUpdateModel *> *> *)updateNotificationPreferencesNotificationPreferencesRequest:(KASDKOSNotificationPreferencesRequest *)notificationPreferencesRequest __attribute__((swift_name("updateNotificationPreferences(notificationPreferencesRequest:)")));
- (KASDKOSCFlow<KASDKOSResult<KASDKOSNotificationUpdateModel *> *> *)updateNotificationPreferencesMethods:(NSDictionary<NSString *, id> *)methods __attribute__((swift_name("updateNotificationPreferences(methods:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSNotificationUpdateModel *> *> *updateNotificationPreferencesState __attribute__((swift_name("updateNotificationPreferencesState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UpdateNotificationPreferencesApi.Companion")))
@interface KASDKOSUpdateNotificationPreferencesApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUpdateNotificationPreferencesApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Business_")))
@interface KASDKOSBusiness_ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id name:(NSString *)name __attribute__((swift_name("init(id:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBusiness_Companion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this business. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** The name of this business */
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSBusiness_ *)doCopyId:(NSString *)id name:(NSString *)name __attribute__((swift_name("doCopy(id:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A unique ID identifying this business. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** The name of this business */
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Business_.Companion")))
@interface KASDKOSBusiness_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusiness_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NotificationPreferencesRequest")))
@interface KASDKOSNotificationPreferencesRequest : KASDKOSBase
- (instancetype)initWithId:(NSString *)id business:(KASDKOSBusiness_ *)business allowEmail:(KASDKOSBoolean * _Nullable)allowEmail allowSms:(KASDKOSBoolean * _Nullable)allowSms allowPush:(KASDKOSBoolean * _Nullable)allowPush __attribute__((swift_name("init(id:business:allowEmail:allowSms:allowPush:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSNotificationPreferencesRequestCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** The business who&#39;s notification settings this request applies to.  */
- (KASDKOSBusiness_ *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSBoolean * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSNotificationPreferencesRequest *)doCopyId:(NSString *)id business:(KASDKOSBusiness_ *)business allowEmail:(KASDKOSBoolean * _Nullable)allowEmail allowSms:(KASDKOSBoolean * _Nullable)allowSms allowPush:(KASDKOSBoolean * _Nullable)allowPush __attribute__((swift_name("doCopy(id:business:allowEmail:allowSms:allowPush:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSBoolean * _Nullable allowEmail __attribute__((swift_name("allowEmail")));
@property (readonly) KASDKOSBoolean * _Nullable allowPush __attribute__((swift_name("allowPush")));
@property (readonly) KASDKOSBoolean * _Nullable allowSms __attribute__((swift_name("allowSms")));

/** The business who&#39;s notification settings this request applies to.  */
@property (readonly) KASDKOSBusiness_ *business __attribute__((swift_name("business")));
@property (readonly) NSString *id __attribute__((swift_name("id")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NotificationPreferencesRequest.Companion")))
@interface KASDKOSNotificationPreferencesRequestCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSNotificationPreferencesRequestCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NotificationUpdateModel")))
@interface KASDKOSNotificationUpdateModel : KASDKOSModel
- (instancetype)initWithData:(NSArray<KASDKOSNotificationUpdateResponseData *> *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSNotificationUpdateModelCompanion *companion __attribute__((swift_name("companion")));
- (NSArray<KASDKOSNotificationUpdateResponseData *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSNotificationUpdateModel *)doCopyData:(NSArray<KASDKOSNotificationUpdateResponseData *> *)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSNotificationUpdateResponseData *> *data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NotificationUpdateModel.Companion")))
@interface KASDKOSNotificationUpdateModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSNotificationUpdateModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NotificationUpdateResponseData")))
@interface KASDKOSNotificationUpdateResponseData : KASDKOSBase
- (instancetype)initWithId:(NSString *)id business:(KASDKOSBusiness_ *)business allowEmail:(KASDKOSBoolean * _Nullable)allowEmail allowSms:(KASDKOSBoolean * _Nullable)allowSms allowPush:(KASDKOSBoolean * _Nullable)allowPush __attribute__((swift_name("init(id:business:allowEmail:allowSms:allowPush:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSNotificationUpdateResponseDataCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSBusiness_ *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSBoolean * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSNotificationUpdateResponseData *)doCopyId:(NSString *)id business:(KASDKOSBusiness_ *)business allowEmail:(KASDKOSBoolean * _Nullable)allowEmail allowSms:(KASDKOSBoolean * _Nullable)allowSms allowPush:(KASDKOSBoolean * _Nullable)allowPush __attribute__((swift_name("doCopy(id:business:allowEmail:allowSms:allowPush:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSBoolean * _Nullable allowEmail __attribute__((swift_name("allowEmail")));
@property (readonly) KASDKOSBoolean * _Nullable allowPush __attribute__((swift_name("allowPush")));
@property (readonly) KASDKOSBoolean * _Nullable allowSms __attribute__((swift_name("allowSms")));
@property (readonly) KASDKOSBusiness_ *business __attribute__((swift_name("business")));
@property (readonly) NSString *id __attribute__((swift_name("id")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("NotificationUpdateResponseData.Companion")))
@interface KASDKOSNotificationUpdateResponseDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSNotificationUpdateResponseDataCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserAuthenticationApi")))
@interface KASDKOSUserAuthenticationApi : KASDKOSApi
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserAuthenticationApiCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserAuthenticationModel *> *> *)authenticateUserUsername:(NSString *)username password:(NSString *)password __attribute__((swift_name("authenticateUser(username:password:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserAuthenticationModel *> *> *userAuthenticationState __attribute__((swift_name("userAuthenticationState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserAuthenticationApi.Companion")))
@interface KASDKOSUserAuthenticationApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserAuthenticationApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * Represents a successful user authentication request.
 * @property accessToken The access token created for this session. Expires in 24 hours
 * @property refreshToken The refresh token created this session. Expires in 30 days
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserAuthenticationModel")))
@interface KASDKOSUserAuthenticationModel : KASDKOSModel
- (instancetype)initWithTokenType:(NSString * _Nullable)tokenType expiresIn:(KASDKOSInt * _Nullable)expiresIn accessToken:(NSString * _Nullable)accessToken refreshToken:(NSString * _Nullable)refreshToken __attribute__((swift_name("init(tokenType:expiresIn:accessToken:refreshToken:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserAuthenticationModelCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/**
 * Represents a successful user authentication request.
 * @property accessToken The access token created for this session. Expires in 24 hours
 * @property refreshToken The refresh token created this session. Expires in 30 days
 */
- (KASDKOSUserAuthenticationModel *)doCopyTokenType:(NSString * _Nullable)tokenType expiresIn:(KASDKOSInt * _Nullable)expiresIn accessToken:(NSString * _Nullable)accessToken refreshToken:(NSString * _Nullable)refreshToken __attribute__((swift_name("doCopy(tokenType:expiresIn:accessToken:refreshToken:)")));

/**
 * Represents a successful user authentication request.
 * @property accessToken The access token created for this session. Expires in 24 hours
 * @property refreshToken The refresh token created this session. Expires in 30 days
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Represents a successful user authentication request.
 * @property accessToken The access token created for this session. Expires in 24 hours
 * @property refreshToken The refresh token created this session. Expires in 30 days
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Represents a successful user authentication request.
 * @property accessToken The access token created for this session. Expires in 24 hours
 * @property refreshToken The refresh token created this session. Expires in 30 days
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable accessToken __attribute__((swift_name("accessToken")));
@property (readonly) KASDKOSInt * _Nullable expiresIn __attribute__((swift_name("expiresIn")));
@property (readonly) NSString * _Nullable refreshToken __attribute__((swift_name("refreshToken")));
@property (readonly) NSString * _Nullable tokenType __attribute__((swift_name("tokenType")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserAuthenticationModel.Companion")))
@interface KASDKOSUserAuthenticationModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserAuthenticationModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@property (readonly) NSString *ACCESS_TOKEN __attribute__((swift_name("ACCESS_TOKEN")));
@property (readonly) NSString *REFRESH_TOKEN __attribute__((swift_name("REFRESH_TOKEN")));
@end;


/**
 * Get user profile data for this user. [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileApi")))
@interface KASDKOSUserProfileApi : KASDKOSApi

/**
 * Get user profile data for this user. [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get user profile data for this user. [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserProfileApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get user profile data for this user.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel_____ *> *> *)getUserProfile __attribute__((swift_name("getUserProfile()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserProfileModel_____ *> *> *userProfileState __attribute__((swift_name("userProfileState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileApi.Companion")))
@interface KASDKOSUserProfileApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData____")))
@interface KASDKOSUserProfileBalanceData____ : KASDKOSBase
- (instancetype)initWithPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("init(points:giftcard:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileBalanceData____Companion *companion __attribute__((swift_name("companion")));

/** The number of points this user currently has. */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** The amount of store credit in the users&#39; e-wallet. */
- (KASDKOSDouble * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile balance data
 */
- (KASDKOSUserProfileBalanceData____ *)doCopyPoints:(KASDKOSLong * _Nullable)points giftcard:(KASDKOSDouble * _Nullable)giftcard __attribute__((swift_name("doCopy(points:giftcard:)")));

/**
 * User Profile balance data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile balance data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile balance data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount of store credit in the users&#39; e-wallet. */
@property (readonly) KASDKOSDouble * _Nullable giftcard __attribute__((swift_name("giftcard")));

/** The number of points this user currently has. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@end;


/**
 * User Profile balance data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileBalanceData____.Companion")))
@interface KASDKOSUserProfileBalanceData____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile balance data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileBalanceData____Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile balance data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData_______")))
@interface KASDKOSUserProfileData_______ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData_______Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData_______ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData_______.Companion")))
@interface KASDKOSUserProfileData_______Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData_______Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude____")))
@interface KASDKOSUserProfileInclude____ : KASDKOSBase
- (instancetype)initWithBalance:(KASDKOSUserProfileBalanceData____ *)balance __attribute__((swift_name("init(balance:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileInclude____Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSUserProfileBalanceData____ *)component1 __attribute__((swift_name("component1()")));

/**
 * Extra user profile data
 */
- (KASDKOSUserProfileInclude____ *)doCopyBalance:(KASDKOSUserProfileBalanceData____ *)balance __attribute__((swift_name("doCopy(balance:)")));

/**
 * Extra user profile data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Extra user profile data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Extra user profile data
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSUserProfileBalanceData____ *balance __attribute__((swift_name("balance")));
@end;


/**
 * Extra user profile data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileInclude____.Companion")))
@interface KASDKOSUserProfileInclude____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Extra user profile data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileInclude____Companion *shared __attribute__((swift_name("shared")));

/**
 * Extra user profile data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel_____")))
@interface KASDKOSUserProfileModel_____ : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData_______ *)data included:(KASDKOSUserProfileInclude____ * _Nullable)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProfileModel_____Companion *companion __attribute__((swift_name("companion")));

/** Contains all user profile data */
- (KASDKOSUserProfileData_______ *)component1 __attribute__((swift_name("component1()")));

/** Contains user balance data */
- (KASDKOSUserProfileInclude____ * _Nullable)component2 __attribute__((swift_name("component2()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileModel_____ *)doCopyData:(KASDKOSUserProfileData_______ *)data included:(KASDKOSUserProfileInclude____ * _Nullable)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user profile data */
@property (readonly) KASDKOSUserProfileData_______ *data __attribute__((swift_name("data")));

/** Contains user balance data */
@property (readonly) KASDKOSUserProfileInclude____ * _Nullable included __attribute__((swift_name("included")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileModel_____.Companion")))
@interface KASDKOSUserProfileModel_____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileModel_____Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get the list of countries supported by Kangaroo [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CountriesApi")))
@interface KASDKOSCountriesApi : KASDKOSApi

/**
 * Get the list of countries supported by Kangaroo [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get the list of countries supported by Kangaroo [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSCountriesApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get the list of countries supported by Kangaroo
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSCountries *> *> *)getCountries __attribute__((swift_name("getCountries()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSCountries *> *> *countriesState __attribute__((swift_name("countriesState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CountriesApi.Companion")))
@interface KASDKOSCountriesApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCountriesApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * A list of countries supported by Kangaroo
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Countries")))
@interface KASDKOSCountries : KASDKOSModel
- (instancetype)initWithData:(NSArray<KASDKOSCountry *> *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSCountriesCompanion *companion __attribute__((swift_name("companion")));

/** A list of countries supported by Kangaroo */
- (NSArray<KASDKOSCountry *> *)component1 __attribute__((swift_name("component1()")));

/**
 * A list of countries supported by Kangaroo
 */
- (KASDKOSCountries *)doCopyData:(NSArray<KASDKOSCountry *> *)data __attribute__((swift_name("doCopy(data:)")));

/**
 * A list of countries supported by Kangaroo
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A list of countries supported by Kangaroo
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A list of countries supported by Kangaroo
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of countries supported by Kangaroo */
@property (readonly) NSArray<KASDKOSCountry *> *data __attribute__((swift_name("data")));
@end;


/**
 * A list of countries supported by Kangaroo
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Countries.Companion")))
@interface KASDKOSCountriesCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A list of countries supported by Kangaroo
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCountriesCompanion *shared __attribute__((swift_name("shared")));

/**
 * A list of countries supported by Kangaroo
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * A country model
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Country")))
@interface KASDKOSCountry : KASDKOSBase
- (instancetype)initWithId:(int32_t)id name:(NSString * _Nullable)name code:(NSString * _Nullable)code codeIso3:(NSString * _Nullable)codeIso3 phoneCode:(KASDKOSInt * _Nullable)phoneCode __attribute__((swift_name("init(id:name:code:codeIso3:phoneCode:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSCountryCompanion *companion __attribute__((swift_name("companion")));

/** Unique country ID. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The name of this country */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The two character country code for this country. Follows ISO standards.  */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The three character country code for this country. Follows ISO standards.  */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The international phoen code for this country. */
- (KASDKOSInt * _Nullable)component5 __attribute__((swift_name("component5()")));

/**
 * A country model
 */
- (KASDKOSCountry *)doCopyId:(int32_t)id name:(NSString * _Nullable)name code:(NSString * _Nullable)code codeIso3:(NSString * _Nullable)codeIso3 phoneCode:(KASDKOSInt * _Nullable)phoneCode __attribute__((swift_name("doCopy(id:name:code:codeIso3:phoneCode:)")));

/**
 * A country model
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A country model
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A country model
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** The two character country code for this country. Follows ISO standards.  */
@property (readonly) NSString * _Nullable code __attribute__((swift_name("code")));

/** The three character country code for this country. Follows ISO standards.  */
@property (readonly) NSString * _Nullable codeIso3 __attribute__((swift_name("codeIso3")));

/** Unique country ID. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The name of this country */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));

/** The international phoen code for this country. */
@property (readonly) KASDKOSInt * _Nullable phoneCode __attribute__((swift_name("phoneCode")));
@end;


/**
 * A country model
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Country.Companion")))
@interface KASDKOSCountryCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A country model
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCountryCompanion *shared __attribute__((swift_name("shared")));

/**
 * A country model
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Reset a customer PIN. Requires both a verification code and either a phone number or email address  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinResetApi")))
@interface KASDKOSUserPinResetApi : KASDKOSApi

/**
 * Reset a customer PIN. Requires both a verification code and either a phone number or email address  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Reset a customer PIN. Requires both a verification code and either a phone number or email address  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserPinResetApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Reset a customer PIN. Requires both a verification code and either a phone number or email address
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *)requestPinResetVerificationCode:(int32_t)verificationCode email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone countryCode:(NSString * _Nullable)countryCode __attribute__((swift_name("requestPinReset(verificationCode:email:phone:countryCode:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSEmptyResponse *> *> *userPinResetState __attribute__((swift_name("userPinResetState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserPinResetApi.Companion")))
@interface KASDKOSUserPinResetApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserPinResetApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * Get a list of rewards available to this user. [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRewardsApi")))
@interface KASDKOSUserRewardsApi : KASDKOSApi

/**
 * Get a list of rewards available to this user. [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get a list of rewards available to this user. [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserRewardsApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get a list of rewards available to this user.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserRewardsModel *> *> *)getUserRewards __attribute__((swift_name("getUserRewards()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserRewardsModel *> *> *userRewardsState __attribute__((swift_name("userRewardsState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRewardsApi.Companion")))
@interface KASDKOSUserRewardsApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserRewardsApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image____")))
@interface KASDKOSImage____ : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImage____Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage____ *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image____.Companion")))
@interface KASDKOSImage____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImage____Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language_____")))
@interface KASDKOSLanguage_____ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage_____Companion *companion __attribute__((swift_name("companion")));

/** The Kangaroo ID of this language. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The full name of this language (English, French, Spanish) */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage_____ *)doCopyId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));

/** The Kangaroo ID of this language. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The full name of this language (English, French, Spanish) */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language_____.Companion")))
@interface KASDKOSLanguage_____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage_____Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RewardModel")))
@interface KASDKOSRewardModel : KASDKOSModel
- (instancetype)initWithId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished amount:(KASDKOSFloat * _Nullable)amount realValue:(KASDKOSFloat * _Nullable)realValue discountValue:(KASDKOSFloat * _Nullable)discountValue partnerReward:(KASDKOSBoolean * _Nullable)partnerReward redeemForGiftCard:(KASDKOSBoolean * _Nullable)redeemForGiftCard type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage____ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link rewardLanguages:(NSArray<KASDKOSRewardTranslation_ *> * _Nullable)rewardLanguages __attribute__((swift_name("init(id:points:publishAt:expiresAt:isPublished:amount:realValue:discountValue:partnerReward:redeemForGiftCard:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:rewardLanguages:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSRewardModelCompanion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward */
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (KASDKOSBoolean * _Nullable)component10 __attribute__((swift_name("component10()")));
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));
- (NSString * _Nullable)component14 __attribute__((swift_name("component14()")));
- (NSArray<KASDKOSImage____ *> * _Nullable)component15 __attribute__((swift_name("component15()")));
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));
- (NSString * _Nullable)component17 __attribute__((swift_name("component17()")));
- (NSString * _Nullable)component18 __attribute__((swift_name("component18()")));
- (NSArray<KASDKOSRewardTranslation_ *> * _Nullable)component19 __attribute__((swift_name("component19()")));
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSFloat * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSFloat * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSFloat * _Nullable)component8 __attribute__((swift_name("component8()")));
- (KASDKOSBoolean * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSRewardModel *)doCopyId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished amount:(KASDKOSFloat * _Nullable)amount realValue:(KASDKOSFloat * _Nullable)realValue discountValue:(KASDKOSFloat * _Nullable)discountValue partnerReward:(KASDKOSBoolean * _Nullable)partnerReward redeemForGiftCard:(KASDKOSBoolean * _Nullable)redeemForGiftCard type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage____ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link rewardLanguages:(NSArray<KASDKOSRewardTranslation_ *> * _Nullable)rewardLanguages __attribute__((swift_name("doCopy(id:points:publishAt:expiresAt:isPublished:amount:realValue:discountValue:partnerReward:redeemForGiftCard:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:rewardLanguages:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSFloat * _Nullable amount __attribute__((swift_name("amount")));
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSFloat * _Nullable discountValue __attribute__((swift_name("discountValue")));
@property (readonly) NSString * _Nullable expiresAt __attribute__((swift_name("expiresAt")));

/** A unique ID identifying this reward */
@property (readonly) int32_t id __attribute__((swift_name("id")));
@property (readonly) NSArray<KASDKOSImage____ *> * _Nullable images __attribute__((swift_name("images")));
@property (readonly) KASDKOSBoolean * _Nullable isPublished __attribute__((swift_name("isPublished")));
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));
@property (readonly) KASDKOSBoolean * _Nullable neverExpiresFlag __attribute__((swift_name("neverExpiresFlag")));
@property (readonly) KASDKOSBoolean * _Nullable partnerReward __attribute__((swift_name("partnerReward")));
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));
@property (readonly) NSString * _Nullable publishAt __attribute__((swift_name("publishAt")));
@property (readonly) KASDKOSFloat * _Nullable realValue __attribute__((swift_name("realValue")));
@property (readonly) KASDKOSBoolean * _Nullable redeemForGiftCard __attribute__((swift_name("redeemForGiftCard")));
@property (readonly) NSArray<KASDKOSRewardTranslation_ *> * _Nullable rewardLanguages __attribute__((swift_name("rewardLanguages")));
@property (readonly) NSString * _Nullable slug __attribute__((swift_name("slug")));
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RewardModel.Companion")))
@interface KASDKOSRewardModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRewardModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RewardTranslation_")))
@interface KASDKOSRewardTranslation_ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId title:(NSString * _Nullable)title description:(NSString * _Nullable)description termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link language:(KASDKOSLanguage_____ * _Nullable)language __attribute__((swift_name("init(id:languageId:title:description:termsConditions:link:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSRewardTranslation_Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSLanguage_____ * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSRewardTranslation_ *)doCopyId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId title:(NSString * _Nullable)title description:(NSString * _Nullable)description termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link language:(KASDKOSLanguage_____ * _Nullable)language __attribute__((swift_name("doCopy(id:languageId:title:description:termsConditions:link:language:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) int32_t id __attribute__((swift_name("id")));
@property (readonly) KASDKOSLanguage_____ * _Nullable language __attribute__((swift_name("language")));
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("RewardTranslation_.Companion")))
@interface KASDKOSRewardTranslation_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSRewardTranslation_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRewardsData")))
@interface KASDKOSUserRewardsData : KASDKOSBase
- (instancetype)initWithCatalogItems:(NSArray<KASDKOSRewardModel *> *)catalogItems __attribute__((swift_name("init(catalogItems:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserRewardsDataCompanion *companion __attribute__((swift_name("companion")));

/** Contains a list of all rewards available to this user */
- (NSArray<KASDKOSRewardModel *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSUserRewardsData *)doCopyCatalogItems:(NSArray<KASDKOSRewardModel *> *)catalogItems __attribute__((swift_name("doCopy(catalogItems:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains a list of all rewards available to this user */
@property (readonly) NSArray<KASDKOSRewardModel *> *catalogItems __attribute__((swift_name("catalogItems")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRewardsData.Companion")))
@interface KASDKOSUserRewardsDataCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserRewardsDataCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRewardsModel")))
@interface KASDKOSUserRewardsModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserRewardsData *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserRewardsModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains a list of all rewards available to this user */
- (KASDKOSUserRewardsData *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSUserRewardsModel *)doCopyData:(KASDKOSUserRewardsData *)data __attribute__((swift_name("doCopy(data:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains a list of all rewards available to this user */
@property (readonly) KASDKOSUserRewardsData *data __attribute__((swift_name("data")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserRewardsModel.Companion")))
@interface KASDKOSUserRewardsModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserRewardsModelCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get this users campaign messages. Campaign messages are messages sent to this user from the business using the marketing engine. These might also be delivered by sms, email, or push notifications.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CampaignMessagesApi")))
@interface KASDKOSCampaignMessagesApi : KASDKOSApi

/**
 * Get this users campaign messages. Campaign messages are messages sent to this user from the business using the marketing engine. These might also be delivered by sms, email, or push notifications.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get this users campaign messages. Campaign messages are messages sent to this user from the business using the marketing engine. These might also be delivered by sms, email, or push notifications.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSCampaignMessagesApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get this users campaign messages. Campaign messages are messages sent to this user from the business using the marketing engine. These might also be delivered by sms, email, or push notifications.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSCampaignMessagesModel *> *> *)getCampaignMessagesBusinessId:(NSString *)businessId __attribute__((swift_name("getCampaignMessages(businessId:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSCampaignMessagesModel *> *> *campaignMessagesState __attribute__((swift_name("campaignMessagesState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CampaignMessagesApi.Companion")))
@interface KASDKOSCampaignMessagesApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCampaignMessagesApiCompanion *shared __attribute__((swift_name("shared")));
@end;


/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessCategory_")))
@interface KASDKOSBusinessCategory_ : KASDKOSBase
- (instancetype)initWithName:(NSString * _Nullable)name icon:(NSString * _Nullable)icon code:(NSString * _Nullable)code __attribute__((swift_name("init(name:icon:code:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBusinessCategory_Companion *companion __attribute__((swift_name("companion")));

/** Name of this category */
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));

/** Url to this category&#39;s icon */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Unique ategory code for this category */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (KASDKOSBusinessCategory_ *)doCopyName:(NSString * _Nullable)name icon:(NSString * _Nullable)icon code:(NSString * _Nullable)code __attribute__((swift_name("doCopy(name:icon:code:)")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Unique ategory code for this category */
@property (readonly) NSString * _Nullable code __attribute__((swift_name("code")));

/** Url to this category&#39;s icon */
@property (readonly) NSString * _Nullable icon __attribute__((swift_name("icon")));

/** Name of this category */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;


/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessCategory_.Companion")))
@interface KASDKOSBusinessCategory_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessCategory_Companion *shared __attribute__((swift_name("shared")));

/**
 * Details about this business' category. This can be something like cafe, boutique, etc...
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessData_")))
@interface KASDKOSBusinessData_ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id name:(NSString * _Nullable)name loyaltyType:(NSString * _Nullable)loyaltyType conglomerate:(NSString * _Nullable)conglomerate whiteLabel:(NSString * _Nullable)whiteLabel about:(NSString * _Nullable)about logo:(KASDKOSImage_____ * _Nullable)logo logoTransparentBackground:(KASDKOSImage_____ * _Nullable)logoTransparentBackground coverPhoto:(KASDKOSImage_____ * _Nullable)coverPhoto category:(KASDKOSBusinessCategory_ * _Nullable)category __attribute__((swift_name("init(id:name:loyaltyType:conglomerate:whiteLabel:about:logo:logoTransparentBackground:coverPhoto:category:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSBusinessData_Companion *companion __attribute__((swift_name("companion")));

/** Unique business ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSBusinessCategory_ * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The name of this business */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The manner in which this business rewards its customers. This can be by purchase amount of by visit to the store  */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** Whether this is a conglomerate business. Conglomerate businesses are umbrellas for multiple business&#39; in Kangaroo  */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this is a white label business. White label business&#39; don&#39;t appear in the Kangaroo Mobile Customer app, as they usually have their own app.  */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** General about text for the business */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSImage_____ * _Nullable)component7 __attribute__((swift_name("component7()")));
- (KASDKOSImage_____ * _Nullable)component8 __attribute__((swift_name("component8()")));
- (KASDKOSImage_____ * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSBusinessData_ *)doCopyId:(NSString *)id name:(NSString * _Nullable)name loyaltyType:(NSString * _Nullable)loyaltyType conglomerate:(NSString * _Nullable)conglomerate whiteLabel:(NSString * _Nullable)whiteLabel about:(NSString * _Nullable)about logo:(KASDKOSImage_____ * _Nullable)logo logoTransparentBackground:(KASDKOSImage_____ * _Nullable)logoTransparentBackground coverPhoto:(KASDKOSImage_____ * _Nullable)coverPhoto category:(KASDKOSBusinessCategory_ * _Nullable)category __attribute__((swift_name("doCopy(id:name:loyaltyType:conglomerate:whiteLabel:about:logo:logoTransparentBackground:coverPhoto:category:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** General about text for the business */
@property (readonly) NSString * _Nullable about __attribute__((swift_name("about")));
@property (readonly) KASDKOSBusinessCategory_ * _Nullable category __attribute__((swift_name("category")));

/** Whether this is a conglomerate business. Conglomerate businesses are umbrellas for multiple business&#39; in Kangaroo  */
@property (readonly) NSString * _Nullable conglomerate __attribute__((swift_name("conglomerate")));
@property (readonly) KASDKOSImage_____ * _Nullable coverPhoto __attribute__((swift_name("coverPhoto")));

/** Unique business ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));
@property (readonly) KASDKOSImage_____ * _Nullable logo __attribute__((swift_name("logo")));
@property (readonly) KASDKOSImage_____ * _Nullable logoTransparentBackground __attribute__((swift_name("logoTransparentBackground")));

/** The manner in which this business rewards its customers. This can be by purchase amount of by visit to the store  */
@property (readonly) NSString * _Nullable loyaltyType __attribute__((swift_name("loyaltyType")));

/** The name of this business */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));

/** Whether this is a white label business. White label business&#39; don&#39;t appear in the Kangaroo Mobile Customer app, as they usually have their own app.  */
@property (readonly) NSString * _Nullable whiteLabel __attribute__((swift_name("whiteLabel")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("BusinessData_.Companion")))
@interface KASDKOSBusinessData_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSBusinessData_Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Campaign")))
@interface KASDKOSCampaign : KASDKOSBase
- (instancetype)initWithId:(int64_t)id subject:(NSString * _Nullable)subject htmlContent:(NSString * _Nullable)htmlContent plainContent:(NSString * _Nullable)plainContent pushTitle:(NSString * _Nullable)pushTitle pushBody:(NSString * _Nullable)pushBody pushLink:(NSString * _Nullable)pushLink pushImage:(NSString * _Nullable)pushImage offers:(NSArray<KASDKOSOfferModel___ *> * _Nullable)offers business:(KASDKOSBusinessData_ * _Nullable)business __attribute__((swift_name("init(id:subject:htmlContent:plainContent:pushTitle:pushBody:pushLink:pushImage:offers:business:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSCampaignCompanion *companion __attribute__((swift_name("companion")));
- (int64_t)component1 __attribute__((swift_name("component1()")));
- (KASDKOSBusinessData_ * _Nullable)component10 __attribute__((swift_name("component10()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));
- (NSArray<KASDKOSOfferModel___ *> * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
- (KASDKOSCampaign *)doCopyId:(int64_t)id subject:(NSString * _Nullable)subject htmlContent:(NSString * _Nullable)htmlContent plainContent:(NSString * _Nullable)plainContent pushTitle:(NSString * _Nullable)pushTitle pushBody:(NSString * _Nullable)pushBody pushLink:(NSString * _Nullable)pushLink pushImage:(NSString * _Nullable)pushImage offers:(NSArray<KASDKOSOfferModel___ *> * _Nullable)offers business:(KASDKOSBusinessData_ * _Nullable)business __attribute__((swift_name("doCopy(id:subject:htmlContent:plainContent:pushTitle:pushBody:pushLink:pushImage:offers:business:)")));

/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSBusinessData_ * _Nullable business __attribute__((swift_name("business")));
@property (readonly) NSString * _Nullable htmlContent __attribute__((swift_name("htmlContent")));
@property (readonly) int64_t id __attribute__((swift_name("id")));
@property (readonly) NSArray<KASDKOSOfferModel___ *> * _Nullable offers __attribute__((swift_name("offers")));
@property (readonly) NSString * _Nullable plainContent __attribute__((swift_name("plainContent")));
@property (readonly) NSString * _Nullable pushBody __attribute__((swift_name("pushBody")));
@property (readonly) NSString * _Nullable pushImage __attribute__((swift_name("pushImage")));
@property (readonly) NSString * _Nullable pushLink __attribute__((swift_name("pushLink")));
@property (readonly) NSString * _Nullable pushTitle __attribute__((swift_name("pushTitle")));
@property (readonly) NSString * _Nullable subject __attribute__((swift_name("subject")));
@end;


/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Campaign.Companion")))
@interface KASDKOSCampaignCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCampaignCompanion *shared __attribute__((swift_name("shared")));

/**
 * The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CampaignMessage")))
@interface KASDKOSCampaignMessage : KASDKOSBase
- (instancetype)initWithId:(NSString *)id cellEmail:(KASDKOSInt * _Nullable)cellEmail subject:(NSString * _Nullable)subject sentAt:(NSString * _Nullable)sentAt message:(NSString * _Nullable)message campaign:(KASDKOSCampaign * _Nullable)campaign __attribute__((swift_name("init(id:cellEmail:subject:sentAt:message:campaign:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSCampaignMessageCompanion *companion __attribute__((swift_name("companion")));

/** Unique campaign ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** The original delivery method for this campaign */
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The title for this campaign. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The original send date of this campaign. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** A short / simple message for this campaign. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSCampaign * _Nullable)component6 __attribute__((swift_name("component6()")));

/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
- (KASDKOSCampaignMessage *)doCopyId:(NSString *)id cellEmail:(KASDKOSInt * _Nullable)cellEmail subject:(NSString * _Nullable)subject sentAt:(NSString * _Nullable)sentAt message:(NSString * _Nullable)message campaign:(KASDKOSCampaign * _Nullable)campaign __attribute__((swift_name("doCopy(id:cellEmail:subject:sentAt:message:campaign:)")));

/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSCampaign * _Nullable campaign __attribute__((swift_name("campaign")));

/** The original delivery method for this campaign */
@property (readonly) KASDKOSInt * _Nullable cellEmail __attribute__((swift_name("cellEmail")));

/** Unique campaign ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** A short / simple message for this campaign. */
@property (readonly) NSString * _Nullable message __attribute__((swift_name("message")));

/** The original send date of this campaign. */
@property (readonly) NSString * _Nullable sentAt __attribute__((swift_name("sentAt")));

/** The title for this campaign. */
@property (readonly) NSString * _Nullable subject __attribute__((swift_name("subject")));
@end;


/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CampaignMessage.Companion")))
@interface KASDKOSCampaignMessageCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCampaignMessageCompanion *shared __attribute__((swift_name("shared")));

/**
 * Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Contains a list of campaign messages sent to this user
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CampaignMessagesModel")))
@interface KASDKOSCampaignMessagesModel : KASDKOSModel
- (instancetype)initWithData:(NSArray<KASDKOSCampaignMessage *> *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSCampaignMessagesModelCompanion *companion __attribute__((swift_name("companion")));

/** List of campaign messages. */
- (NSArray<KASDKOSCampaignMessage *> *)component1 __attribute__((swift_name("component1()")));

/**
 * Contains a list of campaign messages sent to this user
 */
- (KASDKOSCampaignMessagesModel *)doCopyData:(NSArray<KASDKOSCampaignMessage *> *)data __attribute__((swift_name("doCopy(data:)")));

/**
 * Contains a list of campaign messages sent to this user
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Contains a list of campaign messages sent to this user
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Contains a list of campaign messages sent to this user
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** List of campaign messages. */
@property (readonly) NSArray<KASDKOSCampaignMessage *> *data __attribute__((swift_name("data")));
@end;


/**
 * Contains a list of campaign messages sent to this user
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("CampaignMessagesModel.Companion")))
@interface KASDKOSCampaignMessagesModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Contains a list of campaign messages sent to this user
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSCampaignMessagesModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * Contains a list of campaign messages sent to this user
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image_____")))
@interface KASDKOSImage_____ : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImage_____Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage_____ *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image_____.Companion")))
@interface KASDKOSImage_____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImage_____Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language______")))
@interface KASDKOSLanguage______ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage______Companion *companion __attribute__((swift_name("companion")));

/** The Kangaroo ID of this language. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The full name of this language (English, French, Spanish) */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage______ *)doCopyId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));

/** The Kangaroo ID of this language. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The full name of this language (English, French, Spanish) */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language______.Companion")))
@interface KASDKOSLanguage______Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage______Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction___")))
@interface KASDKOSOfferAction___ : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferAction___Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSOfferAction___ *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction___.Companion")))
@interface KASDKOSOfferAction___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferAction___Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel___")))
@interface KASDKOSOfferModel___ : KASDKOSModel
- (instancetype)initWithId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage_____ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation___ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction___ *> * _Nullable)actions __attribute__((swift_name("init(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSOfferModel___Companion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The minimum purchase amount for this offer to be applied */
- (KASDKOSDouble * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The maximum purchase amount for this offer to be applied. */
- (KASDKOSDouble * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
- (KASDKOSBoolean * _Nullable)component12 __attribute__((swift_name("component12()")));
- (KASDKOSInt * _Nullable)component13 __attribute__((swift_name("component13()")));
- (NSArray<NSString *> * _Nullable)component14 __attribute__((swift_name("component14()")));
- (NSString * _Nullable)component15 __attribute__((swift_name("component15()")));
- (NSString * _Nullable)component16 __attribute__((swift_name("component16()")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
- (NSString * _Nullable)component17 __attribute__((swift_name("component17()")));

/** The offer title. */
- (NSString * _Nullable)component18 __attribute__((swift_name("component18()")));

/** The offer description. */
- (NSString * _Nullable)component19 __attribute__((swift_name("component19()")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The unique slug for this offer */
- (NSString * _Nullable)component20 __attribute__((swift_name("component20()")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
- (NSArray<KASDKOSImage_____ *> * _Nullable)component21 __attribute__((swift_name("component21()")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
- (KASDKOSBoolean * _Nullable)component22 __attribute__((swift_name("component22()")));

/** The terms and conditions attached to this offer. */
- (NSString * _Nullable)component23 __attribute__((swift_name("component23()")));

/** The external link attached to this offer. */
- (NSString * _Nullable)component24 __attribute__((swift_name("component24()")));

/** A list of translations of this offer into different languages. */
- (NSArray<KASDKOSOfferTranslation___ *> * _Nullable)component25 __attribute__((swift_name("component25()")));

/** A list of possible actions to perform on this offer. */
- (NSArray<KASDKOSOfferAction___ *> * _Nullable)component26 __attribute__((swift_name("component26()")));

/** The publication date of this offer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The expiration date of this offer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this offer is currently published or not. */
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
- (KASDKOSBoolean * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The real value  (in $) of this offer */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The discount value (in $) of this offer */
- (KASDKOSDouble * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
- (KASDKOSDouble * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSOfferModel___ *)doCopyId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage_____ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation___ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction___ *> * _Nullable)actions __attribute__((swift_name("doCopy(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of possible actions to perform on this offer. */
@property (readonly) NSArray<KASDKOSOfferAction___ *> * _Nullable actions __attribute__((swift_name("actions")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
@property (readonly) KASDKOSBoolean * _Nullable appsOnly __attribute__((swift_name("appsOnly")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
@property (readonly) KASDKOSBoolean * _Nullable couponConvertible __attribute__((swift_name("couponConvertible")));

/** The offer description. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));

/** The discount value (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable discountValue __attribute__((swift_name("discountValue")));

/** The expiration date of this offer. */
@property (readonly) NSString * _Nullable expiresAt __attribute__((swift_name("expiresAt")));
@property (readonly) NSArray<NSString *> * _Nullable freqDetails __attribute__((swift_name("freqDetails")));

/** A unique ID identifying this reward */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
@property (readonly) NSArray<KASDKOSImage_____ *> * _Nullable images __attribute__((swift_name("images")));

/** Whether this offer is currently published or not. */
@property (readonly) KASDKOSBoolean * _Nullable isPublished __attribute__((swift_name("isPublished")));

/** The external link attached to this offer. */
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));

/** The maximum purchase amount for this offer to be applied. */
@property (readonly) KASDKOSDouble * _Nullable maxPurchase __attribute__((swift_name("maxPurchase")));

/** The minimum purchase amount for this offer to be applied */
@property (readonly) KASDKOSDouble * _Nullable minPurchase __attribute__((swift_name("minPurchase")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
@property (readonly) KASDKOSDouble * _Nullable multipFactor __attribute__((swift_name("multipFactor")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
@property (readonly) KASDKOSBoolean * _Nullable neverExpiresFlag __attribute__((swift_name("neverExpiresFlag")));
@property (readonly) KASDKOSInt * _Nullable offerFrequencyId __attribute__((swift_name("offerFrequencyId")));

/** A list of translations of this offer into different languages. */
@property (readonly) NSArray<KASDKOSOfferTranslation___ *> * _Nullable offerLanguages __attribute__((swift_name("offerLanguages")));
@property (readonly) NSString * _Nullable peakFrom __attribute__((swift_name("peakFrom")));
@property (readonly) NSString * _Nullable peakTo __attribute__((swift_name("peakTo")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The publication date of this offer. */
@property (readonly) NSString * _Nullable publishAt __attribute__((swift_name("publishAt")));

/** The real value  (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable realValue __attribute__((swift_name("realValue")));

/** The unique slug for this offer */
@property (readonly) NSString * _Nullable slug __attribute__((swift_name("slug")));

/** The terms and conditions attached to this offer. */
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));

/** The offer title. */
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel___.Companion")))
@interface KASDKOSOfferModel___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferModel___Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation___")))
@interface KASDKOSOfferTranslation___ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage______ * _Nullable)language __attribute__((swift_name("init(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferTranslation___Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The ID of this specific translation */
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The translated offer title. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The translated offer description. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The translated offer terms and conditions. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The language appropriate link of this offer. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The language for which this translation applies. */
- (KASDKOSLanguage______ * _Nullable)component7 __attribute__((swift_name("component7()")));

/**
 * A language translation of this offer.
 */
- (KASDKOSOfferTranslation___ *)doCopyId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage______ * _Nullable)language __attribute__((swift_name("doCopy(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)")));

/**
 * A language translation of this offer.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A language translation of this offer.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A language translation of this offer.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The language for which this translation applies. */
@property (readonly) KASDKOSLanguage______ * _Nullable language __attribute__((swift_name("language")));

/** The ID of this specific translation */
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));

/** The translated offer description. */
@property (readonly) NSString * _Nullable offerDescription __attribute__((swift_name("offerDescription")));

/** The language appropriate link of this offer. */
@property (readonly) NSString * _Nullable offerLink __attribute__((swift_name("offerLink")));

/** The translated offer terms and conditions. */
@property (readonly) NSString * _Nullable offerTermsConditions __attribute__((swift_name("offerTermsConditions")));

/** The translated offer title. */
@property (readonly) NSString * _Nullable offerTitle __attribute__((swift_name("offerTitle")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation___.Companion")))
@interface KASDKOSOfferTranslation___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A language translation of this offer.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferTranslation___Companion *shared __attribute__((swift_name("shared")));

/**
 * A language translation of this offer.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get user products list [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProductsApi")))
@interface KASDKOSUserProductsApi : KASDKOSApi

/**
 * Get user products list [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get user products list [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSUserProductsApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get user products list
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSUserProductsModel *> *> *)getUserProducts __attribute__((swift_name("getUserProducts()")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSUserProductsModel *> *> *userProductsState __attribute__((swift_name("userProductsState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProductsApi.Companion")))
@interface KASDKOSUserProductsApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProductsApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error___")))
@interface KASDKOSError___ : KASDKOSBase
- (instancetype)initWithCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("init(code:message:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSError___Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSError___ *)doCopyCode:(int32_t)code message:(NSString *)message __attribute__((swift_name("doCopy(code:message:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t code __attribute__((swift_name("code")));
@property (readonly) NSString *message __attribute__((swift_name("message")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Error___.Companion")))
@interface KASDKOSError___Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSError___Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Images_")))
@interface KASDKOSImages_ : KASDKOSBase
- (instancetype)initWithPath:(NSString * _Nullable)path large:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(path:large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImages_Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSImages_ *)doCopyPath:(NSString * _Nullable)path large:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(path:large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable path __attribute__((swift_name("path")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Images_.Companion")))
@interface KASDKOSImages_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImages_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language_______")))
@interface KASDKOSLanguage_______ : KASDKOSBase
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage_______Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage_______ *)doCopyId:(KASDKOSInt * _Nullable)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language_______.Companion")))
@interface KASDKOSLanguage_______Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage_______Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Languages_")))
@interface KASDKOSLanguages_ : KASDKOSBase
- (instancetype)initWithLanguageId:(KASDKOSInt * _Nullable)languageId title:(NSString * _Nullable)title description:(NSString * _Nullable)description language:(KASDKOSLanguage_______ * _Nullable)language __attribute__((swift_name("init(languageId:title:description:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguages_Companion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage_______ * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSLanguages_ *)doCopyLanguageId:(KASDKOSInt * _Nullable)languageId title:(NSString * _Nullable)title description:(NSString * _Nullable)description language:(KASDKOSLanguage_______ * _Nullable)language __attribute__((swift_name("doCopy(languageId:title:description:language:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSLanguage_______ * _Nullable language __attribute__((swift_name("language")));
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Languages_.Companion")))
@interface KASDKOSLanguages_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguages_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Product")))
@interface KASDKOSProduct : KASDKOSModel
- (instancetype)initWithId:(KASDKOSInt * _Nullable)id title:(NSString * _Nullable)title description:(NSString * _Nullable)description images:(NSArray<KASDKOSImages_ *> * _Nullable)images productSku:(NSString * _Nullable)productSku actualPrice:(KASDKOSFloat * _Nullable)actualPrice realPrice:(KASDKOSFloat * _Nullable)realPrice termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link productLanguages:(NSArray<KASDKOSLanguages_ *> * _Nullable)productLanguages __attribute__((swift_name("init(id:title:description:images:productSku:actualPrice:realPrice:termsConditions:link:productLanguages:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSProductCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSInt * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSArray<KASDKOSLanguages_ *> * _Nullable)component10 __attribute__((swift_name("component10()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (NSArray<KASDKOSImages_ *> * _Nullable)component4 __attribute__((swift_name("component4()")));
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));
- (KASDKOSFloat * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSFloat * _Nullable)component7 __attribute__((swift_name("component7()")));
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSProduct *)doCopyId:(KASDKOSInt * _Nullable)id title:(NSString * _Nullable)title description:(NSString * _Nullable)description images:(NSArray<KASDKOSImages_ *> * _Nullable)images productSku:(NSString * _Nullable)productSku actualPrice:(KASDKOSFloat * _Nullable)actualPrice realPrice:(KASDKOSFloat * _Nullable)realPrice termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link productLanguages:(NSArray<KASDKOSLanguages_ *> * _Nullable)productLanguages __attribute__((swift_name("doCopy(id:title:description:images:productSku:actualPrice:realPrice:termsConditions:link:productLanguages:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSFloat * _Nullable actualPrice __attribute__((swift_name("actualPrice")));
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSInt * _Nullable id __attribute__((swift_name("id")));
@property (readonly) NSArray<KASDKOSImages_ *> * _Nullable images __attribute__((swift_name("images")));
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));
@property (readonly) NSArray<KASDKOSLanguages_ *> * _Nullable productLanguages __attribute__((swift_name("productLanguages")));
@property (readonly) NSString * _Nullable productSku __attribute__((swift_name("productSku")));
@property (readonly) KASDKOSFloat * _Nullable realPrice __attribute__((swift_name("realPrice")));
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Product.Companion")))
@interface KASDKOSProductCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSProductCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProductsIncluded")))
@interface KASDKOSUserProductsIncluded : KASDKOSBase
- (instancetype)initWithProducts:(NSArray<KASDKOSProduct *> *)products __attribute__((swift_name("init(products:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProductsIncludedCompanion *companion __attribute__((swift_name("companion")));
- (NSArray<KASDKOSProduct *> *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSUserProductsIncluded *)doCopyProducts:(NSArray<KASDKOSProduct *> *)products __attribute__((swift_name("doCopy(products:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSProduct *> *products __attribute__((swift_name("products")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProductsIncluded.Companion")))
@interface KASDKOSUserProductsIncludedCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProductsIncludedCompanion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Product model class containing user product list
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProductsModel")))
@interface KASDKOSUserProductsModel : KASDKOSModel
- (instancetype)initWithData:(KASDKOSUserProfileData________ *)data included:(KASDKOSUserProductsIncluded *)included __attribute__((swift_name("init(data:included:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSUserProductsModelCompanion *companion __attribute__((swift_name("companion")));

/** Contains all user data */
- (KASDKOSUserProfileData________ *)component1 __attribute__((swift_name("component1()")));

/** Contains all user products data  */
- (KASDKOSUserProductsIncluded *)component2 __attribute__((swift_name("component2()")));

/**
 * User Product model class containing user product list
 */
- (KASDKOSUserProductsModel *)doCopyData:(KASDKOSUserProfileData________ *)data included:(KASDKOSUserProductsIncluded *)included __attribute__((swift_name("doCopy(data:included:)")));

/**
 * User Product model class containing user product list
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Product model class containing user product list
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Product model class containing user product list
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Contains all user data */
@property (readonly) KASDKOSUserProfileData________ *data __attribute__((swift_name("data")));

/** Contains all user products data  */
@property (readonly) KASDKOSUserProductsIncluded *included __attribute__((swift_name("included")));
@end;


/**
 * User Product model class containing user product list
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProductsModel.Companion")))
@interface KASDKOSUserProductsModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Product model class containing user product list
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProductsModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * User Product model class containing user product list
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData________")))
@interface KASDKOSUserProfileData________ : KASDKOSBase
- (instancetype)initWithId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("init(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSUserProfileData________Companion *companion __attribute__((swift_name("companion")));

/** Unique user ID. */
- (NSString *)component1 __attribute__((swift_name("component1()")));

/** Country code associated with this user. */
- (NSString * _Nullable)component10 __attribute__((swift_name("component10()")));

/** Profile photo url associated with this user. */
- (NSString * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Date the account for this user was created. */
- (NSString * _Nullable)component12 __attribute__((swift_name("component12()")));

/** Date the account for this user was last updated. */
- (NSString * _Nullable)component13 __attribute__((swift_name("component13()")));

/** Denotes whether this account has been enabled. */
- (KASDKOSBoolean * _Nullable)component14 __attribute__((swift_name("component14()")));

/** Denotes whether the email address for this user has been verified */
- (KASDKOSBoolean * _Nullable)component15 __attribute__((swift_name("component15()")));

/** Denotes whether the phone number for this user has been verified */
- (KASDKOSBoolean * _Nullable)component16 __attribute__((swift_name("component16()")));

/** Email address identifying this user. */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** Phone number associated with this user. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** First name associated with this user. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Last name associated with this user. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Unique QR code identifying this user. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** Gender associated with this user. */
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));

/** Date of birth associated with this user. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** Primary language assocaited with this user. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * User Profile model class containing user data
 */
- (KASDKOSUserProfileData________ *)doCopyId:(NSString *)id email:(NSString * _Nullable)email phone:(NSString * _Nullable)phone firstName:(NSString * _Nullable)firstName lastName:(NSString * _Nullable)lastName qrcode:(NSString * _Nullable)qrcode gender:(NSString * _Nullable)gender birthDate:(NSString * _Nullable)birthDate language:(NSString * _Nullable)language countryCode:(NSString * _Nullable)countryCode profilePhoto:(NSString * _Nullable)profilePhoto createdAt:(NSString * _Nullable)createdAt updatedAt:(NSString * _Nullable)updatedAt enabled:(KASDKOSBoolean * _Nullable)enabled emailVerified:(KASDKOSBoolean * _Nullable)emailVerified phoneVerified:(KASDKOSBoolean * _Nullable)phoneVerified __attribute__((swift_name("doCopy(id:email:phone:firstName:lastName:qrcode:gender:birthDate:language:countryCode:profilePhoto:createdAt:updatedAt:enabled:emailVerified:phoneVerified:)")));

/**
 * User Profile model class containing user data
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * User Profile model class containing user data
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * User Profile model class containing user data
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** Date of birth associated with this user. */
@property (readonly) NSString * _Nullable birthDate __attribute__((swift_name("birthDate")));

/** Country code associated with this user. */
@property (readonly) NSString * _Nullable countryCode __attribute__((swift_name("countryCode")));

/** Date the account for this user was created. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** Email address identifying this user. */
@property (readonly) NSString * _Nullable email __attribute__((swift_name("email")));

/** Denotes whether the email address for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable emailVerified __attribute__((swift_name("emailVerified")));

/** Denotes whether this account has been enabled. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** First name associated with this user. */
@property (readonly) NSString * _Nullable firstName __attribute__((swift_name("firstName")));

/** Gender associated with this user. */
@property (readonly) NSString * _Nullable gender __attribute__((swift_name("gender")));

/** Unique user ID. */
@property (readonly) NSString *id __attribute__((swift_name("id")));

/** Primary language assocaited with this user. */
@property (readonly) NSString * _Nullable language __attribute__((swift_name("language")));

/** Last name associated with this user. */
@property (readonly) NSString * _Nullable lastName __attribute__((swift_name("lastName")));

/** Phone number associated with this user. */
@property (readonly) NSString * _Nullable phone __attribute__((swift_name("phone")));

/** Denotes whether the phone number for this user has been verified */
@property (readonly) KASDKOSBoolean * _Nullable phoneVerified __attribute__((swift_name("phoneVerified")));

/** Profile photo url associated with this user. */
@property (readonly) NSString * _Nullable profilePhoto __attribute__((swift_name("profilePhoto")));

/** Unique QR code identifying this user. */
@property (readonly) NSString * _Nullable qrcode __attribute__((swift_name("qrcode")));

/** Date the account for this user was last updated. */
@property (readonly) NSString * _Nullable updatedAt __attribute__((swift_name("updatedAt")));
@end;


/**
 * User Profile model class containing user data
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("UserProfileData________.Companion")))
@interface KASDKOSUserProfileData________Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * User Profile model class containing user data
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSUserProfileData________Companion *shared __attribute__((swift_name("shared")));

/**
 * User Profile model class containing user data
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Get this users transfer messages. Transfer messages are points or e-wallet transfers from other users.  [Api] class
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessagesApi")))
@interface KASDKOSTransferMessagesApi : KASDKOSApi

/**
 * Get this users transfer messages. Transfer messages are points or e-wallet transfers from other users.  [Api] class
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));

/**
 * Get this users transfer messages. Transfer messages are points or e-wallet transfers from other users.  [Api] class
 */
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSTransferMessagesApiCompanion *companion __attribute__((swift_name("companion")));

/**
 * Get this users transfer messages. Transfer messages are points or e-wallet transfers from other users.
 */
- (KASDKOSCFlow<KASDKOSResult<KASDKOSTransferMessagesModel *> *> *)getTransferMessagesBusinessId:(NSString *)businessId __attribute__((swift_name("getTransferMessages(businessId:)")));
@property (readonly) KASDKOSCFlow<KASDKOSResult<KASDKOSTransferMessagesModel *> *> *transferMessagesState __attribute__((swift_name("transferMessagesState")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessagesApi.Companion")))
@interface KASDKOSTransferMessagesApiCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessagesApiCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image______")))
@interface KASDKOSImage______ : KASDKOSBase
- (instancetype)initWithLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("init(large:medium:thumbnail:default:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSImage______Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSBoolean * _Nullable)component4 __attribute__((swift_name("component4()")));
- (KASDKOSImage______ *)doCopyLarge:(NSString * _Nullable)large medium:(NSString * _Nullable)medium thumbnail:(NSString * _Nullable)thumbnail default:(KASDKOSBoolean * _Nullable)default_ __attribute__((swift_name("doCopy(large:medium:thumbnail:default:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly, getter=default) KASDKOSBoolean * _Nullable default_ __attribute__((swift_name("default_")));
@property (readonly) NSString * _Nullable large __attribute__((swift_name("large")));
@property (readonly) NSString * _Nullable medium __attribute__((swift_name("medium")));
@property (readonly) NSString * _Nullable thumbnail __attribute__((swift_name("thumbnail")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Image______.Companion")))
@interface KASDKOSImage______Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSImage______Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language________")))
@interface KASDKOSLanguage________ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("init(id:abbreviation:name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSLanguage________Companion *companion __attribute__((swift_name("companion")));

/** The Kangaroo ID of this language. */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
- (NSString * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The full name of this language (English, French, Spanish) */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));
- (KASDKOSLanguage________ *)doCopyId:(int32_t)id abbreviation:(NSString * _Nullable)abbreviation name:(NSString * _Nullable)name __attribute__((swift_name("doCopy(id:abbreviation:name:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  */
@property (readonly) NSString * _Nullable abbreviation __attribute__((swift_name("abbreviation")));

/** The Kangaroo ID of this language. */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The full name of this language (English, French, Spanish) */
@property (readonly) NSString * _Nullable name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Language________.Companion")))
@interface KASDKOSLanguage________Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSLanguage________Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction____")))
@interface KASDKOSOfferAction____ : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferAction____Companion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSOfferAction____ *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferAction____.Companion")))
@interface KASDKOSOfferAction____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferAction____Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel____")))
@interface KASDKOSOfferModel____ : KASDKOSModel
- (instancetype)initWithId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage______ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation____ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction____ *> * _Nullable)actions __attribute__((swift_name("init(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSOfferModel____Companion *companion __attribute__((swift_name("companion")));

/** A unique ID identifying this reward */
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The minimum purchase amount for this offer to be applied */
- (KASDKOSDouble * _Nullable)component10 __attribute__((swift_name("component10()")));

/** The maximum purchase amount for this offer to be applied. */
- (KASDKOSDouble * _Nullable)component11 __attribute__((swift_name("component11()")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
- (KASDKOSBoolean * _Nullable)component12 __attribute__((swift_name("component12()")));
- (KASDKOSInt * _Nullable)component13 __attribute__((swift_name("component13()")));
- (NSArray<NSString *> * _Nullable)component14 __attribute__((swift_name("component14()")));
- (NSString * _Nullable)component15 __attribute__((swift_name("component15()")));
- (NSString * _Nullable)component16 __attribute__((swift_name("component16()")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
- (NSString * _Nullable)component17 __attribute__((swift_name("component17()")));

/** The offer title. */
- (NSString * _Nullable)component18 __attribute__((swift_name("component18()")));

/** The offer description. */
- (NSString * _Nullable)component19 __attribute__((swift_name("component19()")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The unique slug for this offer */
- (NSString * _Nullable)component20 __attribute__((swift_name("component20()")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
- (NSArray<KASDKOSImage______ *> * _Nullable)component21 __attribute__((swift_name("component21()")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
- (KASDKOSBoolean * _Nullable)component22 __attribute__((swift_name("component22()")));

/** The terms and conditions attached to this offer. */
- (NSString * _Nullable)component23 __attribute__((swift_name("component23()")));

/** The external link attached to this offer. */
- (NSString * _Nullable)component24 __attribute__((swift_name("component24()")));

/** A list of translations of this offer into different languages. */
- (NSArray<KASDKOSOfferTranslation____ *> * _Nullable)component25 __attribute__((swift_name("component25()")));

/** A list of possible actions to perform on this offer. */
- (NSArray<KASDKOSOfferAction____ *> * _Nullable)component26 __attribute__((swift_name("component26()")));

/** The publication date of this offer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The expiration date of this offer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** Whether this offer is currently published or not. */
- (KASDKOSBoolean * _Nullable)component5 __attribute__((swift_name("component5()")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
- (KASDKOSBoolean * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The real value  (in $) of this offer */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The discount value (in $) of this offer */
- (KASDKOSDouble * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
- (KASDKOSDouble * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSOfferModel____ *)doCopyId:(int32_t)id points:(KASDKOSLong * _Nullable)points publishAt:(NSString * _Nullable)publishAt expiresAt:(NSString * _Nullable)expiresAt isPublished:(KASDKOSBoolean * _Nullable)isPublished couponConvertible:(KASDKOSBoolean * _Nullable)couponConvertible realValue:(KASDKOSDouble * _Nullable)realValue discountValue:(KASDKOSDouble * _Nullable)discountValue multipFactor:(KASDKOSDouble * _Nullable)multipFactor minPurchase:(KASDKOSDouble * _Nullable)minPurchase maxPurchase:(KASDKOSDouble * _Nullable)maxPurchase appsOnly:(KASDKOSBoolean * _Nullable)appsOnly offerFrequencyId:(KASDKOSInt * _Nullable)offerFrequencyId freqDetails:(NSArray<NSString *> * _Nullable)freqDetails peakFrom:(NSString * _Nullable)peakFrom peakTo:(NSString * _Nullable)peakTo type:(NSString * _Nullable)type title:(NSString * _Nullable)title description:(NSString * _Nullable)description slug:(NSString * _Nullable)slug images:(NSArray<KASDKOSImage______ *> * _Nullable)images neverExpiresFlag:(KASDKOSBoolean * _Nullable)neverExpiresFlag termsConditions:(NSString * _Nullable)termsConditions link:(NSString * _Nullable)link offerLanguages:(NSArray<KASDKOSOfferTranslation____ *> * _Nullable)offerLanguages actions:(NSArray<KASDKOSOfferAction____ *> * _Nullable)actions __attribute__((swift_name("doCopy(id:points:publishAt:expiresAt:isPublished:couponConvertible:realValue:discountValue:multipFactor:minPurchase:maxPurchase:appsOnly:offerFrequencyId:freqDetails:peakFrom:peakTo:type:title:description:slug:images:neverExpiresFlag:termsConditions:link:offerLanguages:actions:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** A list of possible actions to perform on this offer. */
@property (readonly) NSArray<KASDKOSOfferAction____ *> * _Nullable actions __attribute__((swift_name("actions")));

/** Whether this offer must be claimed on a mobile app before being used in store.  */
@property (readonly) KASDKOSBoolean * _Nullable appsOnly __attribute__((swift_name("appsOnly")));

/** Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  */
@property (readonly) KASDKOSBoolean * _Nullable couponConvertible __attribute__((swift_name("couponConvertible")));

/** The offer description. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));

/** The discount value (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable discountValue __attribute__((swift_name("discountValue")));

/** The expiration date of this offer. */
@property (readonly) NSString * _Nullable expiresAt __attribute__((swift_name("expiresAt")));
@property (readonly) NSArray<NSString *> * _Nullable freqDetails __attribute__((swift_name("freqDetails")));

/** A unique ID identifying this reward */
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  */
@property (readonly) NSArray<KASDKOSImage______ *> * _Nullable images __attribute__((swift_name("images")));

/** Whether this offer is currently published or not. */
@property (readonly) KASDKOSBoolean * _Nullable isPublished __attribute__((swift_name("isPublished")));

/** The external link attached to this offer. */
@property (readonly) NSString * _Nullable link __attribute__((swift_name("link")));

/** The maximum purchase amount for this offer to be applied. */
@property (readonly) KASDKOSDouble * _Nullable maxPurchase __attribute__((swift_name("maxPurchase")));

/** The minimum purchase amount for this offer to be applied */
@property (readonly) KASDKOSDouble * _Nullable minPurchase __attribute__((swift_name("minPurchase")));

/** The multiplication factor of this offer. This only applies to Point Multiplier offers.  */
@property (readonly) KASDKOSDouble * _Nullable multipFactor __attribute__((swift_name("multipFactor")));

/** Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  */
@property (readonly) KASDKOSBoolean * _Nullable neverExpiresFlag __attribute__((swift_name("neverExpiresFlag")));
@property (readonly) KASDKOSInt * _Nullable offerFrequencyId __attribute__((swift_name("offerFrequencyId")));

/** A list of translations of this offer into different languages. */
@property (readonly) NSArray<KASDKOSOfferTranslation____ *> * _Nullable offerLanguages __attribute__((swift_name("offerLanguages")));
@property (readonly) NSString * _Nullable peakFrom __attribute__((swift_name("peakFrom")));
@property (readonly) NSString * _Nullable peakTo __attribute__((swift_name("peakTo")));

/** The amount of points required for this offer to be applied. Only used for Convertible Coupons  */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The publication date of this offer. */
@property (readonly) NSString * _Nullable publishAt __attribute__((swift_name("publishAt")));

/** The real value  (in $) of this offer */
@property (readonly) KASDKOSDouble * _Nullable realValue __attribute__((swift_name("realValue")));

/** The unique slug for this offer */
@property (readonly) NSString * _Nullable slug __attribute__((swift_name("slug")));

/** The terms and conditions attached to this offer. */
@property (readonly) NSString * _Nullable termsConditions __attribute__((swift_name("termsConditions")));

/** The offer title. */
@property (readonly) NSString * _Nullable title __attribute__((swift_name("title")));

/** The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferModel____.Companion")))
@interface KASDKOSOfferModel____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferModel____Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation____")))
@interface KASDKOSOfferTranslation____ : KASDKOSBase
- (instancetype)initWithId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage________ * _Nullable)language __attribute__((swift_name("init(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSOfferTranslation____Companion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));

/** The ID of this specific translation */
- (KASDKOSInt * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The translated offer title. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The translated offer description. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The translated offer terms and conditions. */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The language appropriate link of this offer. */
- (NSString * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The language for which this translation applies. */
- (KASDKOSLanguage________ * _Nullable)component7 __attribute__((swift_name("component7()")));

/**
 * A language translation of this offer.
 */
- (KASDKOSOfferTranslation____ *)doCopyId:(int32_t)id languageId:(KASDKOSInt * _Nullable)languageId offerTitle:(NSString * _Nullable)offerTitle offerDescription:(NSString * _Nullable)offerDescription offerTermsConditions:(NSString * _Nullable)offerTermsConditions offerLink:(NSString * _Nullable)offerLink language:(KASDKOSLanguage________ * _Nullable)language __attribute__((swift_name("doCopy(id:languageId:offerTitle:offerDescription:offerTermsConditions:offerLink:language:)")));

/**
 * A language translation of this offer.
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * A language translation of this offer.
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * A language translation of this offer.
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t id __attribute__((swift_name("id")));

/** The language for which this translation applies. */
@property (readonly) KASDKOSLanguage________ * _Nullable language __attribute__((swift_name("language")));

/** The ID of this specific translation */
@property (readonly) KASDKOSInt * _Nullable languageId __attribute__((swift_name("languageId")));

/** The translated offer description. */
@property (readonly) NSString * _Nullable offerDescription __attribute__((swift_name("offerDescription")));

/** The language appropriate link of this offer. */
@property (readonly) NSString * _Nullable offerLink __attribute__((swift_name("offerLink")));

/** The translated offer terms and conditions. */
@property (readonly) NSString * _Nullable offerTermsConditions __attribute__((swift_name("offerTermsConditions")));

/** The translated offer title. */
@property (readonly) NSString * _Nullable offerTitle __attribute__((swift_name("offerTitle")));
@end;


/**
 * A language translation of this offer.
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OfferTranslation____.Companion")))
@interface KASDKOSOfferTranslation____Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * A language translation of this offer.
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSOfferTranslation____Companion *shared __attribute__((swift_name("shared")));

/**
 * A language translation of this offer.
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessage_")))
@interface KASDKOSTransferMessage_ : KASDKOSBase
- (instancetype)initWithId:(int64_t)id typeId:(KASDKOSLong * _Nullable)typeId type:(NSString * _Nullable)type description:(NSString * _Nullable)description points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount hidden:(KASDKOSBoolean * _Nullable)hidden createdAt:(NSString * _Nullable)createdAt offer:(KASDKOSOfferModel____ * _Nullable)offer giftCardQueue:(KASDKOSTransferMessageGiftCardQueue_ * _Nullable)giftCardQueue actions:(NSArray<KASDKOSTransferMessageActions_ *> * _Nullable)actions __attribute__((swift_name("init(id:typeId:type:description:points:amount:hidden:createdAt:offer:giftCardQueue:actions:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferMessage_Companion *companion __attribute__((swift_name("companion")));

/** The unique ID of this transfer. */
- (int64_t)component1 __attribute__((swift_name("component1()")));
- (KASDKOSTransferMessageGiftCardQueue_ * _Nullable)component10 __attribute__((swift_name("component10()")));
- (NSArray<KASDKOSTransferMessageActions_ *> * _Nullable)component11 __attribute__((swift_name("component11()")));

/** The type ID of this transfer. */
- (KASDKOSLong * _Nullable)component2 __attribute__((swift_name("component2()")));

/** A string representation of this transfer type. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The description of this transfer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The amount of points sent in this transfer. */
- (KASDKOSLong * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The amount in $ sent in this transfer. */
- (KASDKOSDouble * _Nullable)component6 __attribute__((swift_name("component6()")));
- (KASDKOSBoolean * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The orignal send date of this transfer. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The gift card in this transfer if applicable. Gift cards are an offer sub-type in Kangaroo.  */
- (KASDKOSOfferModel____ * _Nullable)component9 __attribute__((swift_name("component9()")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (KASDKOSTransferMessage_ *)doCopyId:(int64_t)id typeId:(KASDKOSLong * _Nullable)typeId type:(NSString * _Nullable)type description:(NSString * _Nullable)description points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount hidden:(KASDKOSBoolean * _Nullable)hidden createdAt:(NSString * _Nullable)createdAt offer:(KASDKOSOfferModel____ * _Nullable)offer giftCardQueue:(KASDKOSTransferMessageGiftCardQueue_ * _Nullable)giftCardQueue actions:(NSArray<KASDKOSTransferMessageActions_ *> * _Nullable)actions __attribute__((swift_name("doCopy(id:typeId:type:description:points:amount:hidden:createdAt:offer:giftCardQueue:actions:)")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSArray<KASDKOSTransferMessageActions_ *> * _Nullable actions __attribute__((swift_name("actions")));

/** The amount in $ sent in this transfer. */
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));

/** The orignal send date of this transfer. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** The description of this transfer. */
@property (readonly) NSString * _Nullable description_ __attribute__((swift_name("description_")));
@property (readonly) KASDKOSTransferMessageGiftCardQueue_ * _Nullable giftCardQueue __attribute__((swift_name("giftCardQueue")));
@property (readonly) KASDKOSBoolean * _Nullable hidden __attribute__((swift_name("hidden")));

/** The unique ID of this transfer. */
@property (readonly) int64_t id __attribute__((swift_name("id")));

/** The gift card in this transfer if applicable. Gift cards are an offer sub-type in Kangaroo.  */
@property (readonly) KASDKOSOfferModel____ * _Nullable offer __attribute__((swift_name("offer")));

/** The amount of points sent in this transfer. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** A string representation of this transfer type. */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));

/** The type ID of this transfer. */
@property (readonly) KASDKOSLong * _Nullable typeId __attribute__((swift_name("typeId")));
@end;


/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessage_.Companion")))
@interface KASDKOSTransferMessage_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessage_Companion *shared __attribute__((swift_name("shared")));

/**
 * Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet)
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageActions_")))
@interface KASDKOSTransferMessageActions_ : KASDKOSBase
- (instancetype)initWithType:(NSString * _Nullable)type __attribute__((swift_name("init(type:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferMessageActions_Companion *companion __attribute__((swift_name("companion")));

/** The action type. */
- (NSString * _Nullable)component1 __attribute__((swift_name("component1()")));
- (KASDKOSTransferMessageActions_ *)doCopyType:(NSString * _Nullable)type __attribute__((swift_name("doCopy(type:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** The action type. */
@property (readonly) NSString * _Nullable type __attribute__((swift_name("type")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageActions_.Companion")))
@interface KASDKOSTransferMessageActions_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessageActions_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageGiftCardQueue_")))
@interface KASDKOSTransferMessageGiftCardQueue_ : KASDKOSBase
- (instancetype)initWithId:(KASDKOSLong * _Nullable)id enabled:(KASDKOSBoolean * _Nullable)enabled senderName:(NSString * _Nullable)senderName recipientName:(NSString * _Nullable)recipientName emailPhone:(NSString * _Nullable)emailPhone points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount createdAt:(NSString * _Nullable)createdAt scheduledAt:(NSString * _Nullable)scheduledAt __attribute__((swift_name("init(id:enabled:senderName:recipientName:emailPhone:points:amount:createdAt:scheduledAt:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSTransferMessageGiftCardQueue_Companion *companion __attribute__((swift_name("companion")));

/** The unique ID of this gift_card_queue */
- (KASDKOSLong * _Nullable)component1 __attribute__((swift_name("component1()")));

/** Whether this item is enabled. Usually true. */
- (KASDKOSBoolean * _Nullable)component2 __attribute__((swift_name("component2()")));

/** The name of the sender of this transfer. */
- (NSString * _Nullable)component3 __attribute__((swift_name("component3()")));

/** The name of the recipient of this transfer. */
- (NSString * _Nullable)component4 __attribute__((swift_name("component4()")));

/** The phone number or email address that this transfer was sent to.  */
- (NSString * _Nullable)component5 __attribute__((swift_name("component5()")));

/** The amount of points sent in this transfer. */
- (KASDKOSLong * _Nullable)component6 __attribute__((swift_name("component6()")));

/** The amount in $ sent in this transfer. */
- (KASDKOSDouble * _Nullable)component7 __attribute__((swift_name("component7()")));

/** The orignal creation date of this transfer. */
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));

/** The original scheduled delivery date of this transfer. */
- (NSString * _Nullable)component9 __attribute__((swift_name("component9()")));
- (KASDKOSTransferMessageGiftCardQueue_ *)doCopyId:(KASDKOSLong * _Nullable)id enabled:(KASDKOSBoolean * _Nullable)enabled senderName:(NSString * _Nullable)senderName recipientName:(NSString * _Nullable)recipientName emailPhone:(NSString * _Nullable)emailPhone points:(KASDKOSLong * _Nullable)points amount:(KASDKOSDouble * _Nullable)amount createdAt:(NSString * _Nullable)createdAt scheduledAt:(NSString * _Nullable)scheduledAt __attribute__((swift_name("doCopy(id:enabled:senderName:recipientName:emailPhone:points:amount:createdAt:scheduledAt:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));

/** The amount in $ sent in this transfer. */
@property (readonly) KASDKOSDouble * _Nullable amount __attribute__((swift_name("amount")));

/** The orignal creation date of this transfer. */
@property (readonly) NSString * _Nullable createdAt __attribute__((swift_name("createdAt")));

/** The phone number or email address that this transfer was sent to.  */
@property (readonly) NSString * _Nullable emailPhone __attribute__((swift_name("emailPhone")));

/** Whether this item is enabled. Usually true. */
@property (readonly) KASDKOSBoolean * _Nullable enabled __attribute__((swift_name("enabled")));

/** The unique ID of this gift_card_queue */
@property (readonly) KASDKOSLong * _Nullable id __attribute__((swift_name("id")));

/** The amount of points sent in this transfer. */
@property (readonly) KASDKOSLong * _Nullable points __attribute__((swift_name("points")));

/** The name of the recipient of this transfer. */
@property (readonly) NSString * _Nullable recipientName __attribute__((swift_name("recipientName")));

/** The original scheduled delivery date of this transfer. */
@property (readonly) NSString * _Nullable scheduledAt __attribute__((swift_name("scheduledAt")));

/** The name of the sender of this transfer. */
@property (readonly) NSString * _Nullable senderName __attribute__((swift_name("senderName")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessageGiftCardQueue_.Companion")))
@interface KASDKOSTransferMessageGiftCardQueue_Companion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessageGiftCardQueue_Companion *shared __attribute__((swift_name("shared")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;


/**
 * Contains a list of transfer messages sent to this user
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessagesModel")))
@interface KASDKOSTransferMessagesModel : KASDKOSModel
- (instancetype)initWithData:(NSArray<KASDKOSTransferMessage_ *> *)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));

/**
 * Base DAO object returned from Network results and Database queries.
 * Should be Serializable.
 */
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSTransferMessagesModelCompanion *companion __attribute__((swift_name("companion")));

/** List of transfer messages. */
- (NSArray<KASDKOSTransferMessage_ *> *)component1 __attribute__((swift_name("component1()")));

/**
 * Contains a list of transfer messages sent to this user
 */
- (KASDKOSTransferMessagesModel *)doCopyData:(NSArray<KASDKOSTransferMessage_ *> *)data __attribute__((swift_name("doCopy(data:)")));

/**
 * Contains a list of transfer messages sent to this user
 */
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));

/**
 * Contains a list of transfer messages sent to this user
 */
- (NSUInteger)hash __attribute__((swift_name("hash()")));

/**
 * Contains a list of transfer messages sent to this user
 */
- (NSString *)description __attribute__((swift_name("description()")));

/** List of transfer messages. */
@property (readonly) NSArray<KASDKOSTransferMessage_ *> *data __attribute__((swift_name("data")));
@end;


/**
 * Contains a list of transfer messages sent to this user
 */
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TransferMessagesModel.Companion")))
@interface KASDKOSTransferMessagesModelCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));

/**
 * Contains a list of transfer messages sent to this user
 */
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSTransferMessagesModelCompanion *shared __attribute__((swift_name("shared")));

/**
 * Contains a list of transfer messages sent to this user
 */
- (id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("serializer()")));
@end;

@interface KASDKOSResult (Extensions)
- (KASDKOSSerializedResult<NSString *> *)toJsonResult __attribute__((swift_name("toJsonResult()")));
@end;

@interface KASDKOSCFlow (Extensions)

/**
 * Serializes [BusinessState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeBusinessState __attribute__((swift_name("serializeBusinessState()")));

/**
 * Serializes [UserRegistrationState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserRegistrationState __attribute__((swift_name("serializeUserRegistrationState()")));

/**
 * Serializes [UserPinResetRequestState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserPinResetRequestState __attribute__((swift_name("serializeUserPinResetRequestState()")));

/**
 * Serializes [OfferFacebookShareState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeOfferFacebookShareState __attribute__((swift_name("serializeOfferFacebookShareState()")));

/**
 * Serializes [AlaCarteProductsState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeAlaCarteProductsState __attribute__((swift_name("serializeAlaCarteProductsState()")));

/**
 * Serializes [SocialMediaState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeSocialMediaState __attribute__((swift_name("serializeSocialMediaState()")));

/**
 * Serializes [UserPinUpdateState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserPinUpdateState __attribute__((swift_name("serializeUserPinUpdateState()")));

/**
 * Serializes [UserTransactionHistoryState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserTransactionHistoryState __attribute__((swift_name("serializeUserTransactionHistoryState()")));

/**
 * Serializes [TransferRecallState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeTransferRecallState __attribute__((swift_name("serializeTransferRecallState()")));

/**
 * Serializes [BalanceTransferState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeBalanceTransferState __attribute__((swift_name("serializeBalanceTransferState()")));

/**
 * Serializes [FrequentBuyerState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeFrequentBuyerState __attribute__((swift_name("serializeFrequentBuyerState()")));

/**
 * Serializes [UserOffersState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserOffersState __attribute__((swift_name("serializeUserOffersState()")));

/**
 * Serializes [ClaimOfferState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeClaimOfferState __attribute__((swift_name("serializeClaimOfferState()")));

/**
 * Serializes [UserProfileUpdateState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserProfileUpdateState __attribute__((swift_name("serializeUserProfileUpdateState()")));

/**
 * Serializes [RedeemRewardsState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeRedeemRewardsState __attribute__((swift_name("serializeRedeemRewardsState()")));

/**
 * Serializes [UserCheckInState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserCheckInState __attribute__((swift_name("serializeUserCheckInState()")));

/**
 * Serializes [UpdateNotificationPreferencesState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUpdateNotificationPreferencesState __attribute__((swift_name("serializeUpdateNotificationPreferencesState()")));

/**
 * Serializes [UserAuthenticationState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserAuthenticationState __attribute__((swift_name("serializeUserAuthenticationState()")));

/**
 * Serializes [UserProfileState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserProfileState __attribute__((swift_name("serializeUserProfileState()")));

/**
 * Serializes [CountriesState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeCountriesState __attribute__((swift_name("serializeCountriesState()")));

/**
 * Serializes [UserPinResetState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserPinResetState __attribute__((swift_name("serializeUserPinResetState()")));

/**
 * Serializes [UserRewardsState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserRewardsState __attribute__((swift_name("serializeUserRewardsState()")));

/**
 * Serializes [CampaignMessagesState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeCampaignMessagesState __attribute__((swift_name("serializeCampaignMessagesState()")));

/**
 * Serializes [UserProductsState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeUserProductsState __attribute__((swift_name("serializeUserProductsState()")));

/**
 * Serializes [TransferMessagesState]'s data and returns a new
 * [CFlow] containing data serialized as a JSON [String].
 */
- (KASDKOSCFlow<KASDKOSSerializedResult<NSString *> *> *)serializeTransferMessagesState __attribute__((swift_name("serializeTransferMessagesState()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("LanguageKt")))
@interface KASDKOSLanguageKt : KASDKOSBase
@property (class, readonly) NSString *LangHttpHeader __attribute__((swift_name("LangHttpHeader")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("DoNothingKt")))
@interface KASDKOSDoNothingKt : KASDKOSBase

/**
 * Empty action. Often used in When() statements
 */
@property (class, readonly) KASDKOSKotlinUnit *doNothing __attribute__((swift_name("doNothing")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("FlowUtilsKt")))
@interface KASDKOSFlowUtilsKt : KASDKOSBase

/**
 * Wraps Flow with [CFlow] wrapper
 */
+ (KASDKOSCFlow<id> *)asCFlow:(id<KASDKOSKotlinx_coroutines_coreFlow>)receiver __attribute__((swift_name("asCFlow(_:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("TranslationUtilsKt")))
@interface KASDKOSTranslationUtilsKt : KASDKOSBase
+ (KASDKOSTranslation * _Nullable)findTranslation:(NSArray<KASDKOSTranslation *> *)receiver language:(KASDKOSLanguage *)language __attribute__((swift_name("findTranslation(_:language:)")));
+ (KASDKOSTranslation * _Nullable)findTranslation:(NSArray<KASDKOSTranslation *> *)receiver langCode:(NSString *)langCode __attribute__((swift_name("findTranslation(_:langCode:)")));
@end;

__attribute__((swift_name("RuntimeQuery")))
@interface KASDKOSRuntimeQuery<__covariant RowType> : KASDKOSBase
- (instancetype)initWithQueries:(NSMutableArray<KASDKOSRuntimeQuery<id> *> *)queries mapper:(RowType (^)(id<KASDKOSRuntimeSqlCursor>))mapper __attribute__((swift_name("init(queries:mapper:)"))) __attribute__((objc_designated_initializer));
- (void)addListenerListener:(id<KASDKOSRuntimeQueryListener>)listener __attribute__((swift_name("addListener(listener:)")));
- (id<KASDKOSRuntimeSqlCursor>)execute __attribute__((swift_name("execute()")));
- (NSArray<RowType> *)executeAsList __attribute__((swift_name("executeAsList()")));
- (RowType)executeAsOne __attribute__((swift_name("executeAsOne()")));
- (RowType _Nullable)executeAsOneOrNull __attribute__((swift_name("executeAsOneOrNull()")));
- (void)notifyDataChanged __attribute__((swift_name("notifyDataChanged()")));
- (void)removeListenerListener:(id<KASDKOSRuntimeQueryListener>)listener __attribute__((swift_name("removeListener(listener:)")));
@property (readonly) RowType (^mapper)(id<KASDKOSRuntimeSqlCursor>) __attribute__((swift_name("mapper")));
@end;

__attribute__((swift_name("RuntimeTransactionCallbacks")))
@protocol KASDKOSRuntimeTransactionCallbacks
@required
- (void)afterCommitFunction:(void (^)(void))function __attribute__((swift_name("afterCommit(function:)")));
- (void)afterRollbackFunction:(void (^)(void))function __attribute__((swift_name("afterRollback(function:)")));
@end;

__attribute__((swift_name("RuntimeTransactionWithoutReturn")))
@protocol KASDKOSRuntimeTransactionWithoutReturn <KASDKOSRuntimeTransactionCallbacks>
@required
- (void)rollback __attribute__((swift_name("rollback()")));
- (void)transactionBody:(void (^)(id<KASDKOSRuntimeTransactionWithoutReturn>))body __attribute__((swift_name("transaction(body:)")));
@end;

__attribute__((swift_name("RuntimeTransactionWithReturn")))
@protocol KASDKOSRuntimeTransactionWithReturn <KASDKOSRuntimeTransactionCallbacks>
@required
- (void)rollbackReturnValue:(id _Nullable)returnValue __attribute__((swift_name("rollback(returnValue:)")));
- (id _Nullable)transactionBody_:(id _Nullable (^)(id<KASDKOSRuntimeTransactionWithReturn>))body __attribute__((swift_name("transaction(body_:)")));
@end;

__attribute__((swift_name("Ktor_httpHttpMessageBuilder")))
@protocol KASDKOSKtor_httpHttpMessageBuilder
@required
@property (readonly) KASDKOSKtor_httpHeadersBuilder *headers __attribute__((swift_name("headers")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_client_coreHttpRequestBuilder")))
@interface KASDKOSKtor_client_coreHttpRequestBuilder : KASDKOSBase <KASDKOSKtor_httpHttpMessageBuilder>
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@property (class, readonly, getter=companion) KASDKOSKtor_client_coreHttpRequestBuilderCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSKtor_client_coreHttpRequestData *)build __attribute__((swift_name("build()")));
- (id _Nullable)getCapabilityOrNullKey:(id<KASDKOSKtor_client_coreHttpClientEngineCapability>)key __attribute__((swift_name("getCapabilityOrNull(key:)")));
- (void)setAttributesBlock:(void (^)(id<KASDKOSKtor_utilsAttributes>))block __attribute__((swift_name("setAttributes(block:)")));
- (void)setCapabilityKey:(id<KASDKOSKtor_client_coreHttpClientEngineCapability>)key capability:(id)capability __attribute__((swift_name("setCapability(key:capability:)")));
- (KASDKOSKtor_client_coreHttpRequestBuilder *)takeFromBuilder:(KASDKOSKtor_client_coreHttpRequestBuilder *)builder __attribute__((swift_name("takeFrom(builder:)")));
- (KASDKOSKtor_client_coreHttpRequestBuilder *)takeFromWithExecutionContextBuilder:(KASDKOSKtor_client_coreHttpRequestBuilder *)builder __attribute__((swift_name("takeFromWithExecutionContext(builder:)")));
- (void)urlBlock:(void (^)(KASDKOSKtor_httpURLBuilder *, KASDKOSKtor_httpURLBuilder *))block __attribute__((swift_name("url(block:)")));
@property (readonly) id<KASDKOSKtor_utilsAttributes> attributes __attribute__((swift_name("attributes")));
@property id body __attribute__((swift_name("body")));
@property (readonly) id<KASDKOSKotlinx_coroutines_coreJob> executionContext __attribute__((swift_name("executionContext")));
@property (readonly) KASDKOSKtor_httpHeadersBuilder *headers __attribute__((swift_name("headers")));
@property KASDKOSKtor_httpHttpMethod *method __attribute__((swift_name("method")));
@property (readonly) KASDKOSKtor_httpURLBuilder *url __attribute__((swift_name("url")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinUnit")))
@interface KASDKOSKotlinUnit : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)unit __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKotlinUnit *shared __attribute__((swift_name("shared")));
- (NSString *)description __attribute__((swift_name("description()")));
@end;

__attribute__((swift_name("Ktor_httpHttpAuthHeader")))
@interface KASDKOSKtor_httpHttpAuthHeader : KASDKOSBase
- (instancetype)initWithAuthScheme:(NSString *)authScheme __attribute__((swift_name("init(authScheme:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpHttpAuthHeaderCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)render __attribute__((swift_name("render()")));
- (NSString *)renderEncoding:(KASDKOSKtor_httpHeaderValueEncoding *)encoding __attribute__((swift_name("render(encoding:)")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *authScheme __attribute__((swift_name("authScheme")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreSerializationStrategy")))
@protocol KASDKOSKotlinx_serialization_coreSerializationStrategy
@required
- (void)serializeEncoder:(id<KASDKOSKotlinx_serialization_coreEncoder>)encoder value:(id _Nullable)value __attribute__((swift_name("serialize(encoder:value:)")));
@property (readonly) id<KASDKOSKotlinx_serialization_coreSerialDescriptor> descriptor __attribute__((swift_name("descriptor")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreDeserializationStrategy")))
@protocol KASDKOSKotlinx_serialization_coreDeserializationStrategy
@required
- (id _Nullable)deserializeDecoder:(id<KASDKOSKotlinx_serialization_coreDecoder>)decoder __attribute__((swift_name("deserialize(decoder:)")));
@property (readonly) id<KASDKOSKotlinx_serialization_coreSerialDescriptor> descriptor __attribute__((swift_name("descriptor")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreKSerializer")))
@protocol KASDKOSKotlinx_serialization_coreKSerializer <KASDKOSKotlinx_serialization_coreSerializationStrategy, KASDKOSKotlinx_serialization_coreDeserializationStrategy>
@required
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinArray")))
@interface KASDKOSKotlinArray<T> : KASDKOSBase
+ (instancetype)arrayWithSize:(int32_t)size init:(T _Nullable (^)(KASDKOSInt *))init __attribute__((swift_name("init(size:init:)")));
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
- (T _Nullable)getIndex:(int32_t)index __attribute__((swift_name("get(index:)")));
- (id<KASDKOSKotlinIterator>)iterator __attribute__((swift_name("iterator()")));
- (void)setIndex:(int32_t)index value:(T _Nullable)value __attribute__((swift_name("set(index:value:)")));
@property (readonly) int32_t size __attribute__((swift_name("size")));
@end;

__attribute__((swift_name("KotlinThrowable")))
@interface KASDKOSKotlinThrowable : KASDKOSBase
- (instancetype)initWithMessage:(NSString * _Nullable)message __attribute__((swift_name("init(message:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(cause:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (instancetype)initWithMessage:(NSString * _Nullable)message cause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(message:cause:)"))) __attribute__((objc_designated_initializer));
- (KASDKOSKotlinArray<NSString *> *)getStackTrace __attribute__((swift_name("getStackTrace()")));
- (void)printStackTrace __attribute__((swift_name("printStackTrace()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSKotlinThrowable * _Nullable cause __attribute__((swift_name("cause")));
@property (readonly) NSString * _Nullable message __attribute__((swift_name("message")));
- (NSError *)asError __attribute__((swift_name("asError()")));
@end;

__attribute__((swift_name("KotlinException")))
@interface KASDKOSKotlinException : KASDKOSKotlinThrowable
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (instancetype)initWithMessage:(NSString * _Nullable)message __attribute__((swift_name("init(message:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithMessage:(NSString * _Nullable)message cause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(message:cause:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(cause:)"))) __attribute__((objc_designated_initializer));
@end;

__attribute__((swift_name("KotlinRuntimeException")))
@interface KASDKOSKotlinRuntimeException : KASDKOSKotlinException
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (instancetype)initWithMessage:(NSString * _Nullable)message __attribute__((swift_name("init(message:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithMessage:(NSString * _Nullable)message cause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(message:cause:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(cause:)"))) __attribute__((objc_designated_initializer));
@end;

__attribute__((swift_name("KotlinIllegalStateException")))
@interface KASDKOSKotlinIllegalStateException : KASDKOSKotlinRuntimeException
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (instancetype)initWithMessage:(NSString * _Nullable)message __attribute__((swift_name("init(message:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithMessage:(NSString * _Nullable)message cause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(message:cause:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(cause:)"))) __attribute__((objc_designated_initializer));
@end;

__attribute__((swift_name("KotlinCancellationException")))
@interface KASDKOSKotlinCancellationException : KASDKOSKotlinIllegalStateException
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (instancetype)initWithMessage:(NSString * _Nullable)message __attribute__((swift_name("init(message:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithMessage:(NSString * _Nullable)message cause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(message:cause:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCause:(KASDKOSKotlinThrowable * _Nullable)cause __attribute__((swift_name("init(cause:)"))) __attribute__((objc_designated_initializer));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreFlowCollector")))
@protocol KASDKOSKotlinx_coroutines_coreFlowCollector
@required

/**
 @note This method converts instances of CancellationException to errors.
 Other uncaught Kotlin exceptions are fatal.
*/
- (void)emitValue:(id _Nullable)value completionHandler:(void (^)(KASDKOSKotlinUnit * _Nullable, NSError * _Nullable))completionHandler __attribute__((swift_name("emit(value:completionHandler:)")));
@end;

__attribute__((swift_name("Ktor_ioCloseable")))
@protocol KASDKOSKtor_ioCloseable
@required
- (void)close __attribute__((swift_name("close()")));
@end;

__attribute__((swift_name("KotlinFunction")))
@protocol KASDKOSKotlinFunction
@required
@end;

__attribute__((swift_name("KotlinSuspendFunction0")))
@protocol KASDKOSKotlinSuspendFunction0 <KASDKOSKotlinFunction>
@required

/**
 @note This method converts instances of CancellationException to errors.
 Other uncaught Kotlin exceptions are fatal.
*/
- (void)invokeWithCompletionHandler:(void (^)(id _Nullable_result, NSError * _Nullable))completionHandler __attribute__((swift_name("invoke(completionHandler:)")));
@end;

__attribute__((swift_name("RuntimeCloseable")))
@protocol KASDKOSRuntimeCloseable
@required
- (void)close __attribute__((swift_name("close()")));
@end;

__attribute__((swift_name("RuntimeSqlDriver")))
@protocol KASDKOSRuntimeSqlDriver <KASDKOSRuntimeCloseable>
@required
- (KASDKOSRuntimeTransacterTransaction * _Nullable)currentTransaction __attribute__((swift_name("currentTransaction()")));
- (void)executeIdentifier:(KASDKOSInt * _Nullable)identifier sql:(NSString *)sql parameters:(int32_t)parameters binders:(void (^ _Nullable)(id<KASDKOSRuntimeSqlPreparedStatement>))binders __attribute__((swift_name("execute(identifier:sql:parameters:binders:)")));
- (id<KASDKOSRuntimeSqlCursor>)executeQueryIdentifier:(KASDKOSInt * _Nullable)identifier sql:(NSString *)sql parameters:(int32_t)parameters binders:(void (^ _Nullable)(id<KASDKOSRuntimeSqlPreparedStatement>))binders __attribute__((swift_name("executeQuery(identifier:sql:parameters:binders:)")));
- (KASDKOSRuntimeTransacterTransaction *)doNewTransaction __attribute__((swift_name("doNewTransaction()")));
@end;

__attribute__((swift_name("RuntimeSqlDriverSchema")))
@protocol KASDKOSRuntimeSqlDriverSchema
@required
- (void)createDriver:(id<KASDKOSRuntimeSqlDriver>)driver __attribute__((swift_name("create(driver:)")));
- (void)migrateDriver:(id<KASDKOSRuntimeSqlDriver>)driver oldVersion:(int32_t)oldVersion newVersion:(int32_t)newVersion __attribute__((swift_name("migrate(driver:oldVersion:newVersion:)")));
@property (readonly) int32_t version __attribute__((swift_name("version")));
@end;

__attribute__((swift_name("RuntimeSqlCursor")))
@protocol KASDKOSRuntimeSqlCursor <KASDKOSRuntimeCloseable>
@required
- (KASDKOSKotlinByteArray * _Nullable)getBytesIndex:(int32_t)index __attribute__((swift_name("getBytes(index:)")));
- (KASDKOSDouble * _Nullable)getDoubleIndex:(int32_t)index __attribute__((swift_name("getDouble(index:)")));
- (KASDKOSLong * _Nullable)getLongIndex:(int32_t)index __attribute__((swift_name("getLong(index:)")));
- (NSString * _Nullable)getStringIndex:(int32_t)index __attribute__((swift_name("getString(index:)")));
- (BOOL)next __attribute__((swift_name("next()")));
@end;

__attribute__((swift_name("RuntimeQueryListener")))
@protocol KASDKOSRuntimeQueryListener
@required
- (void)queryResultsChanged __attribute__((swift_name("queryResultsChanged()")));
@end;

__attribute__((swift_name("Ktor_utilsStringValuesBuilder")))
@interface KASDKOSKtor_utilsStringValuesBuilder : KASDKOSBase
- (instancetype)initWithCaseInsensitiveName:(BOOL)caseInsensitiveName size:(int32_t)size __attribute__((swift_name("init(caseInsensitiveName:size:)"))) __attribute__((objc_designated_initializer));
- (void)appendName:(NSString *)name value:(NSString *)value __attribute__((swift_name("append(name:value:)")));
- (void)appendAllStringValues:(id<KASDKOSKtor_utilsStringValues>)stringValues __attribute__((swift_name("appendAll(stringValues:)")));
- (void)appendAllName:(NSString *)name values:(id)values __attribute__((swift_name("appendAll(name:values:)")));
- (void)appendMissingStringValues:(id<KASDKOSKtor_utilsStringValues>)stringValues __attribute__((swift_name("appendMissing(stringValues:)")));
- (void)appendMissingName:(NSString *)name values:(id)values __attribute__((swift_name("appendMissing(name:values:)")));
- (id<KASDKOSKtor_utilsStringValues>)build __attribute__((swift_name("build()")));
- (void)clear __attribute__((swift_name("clear()")));
- (BOOL)containsName:(NSString *)name __attribute__((swift_name("contains(name:)")));
- (BOOL)containsName:(NSString *)name value:(NSString *)value __attribute__((swift_name("contains(name:value:)")));
- (NSSet<id<KASDKOSKotlinMapEntry>> *)entries __attribute__((swift_name("entries()")));
- (NSString * _Nullable)getName:(NSString *)name __attribute__((swift_name("get(name:)")));
- (NSArray<NSString *> * _Nullable)getAllName:(NSString *)name __attribute__((swift_name("getAll(name:)")));
- (BOOL)isEmpty __attribute__((swift_name("isEmpty()")));
- (NSSet<NSString *> *)names __attribute__((swift_name("names()")));
- (void)removeName:(NSString *)name __attribute__((swift_name("remove(name:)")));
- (BOOL)removeName:(NSString *)name value:(NSString *)value __attribute__((swift_name("remove(name:value:)")));
- (void)removeKeysWithNoEntries __attribute__((swift_name("removeKeysWithNoEntries()")));
- (void)setName:(NSString *)name value:(NSString *)value __attribute__((swift_name("set(name:value:)")));
- (void)validateNameName:(NSString *)name __attribute__((swift_name("validateName(name:)")));
- (void)validateValueValue:(NSString *)value __attribute__((swift_name("validateValue(value:)")));
@property BOOL built __attribute__((swift_name("built")));
@property (readonly) BOOL caseInsensitiveName __attribute__((swift_name("caseInsensitiveName")));
@property (readonly) KASDKOSMutableDictionary<NSString *, NSMutableArray<NSString *> *> *values __attribute__((swift_name("values")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHeadersBuilder")))
@interface KASDKOSKtor_httpHeadersBuilder : KASDKOSKtor_utilsStringValuesBuilder
- (instancetype)initWithSize:(int32_t)size __attribute__((swift_name("init(size:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCaseInsensitiveName:(BOOL)caseInsensitiveName size:(int32_t)size __attribute__((swift_name("init(caseInsensitiveName:size:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
- (id<KASDKOSKtor_httpHeaders>)build __attribute__((swift_name("build()")));
- (void)validateNameName:(NSString *)name __attribute__((swift_name("validateName(name:)")));
- (void)validateValueValue:(NSString *)value __attribute__((swift_name("validateValue(value:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_client_coreHttpRequestBuilder.Companion")))
@interface KASDKOSKtor_client_coreHttpRequestBuilderCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_client_coreHttpRequestBuilderCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_client_coreHttpRequestData")))
@interface KASDKOSKtor_client_coreHttpRequestData : KASDKOSBase
- (instancetype)initWithUrl:(KASDKOSKtor_httpUrl *)url method:(KASDKOSKtor_httpHttpMethod *)method headers:(id<KASDKOSKtor_httpHeaders>)headers body:(KASDKOSKtor_httpOutgoingContent *)body executionContext:(id<KASDKOSKotlinx_coroutines_coreJob>)executionContext attributes:(id<KASDKOSKtor_utilsAttributes>)attributes __attribute__((swift_name("init(url:method:headers:body:executionContext:attributes:)"))) __attribute__((objc_designated_initializer));
- (id _Nullable)getCapabilityOrNullKey:(id<KASDKOSKtor_client_coreHttpClientEngineCapability>)key __attribute__((swift_name("getCapabilityOrNull(key:)")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) id<KASDKOSKtor_utilsAttributes> attributes __attribute__((swift_name("attributes")));
@property (readonly) KASDKOSKtor_httpOutgoingContent *body __attribute__((swift_name("body")));
@property (readonly) id<KASDKOSKotlinx_coroutines_coreJob> executionContext __attribute__((swift_name("executionContext")));
@property (readonly) id<KASDKOSKtor_httpHeaders> headers __attribute__((swift_name("headers")));
@property (readonly) KASDKOSKtor_httpHttpMethod *method __attribute__((swift_name("method")));
@property (readonly) KASDKOSKtor_httpUrl *url __attribute__((swift_name("url")));
@end;

__attribute__((swift_name("Ktor_client_coreHttpClientEngineCapability")))
@protocol KASDKOSKtor_client_coreHttpClientEngineCapability
@required
@end;

__attribute__((swift_name("Ktor_utilsAttributes")))
@protocol KASDKOSKtor_utilsAttributes
@required
- (id)computeIfAbsentKey:(KASDKOSKtor_utilsAttributeKey<id> *)key block:(id (^)(void))block __attribute__((swift_name("computeIfAbsent(key:block:)")));
- (BOOL)containsKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("contains(key:)")));
- (id)getKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("get(key:)")));
- (id _Nullable)getOrNullKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("getOrNull(key:)")));
- (void)putKey:(KASDKOSKtor_utilsAttributeKey<id> *)key value:(id)value __attribute__((swift_name("put(key:value:)")));
- (void)removeKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("remove(key:)")));
- (id)takeKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("take(key:)")));
- (id _Nullable)takeOrNullKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("takeOrNull(key:)")));
@property (readonly) NSArray<KASDKOSKtor_utilsAttributeKey<id> *> *allKeys __attribute__((swift_name("allKeys")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpURLBuilder")))
@interface KASDKOSKtor_httpURLBuilder : KASDKOSBase
- (instancetype)initWithProtocol:(KASDKOSKtor_httpURLProtocol *)protocol host:(NSString *)host port:(int32_t)port user:(NSString * _Nullable)user password:(NSString * _Nullable)password encodedPath:(NSString *)encodedPath parameters:(KASDKOSKtor_httpParametersBuilder *)parameters fragment:(NSString *)fragment trailingQuery:(BOOL)trailingQuery __attribute__((swift_name("init(protocol:host:port:user:password:encodedPath:parameters:fragment:trailingQuery:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpURLBuilderCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSKtor_httpUrl *)build __attribute__((swift_name("build()")));
- (NSString *)buildString __attribute__((swift_name("buildString()")));
- (KASDKOSKtor_httpURLBuilder *)pathComponents:(KASDKOSKotlinArray<NSString *> *)components __attribute__((swift_name("path(components:)")));
- (KASDKOSKtor_httpURLBuilder *)pathComponents_:(NSArray<NSString *> *)components __attribute__((swift_name("path(components_:)")));
@property NSString *encodedPath __attribute__((swift_name("encodedPath")));
@property NSString *fragment __attribute__((swift_name("fragment")));
@property NSString *host __attribute__((swift_name("host")));
@property (readonly) KASDKOSKtor_httpParametersBuilder *parameters __attribute__((swift_name("parameters")));
@property NSString * _Nullable password __attribute__((swift_name("password")));
@property int32_t port __attribute__((swift_name("port")));
@property KASDKOSKtor_httpURLProtocol *protocol __attribute__((swift_name("protocol")));
@property BOOL trailingQuery __attribute__((swift_name("trailingQuery")));
@property NSString * _Nullable user __attribute__((swift_name("user")));
@end;

__attribute__((swift_name("KotlinCoroutineContext")))
@protocol KASDKOSKotlinCoroutineContext
@required
- (id _Nullable)foldInitial:(id _Nullable)initial operation:(id _Nullable (^)(id _Nullable, id<KASDKOSKotlinCoroutineContextElement>))operation __attribute__((swift_name("fold(initial:operation:)")));
- (id<KASDKOSKotlinCoroutineContextElement> _Nullable)getKey_:(id<KASDKOSKotlinCoroutineContextKey>)key __attribute__((swift_name("get(key_:)")));
- (id<KASDKOSKotlinCoroutineContext>)minusKeyKey:(id<KASDKOSKotlinCoroutineContextKey>)key __attribute__((swift_name("minusKey(key:)")));
- (id<KASDKOSKotlinCoroutineContext>)plusContext:(id<KASDKOSKotlinCoroutineContext>)context __attribute__((swift_name("plus(context:)")));
@end;

__attribute__((swift_name("KotlinCoroutineContextElement")))
@protocol KASDKOSKotlinCoroutineContextElement <KASDKOSKotlinCoroutineContext>
@required
@property (readonly) id<KASDKOSKotlinCoroutineContextKey> key __attribute__((swift_name("key")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreJob")))
@protocol KASDKOSKotlinx_coroutines_coreJob <KASDKOSKotlinCoroutineContextElement>
@required
- (id<KASDKOSKotlinx_coroutines_coreChildHandle>)attachChildChild:(id<KASDKOSKotlinx_coroutines_coreChildJob>)child __attribute__((swift_name("attachChild(child:)")));
- (void)cancelCause:(KASDKOSKotlinCancellationException * _Nullable)cause __attribute__((swift_name("cancel(cause:)")));
- (KASDKOSKotlinCancellationException *)getCancellationException __attribute__((swift_name("getCancellationException()")));
- (id<KASDKOSKotlinx_coroutines_coreDisposableHandle>)invokeOnCompletionOnCancelling:(BOOL)onCancelling invokeImmediately:(BOOL)invokeImmediately handler:(void (^)(KASDKOSKotlinThrowable * _Nullable))handler __attribute__((swift_name("invokeOnCompletion(onCancelling:invokeImmediately:handler:)")));
- (id<KASDKOSKotlinx_coroutines_coreDisposableHandle>)invokeOnCompletionHandler:(void (^)(KASDKOSKotlinThrowable * _Nullable))handler __attribute__((swift_name("invokeOnCompletion(handler:)")));

/**
 @note This method converts instances of CancellationException to errors.
 Other uncaught Kotlin exceptions are fatal.
*/
- (void)joinWithCompletionHandler:(void (^)(KASDKOSKotlinUnit * _Nullable, NSError * _Nullable))completionHandler __attribute__((swift_name("join(completionHandler:)")));
- (id<KASDKOSKotlinx_coroutines_coreJob>)plusOther:(id<KASDKOSKotlinx_coroutines_coreJob>)other __attribute__((swift_name("plus(other:)"))) __attribute__((unavailable("Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")));
- (BOOL)start __attribute__((swift_name("start()")));
@property (readonly) id<KASDKOSKotlinSequence> children __attribute__((swift_name("children")));
@property (readonly) BOOL isActive __attribute__((swift_name("isActive")));
@property (readonly) BOOL isCancelled __attribute__((swift_name("isCancelled")));
@property (readonly) BOOL isCompleted __attribute__((swift_name("isCompleted")));
@property (readonly) id<KASDKOSKotlinx_coroutines_coreSelectClause0> onJoin __attribute__((swift_name("onJoin")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHttpMethod")))
@interface KASDKOSKtor_httpHttpMethod : KASDKOSBase
- (instancetype)initWithValue:(NSString *)value __attribute__((swift_name("init(value:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpHttpMethodCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (KASDKOSKtor_httpHttpMethod *)doCopyValue:(NSString *)value __attribute__((swift_name("doCopy(value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *value __attribute__((swift_name("value")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHttpAuthHeader.Companion")))
@interface KASDKOSKtor_httpHttpAuthHeaderCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpHttpAuthHeaderCompanion *shared __attribute__((swift_name("shared")));
- (KASDKOSKtor_httpHttpAuthHeaderParameterized *)basicAuthChallengeRealm:(NSString *)realm charset:(KASDKOSKtor_ioCharset * _Nullable)charset __attribute__((swift_name("basicAuthChallenge(realm:charset:)")));
- (KASDKOSKtor_httpHttpAuthHeaderParameterized *)digestAuthChallengeRealm:(NSString *)realm nonce:(NSString *)nonce domain:(NSArray<NSString *> *)domain opaque:(NSString * _Nullable)opaque stale:(KASDKOSBoolean * _Nullable)stale algorithm:(NSString *)algorithm __attribute__((swift_name("digestAuthChallenge(realm:nonce:domain:opaque:stale:algorithm:)")));
@end;

__attribute__((swift_name("KotlinComparable")))
@protocol KASDKOSKotlinComparable
@required
- (int32_t)compareToOther:(id _Nullable)other __attribute__((swift_name("compareTo(other:)")));
@end;

__attribute__((swift_name("KotlinEnum")))
@interface KASDKOSKotlinEnum<E> : KASDKOSBase <KASDKOSKotlinComparable>
- (instancetype)initWithName:(NSString *)name ordinal:(int32_t)ordinal __attribute__((swift_name("init(name:ordinal:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKotlinEnumCompanion *companion __attribute__((swift_name("companion")));
- (int32_t)compareToOther:(E)other __attribute__((swift_name("compareTo(other:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@property (readonly) int32_t ordinal __attribute__((swift_name("ordinal")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHeaderValueEncoding")))
@interface KASDKOSKtor_httpHeaderValueEncoding : KASDKOSKotlinEnum<KASDKOSKtor_httpHeaderValueEncoding *>
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
- (instancetype)initWithName:(NSString *)name ordinal:(int32_t)ordinal __attribute__((swift_name("init(name:ordinal:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
@property (class, readonly) KASDKOSKtor_httpHeaderValueEncoding *quotedWhenRequired __attribute__((swift_name("quotedWhenRequired")));
@property (class, readonly) KASDKOSKtor_httpHeaderValueEncoding *quotedAlways __attribute__((swift_name("quotedAlways")));
@property (class, readonly) KASDKOSKtor_httpHeaderValueEncoding *uriEncode __attribute__((swift_name("uriEncode")));
+ (KASDKOSKotlinArray<KASDKOSKtor_httpHeaderValueEncoding *> *)values __attribute__((swift_name("values()")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreEncoder")))
@protocol KASDKOSKotlinx_serialization_coreEncoder
@required
- (id<KASDKOSKotlinx_serialization_coreCompositeEncoder>)beginCollectionDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor collectionSize:(int32_t)collectionSize __attribute__((swift_name("beginCollection(descriptor:collectionSize:)")));
- (id<KASDKOSKotlinx_serialization_coreCompositeEncoder>)beginStructureDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor __attribute__((swift_name("beginStructure(descriptor:)")));
- (void)encodeBooleanValue:(BOOL)value __attribute__((swift_name("encodeBoolean(value:)")));
- (void)encodeByteValue:(int8_t)value __attribute__((swift_name("encodeByte(value:)")));
- (void)encodeCharValue:(unichar)value __attribute__((swift_name("encodeChar(value:)")));
- (void)encodeDoubleValue:(double)value __attribute__((swift_name("encodeDouble(value:)")));
- (void)encodeEnumEnumDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)enumDescriptor index:(int32_t)index __attribute__((swift_name("encodeEnum(enumDescriptor:index:)")));
- (void)encodeFloatValue:(float)value __attribute__((swift_name("encodeFloat(value:)")));
- (id<KASDKOSKotlinx_serialization_coreEncoder>)encodeInlineInlineDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)inlineDescriptor __attribute__((swift_name("encodeInline(inlineDescriptor:)")));
- (void)encodeIntValue:(int32_t)value __attribute__((swift_name("encodeInt(value:)")));
- (void)encodeLongValue:(int64_t)value __attribute__((swift_name("encodeLong(value:)")));
- (void)encodeNotNullMark __attribute__((swift_name("encodeNotNullMark()")));
- (void)encodeNull __attribute__((swift_name("encodeNull()")));
- (void)encodeNullableSerializableValueSerializer:(id<KASDKOSKotlinx_serialization_coreSerializationStrategy>)serializer value:(id _Nullable)value __attribute__((swift_name("encodeNullableSerializableValue(serializer:value:)")));
- (void)encodeSerializableValueSerializer:(id<KASDKOSKotlinx_serialization_coreSerializationStrategy>)serializer value:(id _Nullable)value __attribute__((swift_name("encodeSerializableValue(serializer:value:)")));
- (void)encodeShortValue:(int16_t)value __attribute__((swift_name("encodeShort(value:)")));
- (void)encodeStringValue:(NSString *)value __attribute__((swift_name("encodeString(value:)")));
@property (readonly) KASDKOSKotlinx_serialization_coreSerializersModule *serializersModule __attribute__((swift_name("serializersModule")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreSerialDescriptor")))
@protocol KASDKOSKotlinx_serialization_coreSerialDescriptor
@required
- (NSArray<id<KASDKOSKotlinAnnotation>> *)getElementAnnotationsIndex:(int32_t)index __attribute__((swift_name("getElementAnnotations(index:)")));
- (id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)getElementDescriptorIndex:(int32_t)index __attribute__((swift_name("getElementDescriptor(index:)")));
- (int32_t)getElementIndexName:(NSString *)name __attribute__((swift_name("getElementIndex(name:)")));
- (NSString *)getElementNameIndex:(int32_t)index __attribute__((swift_name("getElementName(index:)")));
- (BOOL)isElementOptionalIndex:(int32_t)index __attribute__((swift_name("isElementOptional(index:)")));
@property (readonly) NSArray<id<KASDKOSKotlinAnnotation>> *annotations __attribute__((swift_name("annotations")));
@property (readonly) int32_t elementsCount __attribute__((swift_name("elementsCount")));
@property (readonly) BOOL isInline __attribute__((swift_name("isInline")));
@property (readonly) BOOL isNullable __attribute__((swift_name("isNullable")));
@property (readonly) KASDKOSKotlinx_serialization_coreSerialKind *kind __attribute__((swift_name("kind")));
@property (readonly) NSString *serialName __attribute__((swift_name("serialName")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreDecoder")))
@protocol KASDKOSKotlinx_serialization_coreDecoder
@required
- (id<KASDKOSKotlinx_serialization_coreCompositeDecoder>)beginStructureDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor __attribute__((swift_name("beginStructure(descriptor:)")));
- (BOOL)decodeBoolean __attribute__((swift_name("decodeBoolean()")));
- (int8_t)decodeByte __attribute__((swift_name("decodeByte()")));
- (unichar)decodeChar __attribute__((swift_name("decodeChar()")));
- (double)decodeDouble __attribute__((swift_name("decodeDouble()")));
- (int32_t)decodeEnumEnumDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)enumDescriptor __attribute__((swift_name("decodeEnum(enumDescriptor:)")));
- (float)decodeFloat __attribute__((swift_name("decodeFloat()")));
- (id<KASDKOSKotlinx_serialization_coreDecoder>)decodeInlineInlineDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)inlineDescriptor __attribute__((swift_name("decodeInline(inlineDescriptor:)")));
- (int32_t)decodeInt __attribute__((swift_name("decodeInt()")));
- (int64_t)decodeLong __attribute__((swift_name("decodeLong()")));
- (BOOL)decodeNotNullMark __attribute__((swift_name("decodeNotNullMark()")));
- (KASDKOSKotlinNothing * _Nullable)decodeNull __attribute__((swift_name("decodeNull()")));
- (id _Nullable)decodeNullableSerializableValueDeserializer:(id<KASDKOSKotlinx_serialization_coreDeserializationStrategy>)deserializer __attribute__((swift_name("decodeNullableSerializableValue(deserializer:)")));
- (id _Nullable)decodeSerializableValueDeserializer:(id<KASDKOSKotlinx_serialization_coreDeserializationStrategy>)deserializer __attribute__((swift_name("decodeSerializableValue(deserializer:)")));
- (int16_t)decodeShort __attribute__((swift_name("decodeShort()")));
- (NSString *)decodeString __attribute__((swift_name("decodeString()")));
@property (readonly) KASDKOSKotlinx_serialization_coreSerializersModule *serializersModule __attribute__((swift_name("serializersModule")));
@end;

__attribute__((swift_name("KotlinIterator")))
@protocol KASDKOSKotlinIterator
@required
- (BOOL)hasNext __attribute__((swift_name("hasNext()")));
- (id _Nullable)next_ __attribute__((swift_name("next_()")));
@end;

__attribute__((swift_name("RuntimeTransacterTransaction")))
@interface KASDKOSRuntimeTransacterTransaction : KASDKOSBase <KASDKOSRuntimeTransactionCallbacks>
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)afterCommitFunction:(void (^)(void))function __attribute__((swift_name("afterCommit(function:)")));
- (void)afterRollbackFunction:(void (^)(void))function __attribute__((swift_name("afterRollback(function:)")));
- (void)endTransactionSuccessful:(BOOL)successful __attribute__((swift_name("endTransaction(successful:)")));
@property (readonly) KASDKOSRuntimeTransacterTransaction * _Nullable enclosingTransaction __attribute__((swift_name("enclosingTransaction")));
@end;

__attribute__((swift_name("RuntimeSqlPreparedStatement")))
@protocol KASDKOSRuntimeSqlPreparedStatement
@required
- (void)bindBytesIndex:(int32_t)index bytes:(KASDKOSKotlinByteArray * _Nullable)bytes __attribute__((swift_name("bindBytes(index:bytes:)")));
- (void)bindDoubleIndex:(int32_t)index double:(KASDKOSDouble * _Nullable)double_ __attribute__((swift_name("bindDouble(index:double:)")));
- (void)bindLongIndex:(int32_t)index long:(KASDKOSLong * _Nullable)long_ __attribute__((swift_name("bindLong(index:long:)")));
- (void)bindStringIndex:(int32_t)index string:(NSString * _Nullable)string __attribute__((swift_name("bindString(index:string:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinByteArray")))
@interface KASDKOSKotlinByteArray : KASDKOSBase
+ (instancetype)arrayWithSize:(int32_t)size __attribute__((swift_name("init(size:)")));
+ (instancetype)arrayWithSize:(int32_t)size init:(KASDKOSByte *(^)(KASDKOSInt *))init __attribute__((swift_name("init(size:init:)")));
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
- (int8_t)getIndex:(int32_t)index __attribute__((swift_name("get(index:)")));
- (KASDKOSKotlinByteIterator *)iterator __attribute__((swift_name("iterator()")));
- (void)setIndex:(int32_t)index value:(int8_t)value __attribute__((swift_name("set(index:value:)")));
@property (readonly) int32_t size __attribute__((swift_name("size")));
@end;

__attribute__((swift_name("Ktor_utilsStringValues")))
@protocol KASDKOSKtor_utilsStringValues
@required
- (BOOL)containsName:(NSString *)name __attribute__((swift_name("contains(name:)")));
- (BOOL)containsName:(NSString *)name value:(NSString *)value __attribute__((swift_name("contains(name:value:)")));
- (NSSet<id<KASDKOSKotlinMapEntry>> *)entries __attribute__((swift_name("entries()")));
- (void)forEachBody:(void (^)(NSString *, NSArray<NSString *> *))body __attribute__((swift_name("forEach(body:)")));
- (NSString * _Nullable)getName:(NSString *)name __attribute__((swift_name("get(name:)")));
- (NSArray<NSString *> * _Nullable)getAllName:(NSString *)name __attribute__((swift_name("getAll(name:)")));
- (BOOL)isEmpty __attribute__((swift_name("isEmpty()")));
- (NSSet<NSString *> *)names __attribute__((swift_name("names()")));
@property (readonly) BOOL caseInsensitiveName __attribute__((swift_name("caseInsensitiveName")));
@end;

__attribute__((swift_name("KotlinMapEntry")))
@protocol KASDKOSKotlinMapEntry
@required
@property (readonly) id _Nullable key __attribute__((swift_name("key")));
@property (readonly) id _Nullable value __attribute__((swift_name("value")));
@end;

__attribute__((swift_name("Ktor_httpHeaders")))
@protocol KASDKOSKtor_httpHeaders <KASDKOSKtor_utilsStringValues>
@required
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpUrl")))
@interface KASDKOSKtor_httpUrl : KASDKOSBase
- (instancetype)initWithProtocol:(KASDKOSKtor_httpURLProtocol *)protocol host:(NSString *)host specifiedPort:(int32_t)specifiedPort encodedPath:(NSString *)encodedPath parameters:(id<KASDKOSKtor_httpParameters>)parameters fragment:(NSString *)fragment user:(NSString * _Nullable)user password:(NSString * _Nullable)password trailingQuery:(BOOL)trailingQuery __attribute__((swift_name("init(protocol:host:specifiedPort:encodedPath:parameters:fragment:user:password:trailingQuery:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpUrlCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSKtor_httpURLProtocol *)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (int32_t)component3 __attribute__((swift_name("component3()")));
- (NSString *)component4 __attribute__((swift_name("component4()")));
- (id<KASDKOSKtor_httpParameters>)component5 __attribute__((swift_name("component5()")));
- (NSString *)component6 __attribute__((swift_name("component6()")));
- (NSString * _Nullable)component7 __attribute__((swift_name("component7()")));
- (NSString * _Nullable)component8 __attribute__((swift_name("component8()")));
- (BOOL)component9 __attribute__((swift_name("component9()")));
- (KASDKOSKtor_httpUrl *)doCopyProtocol:(KASDKOSKtor_httpURLProtocol *)protocol host:(NSString *)host specifiedPort:(int32_t)specifiedPort encodedPath:(NSString *)encodedPath parameters:(id<KASDKOSKtor_httpParameters>)parameters fragment:(NSString *)fragment user:(NSString * _Nullable)user password:(NSString * _Nullable)password trailingQuery:(BOOL)trailingQuery __attribute__((swift_name("doCopy(protocol:host:specifiedPort:encodedPath:parameters:fragment:user:password:trailingQuery:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *encodedPath __attribute__((swift_name("encodedPath")));
@property (readonly) NSString *fragment __attribute__((swift_name("fragment")));
@property (readonly) NSString *host __attribute__((swift_name("host")));
@property (readonly) id<KASDKOSKtor_httpParameters> parameters __attribute__((swift_name("parameters")));
@property (readonly) NSString * _Nullable password __attribute__((swift_name("password")));
@property (readonly) int32_t port __attribute__((swift_name("port")));
@property (readonly) KASDKOSKtor_httpURLProtocol *protocol __attribute__((swift_name("protocol")));
@property (readonly) int32_t specifiedPort __attribute__((swift_name("specifiedPort")));
@property (readonly) BOOL trailingQuery __attribute__((swift_name("trailingQuery")));
@property (readonly) NSString * _Nullable user __attribute__((swift_name("user")));
@end;

__attribute__((swift_name("Ktor_httpOutgoingContent")))
@interface KASDKOSKtor_httpOutgoingContent : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (id _Nullable)getPropertyKey:(KASDKOSKtor_utilsAttributeKey<id> *)key __attribute__((swift_name("getProperty(key:)")));
- (void)setPropertyKey:(KASDKOSKtor_utilsAttributeKey<id> *)key value:(id _Nullable)value __attribute__((swift_name("setProperty(key:value:)")));
@property (readonly) KASDKOSLong * _Nullable contentLength __attribute__((swift_name("contentLength")));
@property (readonly) KASDKOSKtor_httpContentType * _Nullable contentType __attribute__((swift_name("contentType")));
@property (readonly) id<KASDKOSKtor_httpHeaders> headers __attribute__((swift_name("headers")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode * _Nullable status __attribute__((swift_name("status")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_utilsAttributeKey")))
@interface KASDKOSKtor_utilsAttributeKey<T> : KASDKOSBase
- (instancetype)initWithName:(NSString *)name __attribute__((swift_name("init(name:)"))) __attribute__((objc_designated_initializer));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpURLProtocol")))
@interface KASDKOSKtor_httpURLProtocol : KASDKOSBase
- (instancetype)initWithName:(NSString *)name defaultPort:(int32_t)defaultPort __attribute__((swift_name("init(name:defaultPort:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpURLProtocolCompanion *companion __attribute__((swift_name("companion")));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (int32_t)component2 __attribute__((swift_name("component2()")));
- (KASDKOSKtor_httpURLProtocol *)doCopyName:(NSString *)name defaultPort:(int32_t)defaultPort __attribute__((swift_name("doCopy(name:defaultPort:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) int32_t defaultPort __attribute__((swift_name("defaultPort")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpParametersBuilder")))
@interface KASDKOSKtor_httpParametersBuilder : KASDKOSKtor_utilsStringValuesBuilder
- (instancetype)initWithSize:(int32_t)size urlEncodingOption:(KASDKOSKtor_httpUrlEncodingOption *)urlEncodingOption __attribute__((swift_name("init(size:urlEncodingOption:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithCaseInsensitiveName:(BOOL)caseInsensitiveName size:(int32_t)size __attribute__((swift_name("init(caseInsensitiveName:size:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
- (id<KASDKOSKtor_httpParameters>)build __attribute__((swift_name("build()")));
@property KASDKOSKtor_httpUrlEncodingOption *urlEncodingOption __attribute__((swift_name("urlEncodingOption")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpURLBuilder.Companion")))
@interface KASDKOSKtor_httpURLBuilderCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpURLBuilderCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreDisposableHandle")))
@protocol KASDKOSKotlinx_coroutines_coreDisposableHandle
@required
- (void)dispose __attribute__((swift_name("dispose()")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreChildHandle")))
@protocol KASDKOSKotlinx_coroutines_coreChildHandle <KASDKOSKotlinx_coroutines_coreDisposableHandle>
@required
- (BOOL)childCancelledCause:(KASDKOSKotlinThrowable *)cause __attribute__((swift_name("childCancelled(cause:)")));
@property (readonly) id<KASDKOSKotlinx_coroutines_coreJob> _Nullable parent __attribute__((swift_name("parent")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreChildJob")))
@protocol KASDKOSKotlinx_coroutines_coreChildJob <KASDKOSKotlinx_coroutines_coreJob>
@required
- (void)parentCancelledParentJob:(id<KASDKOSKotlinx_coroutines_coreParentJob>)parentJob __attribute__((swift_name("parentCancelled(parentJob:)")));
@end;

__attribute__((swift_name("KotlinSequence")))
@protocol KASDKOSKotlinSequence
@required
- (id<KASDKOSKotlinIterator>)iterator __attribute__((swift_name("iterator()")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreSelectClause0")))
@protocol KASDKOSKotlinx_coroutines_coreSelectClause0
@required
- (void)registerSelectClause0Select:(id<KASDKOSKotlinx_coroutines_coreSelectInstance>)select block:(id<KASDKOSKotlinSuspendFunction0>)block __attribute__((swift_name("registerSelectClause0(select:block:)")));
@end;

__attribute__((swift_name("KotlinCoroutineContextKey")))
@protocol KASDKOSKotlinCoroutineContextKey
@required
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHttpMethod.Companion")))
@interface KASDKOSKtor_httpHttpMethodCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpHttpMethodCompanion *shared __attribute__((swift_name("shared")));
- (KASDKOSKtor_httpHttpMethod *)parseMethod:(NSString *)method __attribute__((swift_name("parse(method:)")));
@property (readonly) NSArray<KASDKOSKtor_httpHttpMethod *> *DefaultMethods __attribute__((swift_name("DefaultMethods")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Delete __attribute__((swift_name("Delete")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Get __attribute__((swift_name("Get")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Head __attribute__((swift_name("Head")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Options __attribute__((swift_name("Options")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Patch __attribute__((swift_name("Patch")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Post __attribute__((swift_name("Post")));
@property (readonly) KASDKOSKtor_httpHttpMethod *Put __attribute__((swift_name("Put")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHttpAuthHeader.Parameterized")))
@interface KASDKOSKtor_httpHttpAuthHeaderParameterized : KASDKOSKtor_httpHttpAuthHeader
- (instancetype)initWithAuthScheme:(NSString *)authScheme parameters:(NSDictionary<NSString *, NSString *> *)parameters encoding:(KASDKOSKtor_httpHeaderValueEncoding *)encoding __attribute__((swift_name("init(authScheme:parameters:encoding:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithAuthScheme:(NSString *)authScheme parameters:(NSArray<KASDKOSKtor_httpHeaderValueParam *> *)parameters encoding_:(KASDKOSKtor_httpHeaderValueEncoding *)encoding __attribute__((swift_name("init(authScheme:parameters:encoding_:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithAuthScheme:(NSString *)authScheme __attribute__((swift_name("init(authScheme:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString * _Nullable)parameterName:(NSString *)name __attribute__((swift_name("parameter(name:)")));
- (NSString *)render __attribute__((swift_name("render()")));
- (NSString *)renderEncoding:(KASDKOSKtor_httpHeaderValueEncoding *)encoding __attribute__((swift_name("render(encoding:)")));
- (KASDKOSKtor_httpHttpAuthHeaderParameterized *)withParameterName:(NSString *)name value:(NSString *)value __attribute__((swift_name("withParameter(name:value:)")));
- (KASDKOSKtor_httpHttpAuthHeaderParameterized *)withReplacedParameterName:(NSString *)name value:(NSString *)value __attribute__((swift_name("withReplacedParameter(name:value:)")));
@property (readonly) KASDKOSKtor_httpHeaderValueEncoding *encoding __attribute__((swift_name("encoding")));
@property (readonly) NSArray<KASDKOSKtor_httpHeaderValueParam *> *parameters __attribute__((swift_name("parameters")));
@end;

__attribute__((swift_name("Ktor_ioCharset")))
@interface KASDKOSKtor_ioCharset : KASDKOSBase
- (instancetype)initWith_name:(NSString *)_name __attribute__((swift_name("init(_name:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_ioCharsetCompanion *companion __attribute__((swift_name("companion")));
- (KASDKOSKtor_ioCharsetDecoder *)doNewDecoder __attribute__((swift_name("doNewDecoder()")));
- (KASDKOSKtor_ioCharsetEncoder *)doNewEncoder __attribute__((swift_name("doNewEncoder()")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinEnumCompanion")))
@interface KASDKOSKotlinEnumCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKotlinEnumCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreCompositeEncoder")))
@protocol KASDKOSKotlinx_serialization_coreCompositeEncoder
@required
- (void)encodeBooleanElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(BOOL)value __attribute__((swift_name("encodeBooleanElement(descriptor:index:value:)")));
- (void)encodeByteElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(int8_t)value __attribute__((swift_name("encodeByteElement(descriptor:index:value:)")));
- (void)encodeCharElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(unichar)value __attribute__((swift_name("encodeCharElement(descriptor:index:value:)")));
- (void)encodeDoubleElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(double)value __attribute__((swift_name("encodeDoubleElement(descriptor:index:value:)")));
- (void)encodeFloatElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(float)value __attribute__((swift_name("encodeFloatElement(descriptor:index:value:)")));
- (id<KASDKOSKotlinx_serialization_coreEncoder>)encodeInlineElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("encodeInlineElement(descriptor:index:)")));
- (void)encodeIntElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(int32_t)value __attribute__((swift_name("encodeIntElement(descriptor:index:value:)")));
- (void)encodeLongElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(int64_t)value __attribute__((swift_name("encodeLongElement(descriptor:index:value:)")));
- (void)encodeNullableSerializableElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index serializer:(id<KASDKOSKotlinx_serialization_coreSerializationStrategy>)serializer value:(id _Nullable)value __attribute__((swift_name("encodeNullableSerializableElement(descriptor:index:serializer:value:)")));
- (void)encodeSerializableElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index serializer:(id<KASDKOSKotlinx_serialization_coreSerializationStrategy>)serializer value:(id _Nullable)value __attribute__((swift_name("encodeSerializableElement(descriptor:index:serializer:value:)")));
- (void)encodeShortElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(int16_t)value __attribute__((swift_name("encodeShortElement(descriptor:index:value:)")));
- (void)encodeStringElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index value:(NSString *)value __attribute__((swift_name("encodeStringElement(descriptor:index:value:)")));
- (void)endStructureDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor __attribute__((swift_name("endStructure(descriptor:)")));
- (BOOL)shouldEncodeElementDefaultDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("shouldEncodeElementDefault(descriptor:index:)")));
@property (readonly) KASDKOSKotlinx_serialization_coreSerializersModule *serializersModule __attribute__((swift_name("serializersModule")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreSerializersModule")))
@interface KASDKOSKotlinx_serialization_coreSerializersModule : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)dumpToCollector:(id<KASDKOSKotlinx_serialization_coreSerializersModuleCollector>)collector __attribute__((swift_name("dumpTo(collector:)")));
- (id<KASDKOSKotlinx_serialization_coreKSerializer> _Nullable)getContextualKClass:(id<KASDKOSKotlinKClass>)kClass typeArgumentsSerializers:(NSArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *)typeArgumentsSerializers __attribute__((swift_name("getContextual(kClass:typeArgumentsSerializers:)")));
- (id<KASDKOSKotlinx_serialization_coreSerializationStrategy> _Nullable)getPolymorphicBaseClass:(id<KASDKOSKotlinKClass>)baseClass value:(id)value __attribute__((swift_name("getPolymorphic(baseClass:value:)")));
- (id<KASDKOSKotlinx_serialization_coreDeserializationStrategy> _Nullable)getPolymorphicBaseClass:(id<KASDKOSKotlinKClass>)baseClass serializedClassName:(NSString * _Nullable)serializedClassName __attribute__((swift_name("getPolymorphic(baseClass:serializedClassName:)")));
@end;

__attribute__((swift_name("KotlinAnnotation")))
@protocol KASDKOSKotlinAnnotation
@required
@end;

__attribute__((swift_name("Kotlinx_serialization_coreSerialKind")))
@interface KASDKOSKotlinx_serialization_coreSerialKind : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreCompositeDecoder")))
@protocol KASDKOSKotlinx_serialization_coreCompositeDecoder
@required
- (BOOL)decodeBooleanElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeBooleanElement(descriptor:index:)")));
- (int8_t)decodeByteElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeByteElement(descriptor:index:)")));
- (unichar)decodeCharElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeCharElement(descriptor:index:)")));
- (int32_t)decodeCollectionSizeDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor __attribute__((swift_name("decodeCollectionSize(descriptor:)")));
- (double)decodeDoubleElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeDoubleElement(descriptor:index:)")));
- (int32_t)decodeElementIndexDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor __attribute__((swift_name("decodeElementIndex(descriptor:)")));
- (float)decodeFloatElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeFloatElement(descriptor:index:)")));
- (id<KASDKOSKotlinx_serialization_coreDecoder>)decodeInlineElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeInlineElement(descriptor:index:)")));
- (int32_t)decodeIntElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeIntElement(descriptor:index:)")));
- (int64_t)decodeLongElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeLongElement(descriptor:index:)")));
- (id _Nullable)decodeNullableSerializableElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index deserializer:(id<KASDKOSKotlinx_serialization_coreDeserializationStrategy>)deserializer previousValue:(id _Nullable)previousValue __attribute__((swift_name("decodeNullableSerializableElement(descriptor:index:deserializer:previousValue:)")));
- (BOOL)decodeSequentially __attribute__((swift_name("decodeSequentially()")));
- (id _Nullable)decodeSerializableElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index deserializer:(id<KASDKOSKotlinx_serialization_coreDeserializationStrategy>)deserializer previousValue:(id _Nullable)previousValue __attribute__((swift_name("decodeSerializableElement(descriptor:index:deserializer:previousValue:)")));
- (int16_t)decodeShortElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeShortElement(descriptor:index:)")));
- (NSString *)decodeStringElementDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor index:(int32_t)index __attribute__((swift_name("decodeStringElement(descriptor:index:)")));
- (void)endStructureDescriptor:(id<KASDKOSKotlinx_serialization_coreSerialDescriptor>)descriptor __attribute__((swift_name("endStructure(descriptor:)")));
@property (readonly) KASDKOSKotlinx_serialization_coreSerializersModule *serializersModule __attribute__((swift_name("serializersModule")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("KotlinNothing")))
@interface KASDKOSKotlinNothing : KASDKOSBase
@end;

__attribute__((swift_name("KotlinByteIterator")))
@interface KASDKOSKotlinByteIterator : KASDKOSBase <KASDKOSKotlinIterator>
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (KASDKOSByte *)next_ __attribute__((swift_name("next_()")));
- (int8_t)nextByte __attribute__((swift_name("nextByte()")));
@end;

__attribute__((swift_name("Ktor_httpParameters")))
@protocol KASDKOSKtor_httpParameters <KASDKOSKtor_utilsStringValues>
@required
@property (readonly) KASDKOSKtor_httpUrlEncodingOption *urlEncodingOption __attribute__((swift_name("urlEncodingOption")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpUrl.Companion")))
@interface KASDKOSKtor_httpUrlCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpUrlCompanion *shared __attribute__((swift_name("shared")));
@end;

__attribute__((swift_name("Ktor_httpHeaderValueWithParameters")))
@interface KASDKOSKtor_httpHeaderValueWithParameters : KASDKOSBase
- (instancetype)initWithContent:(NSString *)content parameters:(NSArray<KASDKOSKtor_httpHeaderValueParam *> *)parameters __attribute__((swift_name("init(content:parameters:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpHeaderValueWithParametersCompanion *companion __attribute__((swift_name("companion")));
- (NSString * _Nullable)parameterName:(NSString *)name __attribute__((swift_name("parameter(name:)")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *content __attribute__((swift_name("content")));
@property (readonly) NSArray<KASDKOSKtor_httpHeaderValueParam *> *parameters __attribute__((swift_name("parameters")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpContentType")))
@interface KASDKOSKtor_httpContentType : KASDKOSKtor_httpHeaderValueWithParameters
- (instancetype)initWithContentType:(NSString *)contentType contentSubtype:(NSString *)contentSubtype parameters:(NSArray<KASDKOSKtor_httpHeaderValueParam *> *)parameters __attribute__((swift_name("init(contentType:contentSubtype:parameters:)"))) __attribute__((objc_designated_initializer));
- (instancetype)initWithContent:(NSString *)content parameters:(NSArray<KASDKOSKtor_httpHeaderValueParam *> *)parameters __attribute__((swift_name("init(content:parameters:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
@property (class, readonly, getter=companion) KASDKOSKtor_httpContentTypeCompanion *companion __attribute__((swift_name("companion")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (BOOL)matchPattern:(KASDKOSKtor_httpContentType *)pattern __attribute__((swift_name("match(pattern:)")));
- (BOOL)matchPattern_:(NSString *)pattern __attribute__((swift_name("match(pattern_:)")));
- (KASDKOSKtor_httpContentType *)withParameterName:(NSString *)name value:(NSString *)value __attribute__((swift_name("withParameter(name:value:)")));
- (KASDKOSKtor_httpContentType *)withoutParameters __attribute__((swift_name("withoutParameters()")));
@property (readonly) NSString *contentSubtype __attribute__((swift_name("contentSubtype")));
@property (readonly) NSString *contentType __attribute__((swift_name("contentType")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHttpStatusCode")))
@interface KASDKOSKtor_httpHttpStatusCode : KASDKOSBase
- (instancetype)initWithValue:(int32_t)value description:(NSString *)description __attribute__((swift_name("init(value:description:)"))) __attribute__((objc_designated_initializer));
@property (class, readonly, getter=companion) KASDKOSKtor_httpHttpStatusCodeCompanion *companion __attribute__((swift_name("companion")));
- (int32_t)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSKtor_httpHttpStatusCode *)doCopyValue:(int32_t)value description:(NSString *)description __attribute__((swift_name("doCopy(value:description:)")));
- (KASDKOSKtor_httpHttpStatusCode *)descriptionValue:(NSString *)value __attribute__((swift_name("description(value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *description_ __attribute__((swift_name("description_")));
@property (readonly) int32_t value __attribute__((swift_name("value")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpURLProtocol.Companion")))
@interface KASDKOSKtor_httpURLProtocolCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpURLProtocolCompanion *shared __attribute__((swift_name("shared")));
- (KASDKOSKtor_httpURLProtocol *)createOrDefaultName:(NSString *)name __attribute__((swift_name("createOrDefault(name:)")));
@property (readonly) KASDKOSKtor_httpURLProtocol *HTTP __attribute__((swift_name("HTTP")));
@property (readonly) KASDKOSKtor_httpURLProtocol *HTTPS __attribute__((swift_name("HTTPS")));
@property (readonly) KASDKOSKtor_httpURLProtocol *SOCKS __attribute__((swift_name("SOCKS")));
@property (readonly) KASDKOSKtor_httpURLProtocol *WS __attribute__((swift_name("WS")));
@property (readonly) KASDKOSKtor_httpURLProtocol *WSS __attribute__((swift_name("WSS")));
@property (readonly) NSDictionary<NSString *, KASDKOSKtor_httpURLProtocol *> *byName __attribute__((swift_name("byName")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpUrlEncodingOption")))
@interface KASDKOSKtor_httpUrlEncodingOption : KASDKOSKotlinEnum<KASDKOSKtor_httpUrlEncodingOption *>
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
- (instancetype)initWithName:(NSString *)name ordinal:(int32_t)ordinal __attribute__((swift_name("init(name:ordinal:)"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
@property (class, readonly) KASDKOSKtor_httpUrlEncodingOption *default_ __attribute__((swift_name("default_")));
@property (class, readonly) KASDKOSKtor_httpUrlEncodingOption *keyOnly __attribute__((swift_name("keyOnly")));
@property (class, readonly) KASDKOSKtor_httpUrlEncodingOption *valueOnly __attribute__((swift_name("valueOnly")));
@property (class, readonly) KASDKOSKtor_httpUrlEncodingOption *noEncoding __attribute__((swift_name("noEncoding")));
+ (KASDKOSKotlinArray<KASDKOSKtor_httpUrlEncodingOption *> *)values __attribute__((swift_name("values()")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreParentJob")))
@protocol KASDKOSKotlinx_coroutines_coreParentJob <KASDKOSKotlinx_coroutines_coreJob>
@required
- (KASDKOSKotlinCancellationException *)getChildJobCancellationCause __attribute__((swift_name("getChildJobCancellationCause()")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreSelectInstance")))
@protocol KASDKOSKotlinx_coroutines_coreSelectInstance
@required
- (void)disposeOnSelectHandle:(id<KASDKOSKotlinx_coroutines_coreDisposableHandle>)handle __attribute__((swift_name("disposeOnSelect(handle:)")));
- (id _Nullable)performAtomicTrySelectDesc:(KASDKOSKotlinx_coroutines_coreAtomicDesc *)desc __attribute__((swift_name("performAtomicTrySelect(desc:)")));
- (void)resumeSelectWithExceptionException:(KASDKOSKotlinThrowable *)exception __attribute__((swift_name("resumeSelectWithException(exception:)")));
- (BOOL)trySelect __attribute__((swift_name("trySelect()")));
- (id _Nullable)trySelectOtherOtherOp:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp * _Nullable)otherOp __attribute__((swift_name("trySelectOther(otherOp:)")));
@property (readonly) id<KASDKOSKotlinContinuation> completion __attribute__((swift_name("completion")));
@property (readonly) BOOL isSelected __attribute__((swift_name("isSelected")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHeaderValueParam")))
@interface KASDKOSKtor_httpHeaderValueParam : KASDKOSBase
- (instancetype)initWithName:(NSString *)name value:(NSString *)value __attribute__((swift_name("init(name:value:)"))) __attribute__((objc_designated_initializer));
- (NSString *)component1 __attribute__((swift_name("component1()")));
- (NSString *)component2 __attribute__((swift_name("component2()")));
- (KASDKOSKtor_httpHeaderValueParam *)doCopyName:(NSString *)name value:(NSString *)value __attribute__((swift_name("doCopy(name:value:)")));
- (BOOL)isEqual:(id _Nullable)other __attribute__((swift_name("isEqual(_:)")));
- (NSUInteger)hash __attribute__((swift_name("hash()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) NSString *name __attribute__((swift_name("name")));
@property (readonly) NSString *value __attribute__((swift_name("value")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_ioCharset.Companion")))
@interface KASDKOSKtor_ioCharsetCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_ioCharsetCompanion *shared __attribute__((swift_name("shared")));
- (KASDKOSKtor_ioCharset *)forNameName:(NSString *)name __attribute__((swift_name("forName(name:)")));
@end;

__attribute__((swift_name("Ktor_ioCharsetDecoder")))
@interface KASDKOSKtor_ioCharsetDecoder : KASDKOSBase
- (instancetype)initWith_charset:(KASDKOSKtor_ioCharset *)_charset __attribute__((swift_name("init(_charset:)"))) __attribute__((objc_designated_initializer));
@end;

__attribute__((swift_name("Ktor_ioCharsetEncoder")))
@interface KASDKOSKtor_ioCharsetEncoder : KASDKOSBase
- (instancetype)initWith_charset:(KASDKOSKtor_ioCharset *)_charset __attribute__((swift_name("init(_charset:)"))) __attribute__((objc_designated_initializer));
@end;

__attribute__((swift_name("Kotlinx_serialization_coreSerializersModuleCollector")))
@protocol KASDKOSKotlinx_serialization_coreSerializersModuleCollector
@required
- (void)contextualKClass:(id<KASDKOSKotlinKClass>)kClass provider:(id<KASDKOSKotlinx_serialization_coreKSerializer> (^)(NSArray<id<KASDKOSKotlinx_serialization_coreKSerializer>> *))provider __attribute__((swift_name("contextual(kClass:provider:)")));
- (void)contextualKClass:(id<KASDKOSKotlinKClass>)kClass serializer:(id<KASDKOSKotlinx_serialization_coreKSerializer>)serializer __attribute__((swift_name("contextual(kClass:serializer:)")));
- (void)polymorphicBaseClass:(id<KASDKOSKotlinKClass>)baseClass actualClass:(id<KASDKOSKotlinKClass>)actualClass actualSerializer:(id<KASDKOSKotlinx_serialization_coreKSerializer>)actualSerializer __attribute__((swift_name("polymorphic(baseClass:actualClass:actualSerializer:)")));
- (void)polymorphicDefaultBaseClass:(id<KASDKOSKotlinKClass>)baseClass defaultSerializerProvider:(id<KASDKOSKotlinx_serialization_coreDeserializationStrategy> _Nullable (^)(NSString * _Nullable))defaultSerializerProvider __attribute__((swift_name("polymorphicDefault(baseClass:defaultSerializerProvider:)")));
@end;

__attribute__((swift_name("KotlinKDeclarationContainer")))
@protocol KASDKOSKotlinKDeclarationContainer
@required
@end;

__attribute__((swift_name("KotlinKAnnotatedElement")))
@protocol KASDKOSKotlinKAnnotatedElement
@required
@end;

__attribute__((swift_name("KotlinKClassifier")))
@protocol KASDKOSKotlinKClassifier
@required
@end;

__attribute__((swift_name("KotlinKClass")))
@protocol KASDKOSKotlinKClass <KASDKOSKotlinKDeclarationContainer, KASDKOSKotlinKAnnotatedElement, KASDKOSKotlinKClassifier>
@required
- (BOOL)isInstanceValue:(id _Nullable)value __attribute__((swift_name("isInstance(value:)")));
@property (readonly) NSString * _Nullable qualifiedName __attribute__((swift_name("qualifiedName")));
@property (readonly) NSString * _Nullable simpleName __attribute__((swift_name("simpleName")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHeaderValueWithParameters.Companion")))
@interface KASDKOSKtor_httpHeaderValueWithParametersCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpHeaderValueWithParametersCompanion *shared __attribute__((swift_name("shared")));
- (id _Nullable)parseValue:(NSString *)value init:(id _Nullable (^)(NSString *, NSArray<KASDKOSKtor_httpHeaderValueParam *> *))init __attribute__((swift_name("parse(value:init:)")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpContentType.Companion")))
@interface KASDKOSKtor_httpContentTypeCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpContentTypeCompanion *shared __attribute__((swift_name("shared")));
- (KASDKOSKtor_httpContentType *)parseValue:(NSString *)value __attribute__((swift_name("parse(value:)")));
@property (readonly) KASDKOSKtor_httpContentType *Any __attribute__((swift_name("Any")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Ktor_httpHttpStatusCode.Companion")))
@interface KASDKOSKtor_httpHttpStatusCodeCompanion : KASDKOSBase
+ (instancetype)alloc __attribute__((unavailable));
+ (instancetype)allocWithZone:(struct _NSZone *)zone __attribute__((unavailable));
+ (instancetype)companion __attribute__((swift_name("init()")));
@property (class, readonly, getter=shared) KASDKOSKtor_httpHttpStatusCodeCompanion *shared __attribute__((swift_name("shared")));
- (KASDKOSKtor_httpHttpStatusCode *)fromValueValue:(int32_t)value __attribute__((swift_name("fromValue(value:)")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Accepted __attribute__((swift_name("Accepted")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *BadGateway __attribute__((swift_name("BadGateway")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *BadRequest __attribute__((swift_name("BadRequest")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Conflict __attribute__((swift_name("Conflict")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Continue __attribute__((swift_name("Continue")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Created __attribute__((swift_name("Created")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *ExpectationFailed __attribute__((swift_name("ExpectationFailed")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *FailedDependency __attribute__((swift_name("FailedDependency")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Forbidden __attribute__((swift_name("Forbidden")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Found __attribute__((swift_name("Found")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *GatewayTimeout __attribute__((swift_name("GatewayTimeout")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Gone __attribute__((swift_name("Gone")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *InsufficientStorage __attribute__((swift_name("InsufficientStorage")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *InternalServerError __attribute__((swift_name("InternalServerError")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *LengthRequired __attribute__((swift_name("LengthRequired")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Locked __attribute__((swift_name("Locked")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *MethodNotAllowed __attribute__((swift_name("MethodNotAllowed")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *MovedPermanently __attribute__((swift_name("MovedPermanently")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *MultiStatus __attribute__((swift_name("MultiStatus")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *MultipleChoices __attribute__((swift_name("MultipleChoices")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *NoContent __attribute__((swift_name("NoContent")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *NonAuthoritativeInformation __attribute__((swift_name("NonAuthoritativeInformation")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *NotAcceptable __attribute__((swift_name("NotAcceptable")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *NotFound __attribute__((swift_name("NotFound")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *NotImplemented __attribute__((swift_name("NotImplemented")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *NotModified __attribute__((swift_name("NotModified")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *OK __attribute__((swift_name("OK")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *PartialContent __attribute__((swift_name("PartialContent")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *PayloadTooLarge __attribute__((swift_name("PayloadTooLarge")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *PaymentRequired __attribute__((swift_name("PaymentRequired")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *PermanentRedirect __attribute__((swift_name("PermanentRedirect")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *PreconditionFailed __attribute__((swift_name("PreconditionFailed")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Processing __attribute__((swift_name("Processing")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *ProxyAuthenticationRequired __attribute__((swift_name("ProxyAuthenticationRequired")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *RequestHeaderFieldTooLarge __attribute__((swift_name("RequestHeaderFieldTooLarge")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *RequestTimeout __attribute__((swift_name("RequestTimeout")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *RequestURITooLong __attribute__((swift_name("RequestURITooLong")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *RequestedRangeNotSatisfiable __attribute__((swift_name("RequestedRangeNotSatisfiable")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *ResetContent __attribute__((swift_name("ResetContent")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *SeeOther __attribute__((swift_name("SeeOther")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *ServiceUnavailable __attribute__((swift_name("ServiceUnavailable")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *SwitchProxy __attribute__((swift_name("SwitchProxy")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *SwitchingProtocols __attribute__((swift_name("SwitchingProtocols")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *TemporaryRedirect __attribute__((swift_name("TemporaryRedirect")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *TooManyRequests __attribute__((swift_name("TooManyRequests")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *Unauthorized __attribute__((swift_name("Unauthorized")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *UnprocessableEntity __attribute__((swift_name("UnprocessableEntity")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *UnsupportedMediaType __attribute__((swift_name("UnsupportedMediaType")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *UpgradeRequired __attribute__((swift_name("UpgradeRequired")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *UseProxy __attribute__((swift_name("UseProxy")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *VariantAlsoNegotiates __attribute__((swift_name("VariantAlsoNegotiates")));
@property (readonly) KASDKOSKtor_httpHttpStatusCode *VersionNotSupported __attribute__((swift_name("VersionNotSupported")));
@property (readonly) NSArray<KASDKOSKtor_httpHttpStatusCode *> *allStatusCodes __attribute__((swift_name("allStatusCodes")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreAtomicDesc")))
@interface KASDKOSKotlinx_coroutines_coreAtomicDesc : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)completeOp:(KASDKOSKotlinx_coroutines_coreAtomicOp<id> *)op failure:(id _Nullable)failure __attribute__((swift_name("complete(op:failure:)")));
- (id _Nullable)prepareOp:(KASDKOSKotlinx_coroutines_coreAtomicOp<id> *)op __attribute__((swift_name("prepare(op:)")));
@property KASDKOSKotlinx_coroutines_coreAtomicOp<id> *atomicOp __attribute__((swift_name("atomicOp")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreOpDescriptor")))
@interface KASDKOSKotlinx_coroutines_coreOpDescriptor : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (BOOL)isEarlierThanThat:(KASDKOSKotlinx_coroutines_coreOpDescriptor *)that __attribute__((swift_name("isEarlierThan(that:)")));
- (id _Nullable)performAffected:(id _Nullable)affected __attribute__((swift_name("perform(affected:)")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSKotlinx_coroutines_coreAtomicOp<id> * _Nullable atomicOp __attribute__((swift_name("atomicOp")));
@end;

__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("Kotlinx_coroutines_coreLockFreeLinkedListNode.PrepareOp")))
@interface KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp : KASDKOSKotlinx_coroutines_coreOpDescriptor
- (instancetype)initWithAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next desc:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAbstractAtomicDesc *)desc __attribute__((swift_name("init(affected:next:desc:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
- (void)finishPrepare __attribute__((swift_name("finishPrepare()")));
- (id _Nullable)performAffected:(id _Nullable)affected __attribute__((swift_name("perform(affected:)")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *affected __attribute__((swift_name("affected")));
@property (readonly) KASDKOSKotlinx_coroutines_coreAtomicOp<id> *atomicOp __attribute__((swift_name("atomicOp")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAbstractAtomicDesc *desc __attribute__((swift_name("desc")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *next __attribute__((swift_name("next")));
@end;

__attribute__((swift_name("KotlinContinuation")))
@protocol KASDKOSKotlinContinuation
@required
- (void)resumeWithResult:(id _Nullable)result __attribute__((swift_name("resumeWith(result:)")));
@property (readonly) id<KASDKOSKotlinCoroutineContext> context __attribute__((swift_name("context")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreAtomicOp")))
@interface KASDKOSKotlinx_coroutines_coreAtomicOp<__contravariant T> : KASDKOSKotlinx_coroutines_coreOpDescriptor
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)completeAffected:(T _Nullable)affected failure:(id _Nullable)failure __attribute__((swift_name("complete(affected:failure:)")));
- (id _Nullable)decideDecision:(id _Nullable)decision __attribute__((swift_name("decide(decision:)")));
- (id _Nullable)performAffected:(id _Nullable)affected __attribute__((swift_name("perform(affected:)")));
- (id _Nullable)prepareAffected:(T _Nullable)affected __attribute__((swift_name("prepare(affected:)")));
@property (readonly) KASDKOSKotlinx_coroutines_coreAtomicOp<id> *atomicOp __attribute__((swift_name("atomicOp")));
@property (readonly) id _Nullable consensus __attribute__((swift_name("consensus")));
@property (readonly) BOOL isDecided __attribute__((swift_name("isDecided")));
@property (readonly) int64_t opSequence __attribute__((swift_name("opSequence")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreLockFreeLinkedListNode")))
@interface KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode : KASDKOSBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)addLastNode:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)node __attribute__((swift_name("addLast(node:)")));
- (BOOL)addLastIfNode:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)node condition:(KASDKOSBoolean *(^)(void))condition __attribute__((swift_name("addLastIf(node:condition:)")));
- (BOOL)addLastIfPrevNode:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)node predicate:(KASDKOSBoolean *(^)(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *))predicate __attribute__((swift_name("addLastIfPrev(node:predicate:)")));
- (BOOL)addLastIfPrevAndIfNode:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)node predicate:(KASDKOSBoolean *(^)(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *))predicate condition:(KASDKOSBoolean *(^)(void))condition __attribute__((swift_name("addLastIfPrevAndIf(node:predicate:condition:)")));
- (BOOL)addOneIfEmptyNode:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)node __attribute__((swift_name("addOneIfEmpty(node:)")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAddLastDesc<KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *> *)describeAddLastNode:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)node __attribute__((swift_name("describeAddLast(node:)")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeRemoveFirstDesc<KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *> *)describeRemoveFirst __attribute__((swift_name("describeRemoveFirst()")));
- (void)helpRemove __attribute__((swift_name("helpRemove()")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)nextIfRemoved __attribute__((swift_name("nextIfRemoved()")));
- (BOOL)remove __attribute__((swift_name("remove()")));
- (id _Nullable)removeFirstIfIsInstanceOfOrPeekIfPredicate:(KASDKOSBoolean *(^)(id _Nullable))predicate __attribute__((swift_name("removeFirstIfIsInstanceOfOrPeekIf(predicate:)")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)removeFirstOrNull __attribute__((swift_name("removeFirstOrNull()")));
- (NSString *)description __attribute__((swift_name("description()")));
@property (readonly) BOOL isRemoved __attribute__((swift_name("isRemoved")));
@property (readonly, getter=next__) id _Nullable next __attribute__((swift_name("next")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *nextNode __attribute__((swift_name("nextNode")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *prevNode __attribute__((swift_name("prevNode")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreLockFreeLinkedListNode.AbstractAtomicDesc")))
@interface KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAbstractAtomicDesc : KASDKOSKotlinx_coroutines_coreAtomicDesc
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
- (void)completeOp:(KASDKOSKotlinx_coroutines_coreAtomicOp<id> *)op failure:(id _Nullable)failure __attribute__((swift_name("complete(op:failure:)")));
- (id _Nullable)failureAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)affected __attribute__((swift_name("failure(affected:)")));
- (void)finishOnSuccessAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next __attribute__((swift_name("finishOnSuccess(affected:next:)")));
- (void)finishPreparePrepareOp:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp *)prepareOp __attribute__((swift_name("finishPrepare(prepareOp:)")));
- (id _Nullable)onPreparePrepareOp:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp *)prepareOp __attribute__((swift_name("onPrepare(prepareOp:)")));
- (void)onRemovedAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected __attribute__((swift_name("onRemoved(affected:)")));
- (id _Nullable)prepareOp:(KASDKOSKotlinx_coroutines_coreAtomicOp<id> *)op __attribute__((swift_name("prepare(op:)")));
- (BOOL)retryAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(id)next __attribute__((swift_name("retry(affected:next:)")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)takeAffectedNodeOp:(KASDKOSKotlinx_coroutines_coreOpDescriptor *)op __attribute__((swift_name("takeAffectedNode(op:)")));
- (id)updatedNextAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next __attribute__((swift_name("updatedNext(affected:next:)")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable affectedNode __attribute__((swift_name("affectedNode")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable originalNext __attribute__((swift_name("originalNext")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreLockFreeLinkedListNodeAddLastDesc")))
@interface KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAddLastDesc<T> : KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAbstractAtomicDesc
- (instancetype)initWithQueue:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)queue node:(T)node __attribute__((swift_name("init(queue:node:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
- (void)finishOnSuccessAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next __attribute__((swift_name("finishOnSuccess(affected:next:)")));
- (void)finishPreparePrepareOp:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp *)prepareOp __attribute__((swift_name("finishPrepare(prepareOp:)")));
- (BOOL)retryAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(id)next __attribute__((swift_name("retry(affected:next:)")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)takeAffectedNodeOp:(KASDKOSKotlinx_coroutines_coreOpDescriptor *)op __attribute__((swift_name("takeAffectedNode(op:)")));
- (id)updatedNextAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next __attribute__((swift_name("updatedNext(affected:next:)")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable affectedNode __attribute__((swift_name("affectedNode")));
@property (readonly) T node __attribute__((swift_name("node")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *originalNext __attribute__((swift_name("originalNext")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *queue __attribute__((swift_name("queue")));
@end;

__attribute__((swift_name("Kotlinx_coroutines_coreLockFreeLinkedListNodeRemoveFirstDesc")))
@interface KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeRemoveFirstDesc<T> : KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodeAbstractAtomicDesc
- (instancetype)initWithQueue:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)queue __attribute__((swift_name("init(queue:)"))) __attribute__((objc_designated_initializer));
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer)) __attribute__((unavailable));
+ (instancetype)new __attribute__((unavailable));
- (id _Nullable)failureAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)affected __attribute__((swift_name("failure(affected:)")));
- (void)finishOnSuccessAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next __attribute__((swift_name("finishOnSuccess(affected:next:)")));
- (void)finishPreparePrepareOp:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNodePrepareOp *)prepareOp __attribute__((swift_name("finishPrepare(prepareOp:)")));
- (BOOL)retryAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(id)next __attribute__((swift_name("retry(affected:next:)")));
- (KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable)takeAffectedNodeOp:(KASDKOSKotlinx_coroutines_coreOpDescriptor *)op __attribute__((swift_name("takeAffectedNode(op:)")));
- (id)updatedNextAffected:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)affected next:(KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *)next __attribute__((swift_name("updatedNext(affected:next:)")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable affectedNode __attribute__((swift_name("affectedNode")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode * _Nullable originalNext __attribute__((swift_name("originalNext")));
@property (readonly) KASDKOSKotlinx_coroutines_coreLockFreeLinkedListNode *queue __attribute__((swift_name("queue")));
@property (readonly) T _Nullable result __attribute__((swift_name("result")));
@end;

#pragma pop_macro("_Nullable_result")
#pragma clang diagnostic pop
NS_ASSUME_NONNULL_END
