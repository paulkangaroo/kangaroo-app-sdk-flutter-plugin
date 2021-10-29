type Nullable<T> = T | null | undefined
export namespace kotlinx.atomicfu {
    function atomic$ref$<T>(initial: T, trace: kotlinx.atomicfu.TraceBase): kotlinx.atomicfu.AtomicRef<T>;
    function atomic$boolean$(initial: boolean, trace: kotlinx.atomicfu.TraceBase): kotlinx.atomicfu.AtomicBoolean;
    function atomic$int$(initial: number, trace: kotlinx.atomicfu.TraceBase): kotlinx.atomicfu.AtomicInt;
    function atomic$long$(initial: kotlin.Long, trace: kotlinx.atomicfu.TraceBase): kotlinx.atomicfu.AtomicLong;
}
export namespace io.ktor.util {
    function AttributesJsFn(concurrent: boolean): io.ktor.util.Attributes;
}
export namespace kangaroorewards.appsdk.features.business.models {
    class Branch {
        constructor(id: Nullable<string>, name: Nullable<string>, webSite: Nullable<string>, phone: Nullable<kangaroorewards.appsdk.features.business.models.BranchPhone>, logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>, address: Nullable<kangaroorewards.appsdk.features.business.models.BranchAddress>);
        readonly id: Nullable<string>;
        readonly name: Nullable<string>;
        readonly webSite: Nullable<string>;
        readonly phone: Nullable<kangaroorewards.appsdk.features.business.models.BranchPhone>;
        readonly logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        readonly coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        readonly address: Nullable<kangaroorewards.appsdk.features.business.models.BranchAddress>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.Branch>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.Branch>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<kangaroorewards.appsdk.features.business.models.BranchPhone>;
        component5(): Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        component6(): Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        component7(): Nullable<kangaroorewards.appsdk.features.business.models.BranchAddress>;
        copy(id: Nullable<string>, name: Nullable<string>, webSite: Nullable<string>, phone: Nullable<kangaroorewards.appsdk.features.business.models.BranchPhone>, logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>, address: Nullable<kangaroorewards.appsdk.features.business.models.BranchAddress>): kangaroorewards.appsdk.features.business.models.Branch;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Branch_init_$Create$(seen1: number, id: Nullable<string>, name: Nullable<string>, webSite: Nullable<string>, phone: Nullable<kangaroorewards.appsdk.features.business.models.BranchPhone>, logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>, address: Nullable<kangaroorewards.appsdk.features.business.models.BranchAddress>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.Branch;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class BranchAddress {
        constructor(formatted: Nullable<string>, street: Nullable<string>, city: Nullable<string>, region: Nullable<string>, country: Nullable<string>, lat: Nullable<number>, long: Nullable<number>);
        readonly formatted: Nullable<string>;
        readonly street: Nullable<string>;
        readonly city: Nullable<string>;
        readonly region: Nullable<string>;
        readonly country: Nullable<string>;
        readonly lat: Nullable<number>;
        readonly long: Nullable<number>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.BranchAddress>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.BranchAddress>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<number>;
        component7(): Nullable<number>;
        copy(formatted: Nullable<string>, street: Nullable<string>, city: Nullable<string>, region: Nullable<string>, country: Nullable<string>, lat: Nullable<number>, long: Nullable<number>): kangaroorewards.appsdk.features.business.models.BranchAddress;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BranchAddress_init_$Create$(seen1: number, formatted: Nullable<string>, street: Nullable<string>, city: Nullable<string>, region: Nullable<string>, country: Nullable<string>, lat: Nullable<number>, long: Nullable<number>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.BranchAddress;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class BranchPhone {
        constructor(number: Nullable<string>, countryCode: Nullable<string>, nationalFormat: Nullable<string>, intlFormat: Nullable<string>);
        readonly number: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly nationalFormat: Nullable<string>;
        readonly intlFormat: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.BranchPhone>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.BranchPhone>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        copy(number: Nullable<string>, countryCode: Nullable<string>, nationalFormat: Nullable<string>, intlFormat: Nullable<string>): kangaroorewards.appsdk.features.business.models.BranchPhone;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BranchPhone_init_$Create$(seen1: number, number: Nullable<string>, countryCode: Nullable<string>, nationalFormat: Nullable<string>, intlFormat: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.BranchPhone;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class Business extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.business.models.BusinessData, include: kangaroorewards.appsdk.features.business.models.BusinessBranchesData);
        readonly data: kangaroorewards.appsdk.features.business.models.BusinessData;
        readonly include: kangaroorewards.appsdk.features.business.models.BusinessBranchesData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.Business>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.Business>;
        component1(): kangaroorewards.appsdk.features.business.models.BusinessData;
        component2(): kangaroorewards.appsdk.features.business.models.BusinessBranchesData;
        copy(data: kangaroorewards.appsdk.features.business.models.BusinessData, include: kangaroorewards.appsdk.features.business.models.BusinessBranchesData): kangaroorewards.appsdk.features.business.models.Business;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Business_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.business.models.BusinessData>, include: Nullable<kangaroorewards.appsdk.features.business.models.BusinessBranchesData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.Business;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class BusinessBranchesData {
        constructor(branches: kotlin.collections.List<kangaroorewards.appsdk.features.business.models.Branch>);
        readonly branches: kotlin.collections.List<kangaroorewards.appsdk.features.business.models.Branch>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.BusinessBranchesData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.BusinessBranchesData>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.business.models.Branch>;
        copy(branches: kotlin.collections.List<kangaroorewards.appsdk.features.business.models.Branch>): kangaroorewards.appsdk.features.business.models.BusinessBranchesData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BusinessBranchesData_init_$Create$(seen1: number, branches: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.business.models.Branch>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.BusinessBranchesData;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class BusinessCategory {
        constructor(name: Nullable<string>, icon: Nullable<string>, code: Nullable<string>);
        readonly name: Nullable<string>;
        readonly icon: Nullable<string>;
        readonly code: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.BusinessCategory>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.BusinessCategory>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(name: Nullable<string>, icon: Nullable<string>, code: Nullable<string>): kangaroorewards.appsdk.features.business.models.BusinessCategory;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BusinessCategory_init_$Create$(seen1: number, name: Nullable<string>, icon: Nullable<string>, code: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.BusinessCategory;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class BusinessData {
        constructor(id: string, name: Nullable<string>, loyaltyType: Nullable<string>, conglomerate: Nullable<string>, whiteLabel: Nullable<string>, about: Nullable<string>, logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>, logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.business.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>, category: Nullable<kangaroorewards.appsdk.features.business.models.BusinessCategory>);
        readonly id: string;
        readonly name: Nullable<string>;
        readonly loyaltyType: Nullable<string>;
        readonly conglomerate: Nullable<string>;
        readonly whiteLabel: Nullable<string>;
        readonly about: Nullable<string>;
        readonly logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        readonly logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        readonly coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        readonly category: Nullable<kangaroorewards.appsdk.features.business.models.BusinessCategory>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.BusinessData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.BusinessData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        component8(): Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        component9(): Nullable<kangaroorewards.appsdk.features.business.models.Image>;
        component10(): Nullable<kangaroorewards.appsdk.features.business.models.BusinessCategory>;
        copy(id: string, name: Nullable<string>, loyaltyType: Nullable<string>, conglomerate: Nullable<string>, whiteLabel: Nullable<string>, about: Nullable<string>, logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>, logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.business.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>, category: Nullable<kangaroorewards.appsdk.features.business.models.BusinessCategory>): kangaroorewards.appsdk.features.business.models.BusinessData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BusinessData_init_$Create$(seen1: number, id: Nullable<string>, name: Nullable<string>, loyaltyType: Nullable<string>, conglomerate: Nullable<string>, whiteLabel: Nullable<string>, about: Nullable<string>, logo: Nullable<kangaroorewards.appsdk.features.business.models.Image>, logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.business.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.business.models.Image>, category: Nullable<kangaroorewards.appsdk.features.business.models.BusinessCategory>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.BusinessData;
    }
}
export namespace kangaroorewards.appsdk.features.business.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.business.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.business.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.business.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.business.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.claimOffer.models {
    class ClaimedOfferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.claimOffer.models.OfferModel);
        readonly data: kangaroorewards.appsdk.features.claimOffer.models.OfferModel;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.claimOffer.models.ClaimedOfferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.claimOffer.models.ClaimedOfferModel>;
        component1(): kangaroorewards.appsdk.features.claimOffer.models.OfferModel;
        copy(data: kangaroorewards.appsdk.features.claimOffer.models.OfferModel): kangaroorewards.appsdk.features.claimOffer.models.ClaimedOfferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static ClaimedOfferModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.claimOffer.models.OfferModel>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.claimOffer.models.ClaimedOfferModel;
    }
}
export namespace kangaroorewards.appsdk.features.claimOffer.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.claimOffer.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.claimOffer.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.claimOffer.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.claimOffer.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.claimOffer.models {
    class Language {
        constructor(id: number, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: number;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.claimOffer.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.claimOffer.models.Language>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: number, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.claimOffer.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: number, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.claimOffer.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.claimOffer.models {
    class OfferAction {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.claimOffer.models.OfferAction;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferAction_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.claimOffer.models.OfferAction;
    }
}
export namespace kangaroorewards.appsdk.features.claimOffer.models {
    class OfferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>>);
        readonly id: number;
        readonly points: Nullable<kotlin.Long>;
        readonly publishAt: Nullable<string>;
        readonly expiresAt: Nullable<string>;
        readonly isPublished: Nullable<boolean>;
        readonly couponConvertible: Nullable<boolean>;
        readonly realValue: Nullable<number>;
        readonly discountValue: Nullable<number>;
        readonly multipFactor: Nullable<number>;
        readonly minPurchase: Nullable<number>;
        readonly maxPurchase: Nullable<number>;
        readonly appsOnly: Nullable<boolean>;
        readonly offerFrequencyId: Nullable<number>;
        readonly freqDetails: Nullable<kotlin.collections.List<string>>;
        readonly peakFrom: Nullable<string>;
        readonly peakTo: Nullable<string>;
        readonly type: Nullable<string>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly slug: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.Image>>;
        readonly neverExpiresFlag: Nullable<boolean>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.claimOffer.models.OfferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.claimOffer.models.OfferModel>;
        component1(): number;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        component6(): Nullable<boolean>;
        component7(): Nullable<number>;
        component8(): Nullable<number>;
        component9(): Nullable<number>;
        component10(): Nullable<number>;
        component11(): Nullable<number>;
        component12(): Nullable<boolean>;
        component13(): Nullable<number>;
        component14(): Nullable<kotlin.collections.List<string>>;
        component15(): Nullable<string>;
        component16(): Nullable<string>;
        component17(): Nullable<string>;
        component18(): Nullable<string>;
        component19(): Nullable<string>;
        component20(): Nullable<string>;
        component21(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.Image>>;
        component22(): Nullable<boolean>;
        component23(): Nullable<string>;
        component24(): Nullable<string>;
        component25(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>>;
        component26(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>>;
        copy(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>>): kangaroorewards.appsdk.features.claimOffer.models.OfferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferModel_init_$Create$(seen1: number, id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.claimOffer.models.OfferAction>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.claimOffer.models.OfferModel;
    }
}
export namespace kangaroorewards.appsdk.features.claimOffer.models {
    class OfferTranslation {
        constructor(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.claimOffer.models.Language>);
        readonly id: number;
        readonly languageId: Nullable<number>;
        readonly offerTitle: Nullable<string>;
        readonly offerDescription: Nullable<string>;
        readonly offerTermsConditions: Nullable<string>;
        readonly offerLink: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.claimOffer.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.claimOffer.models.Language>;
        copy(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.claimOffer.models.Language>): kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferTranslation_init_$Create$(seen1: number, id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.claimOffer.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.claimOffer.models.OfferTranslation;
    }
}
export namespace kangaroorewards.appsdk.features.countries.models {
    class Countries extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kotlin.collections.List<kangaroorewards.appsdk.features.countries.models.Country>);
        readonly data: kotlin.collections.List<kangaroorewards.appsdk.features.countries.models.Country>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.countries.models.Countries>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.countries.models.Countries>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.countries.models.Country>;
        copy(data: kotlin.collections.List<kangaroorewards.appsdk.features.countries.models.Country>): kangaroorewards.appsdk.features.countries.models.Countries;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Countries_init_$Create$(seen1: number, data: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.countries.models.Country>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.countries.models.Countries;
    }
}
export namespace kangaroorewards.appsdk.features.countries.models {
    class Country {
        constructor(id: number, name: Nullable<string>, code: Nullable<string>, codeIso3: Nullable<string>, phoneCode: Nullable<number>);
        readonly id: number;
        readonly name: Nullable<string>;
        readonly code: Nullable<string>;
        readonly codeIso3: Nullable<string>;
        readonly phoneCode: Nullable<number>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.countries.models.Country>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.countries.models.Country>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<number>;
        copy(id: number, name: Nullable<string>, code: Nullable<string>, codeIso3: Nullable<string>, phoneCode: Nullable<number>): kangaroorewards.appsdk.features.countries.models.Country;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Country_init_$Create$(seen1: number, id: number, name: Nullable<string>, code: Nullable<string>, codeIso3: Nullable<string>, phoneCode: Nullable<number>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.countries.models.Country;
    }
}
export namespace kangaroorewards.appsdk.features.frequentBuyer.models {
    class Error {
        constructor(code: number, message: string);
        readonly code: number;
        readonly message: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.Error>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.Error>;
        component1(): number;
        component2(): string;
        copy(code: number, message: string): kangaroorewards.appsdk.features.frequentBuyer.models.Error;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Error_init_$Create$(seen1: number, code: number, message: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.frequentBuyer.models.Error;
    }
}
export namespace kangaroorewards.appsdk.features.frequentBuyer.models {
    class FrequentBuyerIncluded {
        constructor(frequentBuyerPrograms: kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>);
        readonly frequentBuyerPrograms: kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>;
        copy(frequentBuyerPrograms: kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static FrequentBuyerIncluded_init_$Create$(seen1: number, frequentBuyerPrograms: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded;
    }
}
export namespace kangaroorewards.appsdk.features.frequentBuyer.models {
    class FrequentBuyerItemModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: Nullable<number>, title: Nullable<string>, buyUnits: Nullable<number>, getUnits: Nullable<number>, resetInterval: Nullable<number>, createdAt: Nullable<string>, frequentBuyerUsers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>>);
        readonly id: Nullable<number>;
        readonly title: Nullable<string>;
        readonly buyUnits: Nullable<number>;
        readonly getUnits: Nullable<number>;
        readonly resetInterval: Nullable<number>;
        readonly createdAt: Nullable<string>;
        readonly frequentBuyerUsers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<number>;
        component4(): Nullable<number>;
        component5(): Nullable<number>;
        component6(): Nullable<string>;
        component7(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>>;
        copy(id: Nullable<number>, title: Nullable<string>, buyUnits: Nullable<number>, getUnits: Nullable<number>, resetInterval: Nullable<number>, createdAt: Nullable<string>, frequentBuyerUsers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static FrequentBuyerItemModel_init_$Create$(seen1: number, id: Nullable<number>, title: Nullable<string>, buyUnits: Nullable<number>, getUnits: Nullable<number>, resetInterval: Nullable<number>, createdAt: Nullable<string>, frequentBuyerUsers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerItemModel;
    }
}
export namespace kangaroorewards.appsdk.features.frequentBuyer.models {
    class FrequentBuyerModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData, included: kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded);
        readonly data: kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData;
        readonly included: kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerModel>;
        component1(): kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData;
        component2(): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded;
        copy(data: kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData, included: kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static FrequentBuyerModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData>, included: Nullable<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerIncluded>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerModel;
    }
}
export namespace kangaroorewards.appsdk.features.frequentBuyer.models {
    class FrequentBuyerUsersModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: Nullable<number>, status: Nullable<number>, purchasesCount: Nullable<number>);
        readonly id: Nullable<number>;
        readonly status: Nullable<number>;
        readonly purchasesCount: Nullable<number>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel>;
        component1(): Nullable<number>;
        component2(): Nullable<number>;
        component3(): Nullable<number>;
        copy(id: Nullable<number>, status: Nullable<number>, purchasesCount: Nullable<number>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static FrequentBuyerUsersModel_init_$Create$(seen1: number, id: Nullable<number>, status: Nullable<number>, purchasesCount: Nullable<number>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.frequentBuyer.models.FrequentBuyerUsersModel;
    }
}
export namespace kangaroorewards.appsdk.features.frequentBuyer.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.frequentBuyer.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.postOfferFacebookShare.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.postOfferFacebookShare.models {
    class UserProfileModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData);
        readonly data: kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileModel>;
        component1(): kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData;
        copy(data: kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData): kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.postOfferFacebookShare.models.UserProfileModel;
    }
}
export namespace kangaroorewards.appsdk.features.redeemReward.models {
    class RedeemRequest {
        constructor(branchId: string, catalogItems: kotlin.collections.List<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>, intent: string);
        readonly branchId: string;
        readonly catalogItems: kotlin.collections.List<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>;
        readonly intent: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedeemRequest>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedeemRequest>;
        component1(): string;
        component2(): kotlin.collections.List<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>;
        component3(): string;
        copy(branchId: string, catalogItems: kotlin.collections.List<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>, intent: string): kangaroorewards.appsdk.features.redeemReward.models.RedeemRequest;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static RedeemRequest_init_$Create$(seen1: number, branchId: Nullable<string>, catalogItems: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>>, intent: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.redeemReward.models.RedeemRequest;
    }
}
export namespace kangaroorewards.appsdk.features.redeemReward.models {
    class RedeemResponseData {
        constructor(id: number, amount: Nullable<number>, points: Nullable<kotlin.Long>, name: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, customer: Nullable<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>);
        readonly id: number;
        readonly amount: Nullable<number>;
        readonly points: Nullable<kotlin.Long>;
        readonly name: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly customer: Nullable<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<kotlin.Long>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>;
        copy(id: number, amount: Nullable<number>, points: Nullable<kotlin.Long>, name: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, customer: Nullable<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>): kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static RedeemResponseData_init_$Create$(seen1: number, id: number, amount: Nullable<number>, points: Nullable<kotlin.Long>, name: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, customer: Nullable<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData;
    }
}
export namespace kangaroorewards.appsdk.features.redeemReward.models {
    class RedeemResponseModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData);
        readonly data: kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseModel>;
        component1(): kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData;
        copy(data: kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData): kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static RedeemResponseModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.redeemReward.models.RedeemResponseModel;
    }
}
export namespace kangaroorewards.appsdk.features.redeemReward.models {
    class RedemptionModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, quantity: number);
        readonly id: number;
        readonly quantity: number;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel>;
        component1(): number;
        component2(): number;
        copy(id: number, quantity: number): kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static RedemptionModel_init_$Create$(seen1: number, id: number, quantity: number, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.redeemReward.models.RedemptionModel;
    }
}
export namespace kangaroorewards.appsdk.features.redeemReward.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.redeemReward.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.redeemReward.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.redeemReward.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.redeemReward.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.redeemReward.models {
    class UserProfileModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.redeemReward.models.UserProfileData);
        readonly data: kangaroorewards.appsdk.features.redeemReward.models.UserProfileData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel>;
        component1(): kangaroorewards.appsdk.features.redeemReward.models.UserProfileData;
        copy(data: kangaroorewards.appsdk.features.redeemReward.models.UserProfileData): kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.redeemReward.models.UserProfileData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.redeemReward.models.UserProfileModel;
    }
}
export namespace kangaroorewards.appsdk.features.socialMedia.models {
    class Error {
        constructor(code: number, message: string);
        readonly code: number;
        readonly message: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.socialMedia.models.Error>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.socialMedia.models.Error>;
        component1(): number;
        component2(): string;
        copy(code: number, message: string): kangaroorewards.appsdk.features.socialMedia.models.Error;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Error_init_$Create$(seen1: number, code: number, message: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.socialMedia.models.Error;
    }
}
export namespace kangaroorewards.appsdk.features.socialMedia.models {
    class SocialMediaIncluded {
        constructor(socialMedia: kotlin.collections.List<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>);
        readonly socialMedia: kotlin.collections.List<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>;
        copy(socialMedia: kotlin.collections.List<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>): kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static SocialMediaIncluded_init_$Create$(seen1: number, socialMedia: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded;
    }
}
export namespace kangaroorewards.appsdk.features.socialMedia.models {
    class SocialMediaItemModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(icon: Nullable<string>, url: Nullable<string>);
        readonly icon: Nullable<string>;
        readonly url: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        copy(icon: Nullable<string>, url: Nullable<string>): kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static SocialMediaItemModel_init_$Create$(seen1: number, icon: Nullable<string>, url: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.socialMedia.models.SocialMediaItemModel;
    }
}
export namespace kangaroorewards.appsdk.features.socialMedia.models {
    class SocialMediaModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(included: Nullable<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>);
        readonly included: Nullable<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaModel>;
        component1(): Nullable<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>;
        copy(included: Nullable<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>): kangaroorewards.appsdk.features.socialMedia.models.SocialMediaModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static SocialMediaModel_init_$Create$(seen1: number, included: Nullable<kangaroorewards.appsdk.features.socialMedia.models.SocialMediaIncluded>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.socialMedia.models.SocialMediaModel;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class AlaCarteItemModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: Nullable<number>, points: Nullable<number>, product: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>);
        readonly id: Nullable<number>;
        readonly points: Nullable<number>;
        readonly product: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>;
        component1(): Nullable<number>;
        component2(): Nullable<number>;
        component3(): Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>;
        copy(id: Nullable<number>, points: Nullable<number>, product: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>): kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static AlaCarteItemModel_init_$Create$(seen1: number, id: Nullable<number>, points: Nullable<number>, product: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class AlaCarteProductsModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData, included: kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded);
        readonly data: kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData;
        readonly included: kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteProductsModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteProductsModel>;
        component1(): kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData;
        component2(): kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded;
        copy(data: kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData, included: kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded): kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteProductsModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static AlaCarteProductsModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData>, included: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteProductsModel;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class Error {
        constructor(code: number, message: string);
        readonly code: number;
        readonly message: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Error>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Error>;
        component1(): number;
        component2(): string;
        copy(code: number, message: string): kangaroorewards.appsdk.features.userAlaCarte.models.Error;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Error_init_$Create$(seen1: number, code: number, message: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.Error;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class Images {
        constructor(path: Nullable<string>, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly path: Nullable<string>;
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Images>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Images>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        copy(path: Nullable<string>, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userAlaCarte.models.Images;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Images_init_$Create$(seen1: number, path: Nullable<string>, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.Images;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class Language {
        constructor(id: Nullable<number>, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: Nullable<number>;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Language>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: Nullable<number>, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userAlaCarte.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: Nullable<number>, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class Languages {
        constructor(languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.Language>);
        readonly languageId: Nullable<number>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.Language>;
        copy(languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.Language>): kangaroorewards.appsdk.features.userAlaCarte.models.Languages;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Languages_init_$Create$(seen1: number, languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userAlaCarte.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.Languages;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class ProductItemModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: Nullable<number>, title: Nullable<string>, description: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Images>>, productSku: Nullable<string>, termsConditions: Nullable<string>, link: Nullable<string>, productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>>);
        readonly id: Nullable<number>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Images>>;
        readonly productSku: Nullable<string>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Images>>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>>;
        copy(id: Nullable<number>, title: Nullable<string>, description: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Images>>, productSku: Nullable<string>, termsConditions: Nullable<string>, link: Nullable<string>, productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>>): kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static ProductItemModel_init_$Create$(seen1: number, id: Nullable<number>, title: Nullable<string>, description: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Images>>, productSku: Nullable<string>, termsConditions: Nullable<string>, link: Nullable<string>, productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.Languages>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.ProductItemModel;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class UserAlaCarteIncluded {
        constructor(productRewards: kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>);
        readonly productRewards: kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>;
        copy(productRewards: kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>): kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserAlaCarteIncluded_init_$Create$(seen1: number, productRewards: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userAlaCarte.models.AlaCarteItemModel>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.UserAlaCarteIncluded;
    }
}
export namespace kangaroorewards.appsdk.features.userAlaCarte.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAlaCarte.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.userAuthentication.models {
    class UserAuthenticationModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(tokenType: Nullable<string>, expiresIn: Nullable<number>, accessToken: Nullable<string>, refreshToken: Nullable<string>);
        readonly tokenType: Nullable<string>;
        readonly expiresIn: Nullable<number>;
        readonly accessToken: Nullable<string>;
        readonly refreshToken: Nullable<string>;
        readonly Companion: {
            readonly ACCESS_TOKEN: string;
            readonly REFRESH_TOKEN: string;
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userAuthentication.models.UserAuthenticationModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userAuthentication.models.UserAuthenticationModel>;
        component1(): Nullable<string>;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        copy(tokenType: Nullable<string>, expiresIn: Nullable<number>, accessToken: Nullable<string>, refreshToken: Nullable<string>): kangaroorewards.appsdk.features.userAuthentication.models.UserAuthenticationModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserAuthenticationModel_init_$Create$(seen1: number, tokenType: Nullable<string>, expiresIn: Nullable<number>, accessToken: Nullable<string>, refreshToken: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userAuthentication.models.UserAuthenticationModel;
    }
}
export namespace kangaroorewards.appsdk.features.userBalanceTransfer.models {
    class TransferFrom {
        constructor(name: string, phone: Nullable<string>, countryCode: Nullable<string>, email: Nullable<string>);
        readonly name: string;
        readonly phone: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly email: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        copy(name: string, phone: Nullable<string>, countryCode: Nullable<string>, email: Nullable<string>): kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferFrom_init_$Create$(seen1: number, name: Nullable<string>, phone: Nullable<string>, countryCode: Nullable<string>, email: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom;
    }
}
export namespace kangaroorewards.appsdk.features.userBalanceTransfer.models {
    class TransferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(intent: string, language: string, points: Nullable<kotlin.Long>, amount: Nullable<number>, to: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>, from: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>);
        readonly intent: string;
        readonly language: string;
        readonly points: Nullable<kotlin.Long>;
        readonly amount: Nullable<number>;
        readonly to: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>;
        readonly from: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferModel>;
        component1(): string;
        component2(): string;
        component3(): Nullable<kotlin.Long>;
        component4(): Nullable<number>;
        component5(): Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>;
        component6(): Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>;
        copy(intent: string, language: string, points: Nullable<kotlin.Long>, amount: Nullable<number>, to: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>, from: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>): kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferModel_init_$Create$(seen1: number, intent: Nullable<string>, language: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, to: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>, from: Nullable<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferFrom>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferModel;
    }
}
export namespace kangaroorewards.appsdk.features.userBalanceTransfer.models {
    class TransferTo {
        constructor(name: string);
        readonly name: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo>;
        component1(): string;
        copy(name: string): kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferTo_init_$Create$(seen1: number, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userBalanceTransfer.models.TransferTo;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class BusinessCategory {
        constructor(name: Nullable<string>, icon: Nullable<string>, code: Nullable<string>);
        readonly name: Nullable<string>;
        readonly icon: Nullable<string>;
        readonly code: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(name: Nullable<string>, icon: Nullable<string>, code: Nullable<string>): kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BusinessCategory_init_$Create$(seen1: number, name: Nullable<string>, icon: Nullable<string>, code: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class BusinessData {
        constructor(id: string, name: Nullable<string>, loyaltyType: Nullable<string>, conglomerate: Nullable<string>, whiteLabel: Nullable<string>, about: Nullable<string>, logo: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, category: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>);
        readonly id: string;
        readonly name: Nullable<string>;
        readonly loyaltyType: Nullable<string>;
        readonly conglomerate: Nullable<string>;
        readonly whiteLabel: Nullable<string>;
        readonly about: Nullable<string>;
        readonly logo: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        readonly logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        readonly coverPhoto: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        readonly category: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        component8(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        component9(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        component10(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>;
        copy(id: string, name: Nullable<string>, loyaltyType: Nullable<string>, conglomerate: Nullable<string>, whiteLabel: Nullable<string>, about: Nullable<string>, logo: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, category: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>): kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static BusinessData_init_$Create$(seen1: number, id: Nullable<string>, name: Nullable<string>, loyaltyType: Nullable<string>, conglomerate: Nullable<string>, whiteLabel: Nullable<string>, about: Nullable<string>, logo: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, logoTransparentBackground: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, coverPhoto: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>, category: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessCategory>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class Campaign {
        constructor(id: kotlin.Long, subject: Nullable<string>, htmlContent: Nullable<string>, plainContent: Nullable<string>, pushTitle: Nullable<string>, pushBody: Nullable<string>, pushLink: Nullable<string>, pushImage: Nullable<string>, offers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>>, business: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>);
        readonly id: kotlin.Long;
        readonly subject: Nullable<string>;
        readonly htmlContent: Nullable<string>;
        readonly plainContent: Nullable<string>;
        readonly pushTitle: Nullable<string>;
        readonly pushBody: Nullable<string>;
        readonly pushLink: Nullable<string>;
        readonly pushImage: Nullable<string>;
        readonly offers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>>;
        readonly business: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>;
        component1(): kotlin.Long;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>>;
        component10(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>;
        copy(id: kotlin.Long, subject: Nullable<string>, htmlContent: Nullable<string>, plainContent: Nullable<string>, pushTitle: Nullable<string>, pushBody: Nullable<string>, pushLink: Nullable<string>, pushImage: Nullable<string>, offers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>>, business: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>): kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Campaign_init_$Create$(seen1: number, id: kotlin.Long, subject: Nullable<string>, htmlContent: Nullable<string>, plainContent: Nullable<string>, pushTitle: Nullable<string>, pushBody: Nullable<string>, pushLink: Nullable<string>, pushImage: Nullable<string>, offers: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>>, business: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.BusinessData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class CampaignMessage {
        constructor(id: string, cellEmail: Nullable<number>, subject: Nullable<string>, sentAt: Nullable<string>, message: Nullable<string>, campaign: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>);
        readonly id: string;
        readonly cellEmail: Nullable<number>;
        readonly subject: Nullable<string>;
        readonly sentAt: Nullable<string>;
        readonly message: Nullable<string>;
        readonly campaign: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>;
        component1(): string;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>;
        copy(id: string, cellEmail: Nullable<number>, subject: Nullable<string>, sentAt: Nullable<string>, message: Nullable<string>, campaign: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>): kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static CampaignMessage_init_$Create$(seen1: number, id: Nullable<string>, cellEmail: Nullable<number>, subject: Nullable<string>, sentAt: Nullable<string>, message: Nullable<string>, campaign: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Campaign>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class CampaignMessagesModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>);
        readonly data: kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessagesModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessagesModel>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>;
        copy(data: kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>): kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessagesModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static CampaignMessagesModel_init_$Create$(seen1: number, data: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessage>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.CampaignMessagesModel;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userCampaignMessages.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class Language {
        constructor(id: number, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: number;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: number, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userCampaignMessages.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: number, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class OfferAction {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferAction_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class OfferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>>);
        readonly id: number;
        readonly points: Nullable<kotlin.Long>;
        readonly publishAt: Nullable<string>;
        readonly expiresAt: Nullable<string>;
        readonly isPublished: Nullable<boolean>;
        readonly couponConvertible: Nullable<boolean>;
        readonly realValue: Nullable<number>;
        readonly discountValue: Nullable<number>;
        readonly multipFactor: Nullable<number>;
        readonly minPurchase: Nullable<number>;
        readonly maxPurchase: Nullable<number>;
        readonly appsOnly: Nullable<boolean>;
        readonly offerFrequencyId: Nullable<number>;
        readonly freqDetails: Nullable<kotlin.collections.List<string>>;
        readonly peakFrom: Nullable<string>;
        readonly peakTo: Nullable<string>;
        readonly type: Nullable<string>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly slug: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>>;
        readonly neverExpiresFlag: Nullable<boolean>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel>;
        component1(): number;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        component6(): Nullable<boolean>;
        component7(): Nullable<number>;
        component8(): Nullable<number>;
        component9(): Nullable<number>;
        component10(): Nullable<number>;
        component11(): Nullable<number>;
        component12(): Nullable<boolean>;
        component13(): Nullable<number>;
        component14(): Nullable<kotlin.collections.List<string>>;
        component15(): Nullable<string>;
        component16(): Nullable<string>;
        component17(): Nullable<string>;
        component18(): Nullable<string>;
        component19(): Nullable<string>;
        component20(): Nullable<string>;
        component21(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>>;
        component22(): Nullable<boolean>;
        component23(): Nullable<string>;
        component24(): Nullable<string>;
        component25(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>>;
        component26(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>>;
        copy(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>>): kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferModel_init_$Create$(seen1: number, id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferAction>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.OfferModel;
    }
}
export namespace kangaroorewards.appsdk.features.userCampaignMessages.models {
    class OfferTranslation {
        constructor(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>);
        readonly id: number;
        readonly languageId: Nullable<number>;
        readonly offerTitle: Nullable<string>;
        readonly offerDescription: Nullable<string>;
        readonly offerTermsConditions: Nullable<string>;
        readonly offerLink: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>;
        copy(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>): kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferTranslation_init_$Create$(seen1: number, id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userCampaignMessages.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCampaignMessages.models.OfferTranslation;
    }
}
export namespace kangaroorewards.appsdk.features.userCheckIn.models {
    class CheckInRequest {
        constructor(branchId: string, intent: string);
        readonly branchId: string;
        readonly intent: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userCheckIn.models.CheckInRequest>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userCheckIn.models.CheckInRequest>;
        component1(): string;
        component2(): string;
        copy(branchId: string, intent: string): kangaroorewards.appsdk.features.userCheckIn.models.CheckInRequest;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static CheckInRequest_init_$Create$(seen1: number, branchId: Nullable<string>, intent: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userCheckIn.models.CheckInRequest;
    }
}
export namespace kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models {
    class Business {
        constructor(id: string, name: string);
        readonly id: string;
        readonly name: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business>;
        component1(): string;
        component2(): string;
        copy(id: string, name: string): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Business_init_$Create$(seen1: number, id: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business;
    }
}
export namespace kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models {
    class NotificationPreferencesRequest {
        constructor(id: string, business: kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business, allowEmail: Nullable<boolean>, allowSms: Nullable<boolean>, allowPush: Nullable<boolean>);
        readonly id: string;
        readonly business: kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business;
        readonly allowEmail: Nullable<boolean>;
        readonly allowSms: Nullable<boolean>;
        readonly allowPush: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationPreferencesRequest>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationPreferencesRequest>;
        component1(): string;
        component2(): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business;
        component3(): Nullable<boolean>;
        component4(): Nullable<boolean>;
        component5(): Nullable<boolean>;
        copy(id: string, business: kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business, allowEmail: Nullable<boolean>, allowSms: Nullable<boolean>, allowPush: Nullable<boolean>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationPreferencesRequest;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static NotificationPreferencesRequest_init_$Create$(seen1: number, id: Nullable<string>, business: Nullable<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business>, allowEmail: Nullable<boolean>, allowSms: Nullable<boolean>, allowPush: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationPreferencesRequest;
    }
}
export namespace kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models {
    class NotificationUpdateModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kotlin.collections.List<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>);
        readonly data: kotlin.collections.List<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateModel>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>;
        copy(data: kotlin.collections.List<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static NotificationUpdateModel_init_$Create$(seen1: number, data: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateModel;
    }
}
export namespace kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models {
    class NotificationUpdateResponseData {
        constructor(id: string, business: kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business, allowEmail: Nullable<boolean>, allowSms: Nullable<boolean>, allowPush: Nullable<boolean>);
        readonly id: string;
        readonly business: kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business;
        readonly allowEmail: Nullable<boolean>;
        readonly allowSms: Nullable<boolean>;
        readonly allowPush: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData>;
        component1(): string;
        component2(): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business;
        component3(): Nullable<boolean>;
        component4(): Nullable<boolean>;
        component5(): Nullable<boolean>;
        copy(id: string, business: kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business, allowEmail: Nullable<boolean>, allowSms: Nullable<boolean>, allowPush: Nullable<boolean>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static NotificationUpdateResponseData_init_$Create$(seen1: number, id: Nullable<string>, business: Nullable<kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.Business>, allowEmail: Nullable<boolean>, allowSms: Nullable<boolean>, allowPush: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userNotificationPreferencesUpdate.models.NotificationUpdateResponseData;
    }
}
export namespace kangaroorewards.appsdk.features.userOffers.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userOffers.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userOffers.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userOffers.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userOffers.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.userOffers.models {
    class Language {
        constructor(id: number, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: number;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userOffers.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userOffers.models.Language>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: number, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userOffers.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: number, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userOffers.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userOffers.models {
    class OfferAction {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userOffers.models.OfferAction>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userOffers.models.OfferAction>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.userOffers.models.OfferAction;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferAction_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userOffers.models.OfferAction;
    }
}
export namespace kangaroorewards.appsdk.features.userOffers.models {
    class OfferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferAction>>);
        readonly id: number;
        readonly points: Nullable<kotlin.Long>;
        readonly publishAt: Nullable<string>;
        readonly expiresAt: Nullable<string>;
        readonly isPublished: Nullable<boolean>;
        readonly couponConvertible: Nullable<boolean>;
        readonly realValue: Nullable<number>;
        readonly discountValue: Nullable<number>;
        readonly multipFactor: Nullable<number>;
        readonly minPurchase: Nullable<number>;
        readonly maxPurchase: Nullable<number>;
        readonly appsOnly: Nullable<boolean>;
        readonly offerFrequencyId: Nullable<number>;
        readonly freqDetails: Nullable<kotlin.collections.List<string>>;
        readonly peakFrom: Nullable<string>;
        readonly peakTo: Nullable<string>;
        readonly type: Nullable<string>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly slug: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.Image>>;
        readonly neverExpiresFlag: Nullable<boolean>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferAction>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userOffers.models.OfferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userOffers.models.OfferModel>;
        component1(): number;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        component6(): Nullable<boolean>;
        component7(): Nullable<number>;
        component8(): Nullable<number>;
        component9(): Nullable<number>;
        component10(): Nullable<number>;
        component11(): Nullable<number>;
        component12(): Nullable<boolean>;
        component13(): Nullable<number>;
        component14(): Nullable<kotlin.collections.List<string>>;
        component15(): Nullable<string>;
        component16(): Nullable<string>;
        component17(): Nullable<string>;
        component18(): Nullable<string>;
        component19(): Nullable<string>;
        component20(): Nullable<string>;
        component21(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.Image>>;
        component22(): Nullable<boolean>;
        component23(): Nullable<string>;
        component24(): Nullable<string>;
        component25(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>>;
        component26(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferAction>>;
        copy(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferAction>>): kangaroorewards.appsdk.features.userOffers.models.OfferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferModel_init_$Create$(seen1: number, id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferAction>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userOffers.models.OfferModel;
    }
}
export namespace kangaroorewards.appsdk.features.userOffers.models {
    class OfferTranslation {
        constructor(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userOffers.models.Language>);
        readonly id: number;
        readonly languageId: Nullable<number>;
        readonly offerTitle: Nullable<string>;
        readonly offerDescription: Nullable<string>;
        readonly offerTermsConditions: Nullable<string>;
        readonly offerLink: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userOffers.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userOffers.models.OfferTranslation>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.userOffers.models.Language>;
        copy(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userOffers.models.Language>): kangaroorewards.appsdk.features.userOffers.models.OfferTranslation;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferTranslation_init_$Create$(seen1: number, id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userOffers.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userOffers.models.OfferTranslation;
    }
}
export namespace kangaroorewards.appsdk.features.userOffers.models {
    class UserOffersModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferModel>);
        readonly data: kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userOffers.models.UserOffersModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userOffers.models.UserOffersModel>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferModel>;
        copy(data: kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferModel>): kangaroorewards.appsdk.features.userOffers.models.UserOffersModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserOffersModel_init_$Create$(seen1: number, data: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userOffers.models.OfferModel>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userOffers.models.UserOffersModel;
    }
}
export namespace kangaroorewards.appsdk.features.userPinResetRequest.models {
    class UserPinResetRequest extends kangaroorewards.appsdk.core.io.Model {
        constructor(statusCode: number, message: string, description: string);
        readonly statusCode: number;
        readonly message: string;
        readonly description: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userPinResetRequest.models.UserPinResetRequest>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userPinResetRequest.models.UserPinResetRequest>;
        component1(): number;
        component2(): string;
        component3(): string;
        copy(statusCode: number, message: string, description: string): kangaroorewards.appsdk.features.userPinResetRequest.models.UserPinResetRequest;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserPinResetRequest_init_$Create$(seen1: number, statusCode: number, message: Nullable<string>, description: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userPinResetRequest.models.UserPinResetRequest;
    }
}
export namespace kangaroorewards.appsdk.features.userPinUpdate.models {
    class UpdatePinRequest {
        constructor(pinCode: string);
        readonly pinCode: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userPinUpdate.models.UpdatePinRequest>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userPinUpdate.models.UpdatePinRequest>;
        component1(): string;
        copy(pinCode: string): kangaroorewards.appsdk.features.userPinUpdate.models.UpdatePinRequest;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UpdatePinRequest_init_$Create$(seen1: number, pinCode: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userPinUpdate.models.UpdatePinRequest;
    }
}
export namespace kangaroorewards.appsdk.features.userPinUpdate.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.userPinUpdate.models {
    class UserProfileModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData);
        readonly data: kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileModel>;
        component1(): kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData;
        copy(data: kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData): kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userPinUpdate.models.UserProfileModel;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class Error {
        constructor(code: number, message: string);
        readonly code: number;
        readonly message: string;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.Error>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.Error>;
        component1(): number;
        component2(): string;
        copy(code: number, message: string): kangaroorewards.appsdk.features.userProducts.models.Error;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Error_init_$Create$(seen1: number, code: number, message: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.Error;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class Images {
        constructor(path: Nullable<string>, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly path: Nullable<string>;
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.Images>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.Images>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        copy(path: Nullable<string>, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userProducts.models.Images;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Images_init_$Create$(seen1: number, path: Nullable<string>, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.Images;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class Language {
        constructor(id: Nullable<number>, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: Nullable<number>;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.Language>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: Nullable<number>, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userProducts.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: Nullable<number>, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class Languages {
        constructor(languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userProducts.models.Language>);
        readonly languageId: Nullable<number>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userProducts.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.Languages>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.Languages>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<kangaroorewards.appsdk.features.userProducts.models.Language>;
        copy(languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userProducts.models.Language>): kangaroorewards.appsdk.features.userProducts.models.Languages;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Languages_init_$Create$(seen1: number, languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userProducts.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.Languages;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class Product extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: Nullable<number>, title: Nullable<string>, description: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Images>>, productSku: Nullable<string>, actualPrice: Nullable<number>, realPrice: Nullable<number>, termsConditions: Nullable<string>, link: Nullable<string>, productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Languages>>);
        readonly id: Nullable<number>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Images>>;
        readonly productSku: Nullable<string>;
        readonly actualPrice: Nullable<number>;
        readonly realPrice: Nullable<number>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Languages>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.Product>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.Product>;
        component1(): Nullable<number>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Images>>;
        component5(): Nullable<string>;
        component6(): Nullable<number>;
        component7(): Nullable<number>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Languages>>;
        copy(id: Nullable<number>, title: Nullable<string>, description: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Images>>, productSku: Nullable<string>, actualPrice: Nullable<number>, realPrice: Nullable<number>, termsConditions: Nullable<string>, link: Nullable<string>, productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Languages>>): kangaroorewards.appsdk.features.userProducts.models.Product;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Product_init_$Create$(seen1: number, id: Nullable<number>, title: Nullable<string>, description: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Images>>, productSku: Nullable<string>, actualPrice: Nullable<number>, realPrice: Nullable<number>, termsConditions: Nullable<string>, link: Nullable<string>, productLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Languages>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.Product;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class UserProductsIncluded {
        constructor(products: kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Product>);
        readonly products: kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Product>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Product>;
        copy(products: kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Product>): kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProductsIncluded_init_$Create$(seen1: number, products: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userProducts.models.Product>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class UserProductsModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userProducts.models.UserProfileData, included: kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded);
        readonly data: kangaroorewards.appsdk.features.userProducts.models.UserProfileData;
        readonly included: kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.UserProductsModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.UserProductsModel>;
        component1(): kangaroorewards.appsdk.features.userProducts.models.UserProfileData;
        component2(): kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded;
        copy(data: kangaroorewards.appsdk.features.userProducts.models.UserProfileData, included: kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded): kangaroorewards.appsdk.features.userProducts.models.UserProductsModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProductsModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userProducts.models.UserProfileData>, included: Nullable<kangaroorewards.appsdk.features.userProducts.models.UserProductsIncluded>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.UserProductsModel;
    }
}
export namespace kangaroorewards.appsdk.features.userProducts.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProducts.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProducts.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.userProducts.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProducts.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.userProfile.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProfile.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProfile.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.userProfile.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProfile.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.userProfile.models {
    class UserProfileModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userProfile.models.UserProfileData);
        readonly data: kangaroorewards.appsdk.features.userProfile.models.UserProfileData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProfile.models.UserProfileModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProfile.models.UserProfileModel>;
        component1(): kangaroorewards.appsdk.features.userProfile.models.UserProfileData;
        copy(data: kangaroorewards.appsdk.features.userProfile.models.UserProfileData): kangaroorewards.appsdk.features.userProfile.models.UserProfileModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userProfile.models.UserProfileData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProfile.models.UserProfileModel;
    }
}
export namespace kangaroorewards.appsdk.features.userProfileUpdate.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.userProfileUpdate.models {
    class UserProfileModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData);
        readonly data: kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileModel>;
        component1(): kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData;
        copy(data: kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData): kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userProfileUpdate.models.UserProfileModel;
    }
}
export namespace kangaroorewards.appsdk.features.userRegistration.models {
    class UserProfileData {
        constructor(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>);
        readonly id: string;
        readonly email: Nullable<string>;
        readonly phone: Nullable<string>;
        readonly firstName: Nullable<string>;
        readonly lastName: Nullable<string>;
        readonly qrcode: Nullable<string>;
        readonly gender: Nullable<string>;
        readonly birthDate: Nullable<string>;
        readonly language: Nullable<string>;
        readonly countryCode: Nullable<string>;
        readonly profilePhoto: Nullable<string>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly enabled: Nullable<boolean>;
        readonly emailVerified: Nullable<boolean>;
        readonly phoneVerified: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRegistration.models.UserProfileData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRegistration.models.UserProfileData>;
        component1(): string;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        component10(): Nullable<string>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<boolean>;
        component15(): Nullable<boolean>;
        component16(): Nullable<boolean>;
        copy(id: string, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>): kangaroorewards.appsdk.features.userRegistration.models.UserProfileData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileData_init_$Create$(seen1: number, id: Nullable<string>, email: Nullable<string>, phone: Nullable<string>, firstName: Nullable<string>, lastName: Nullable<string>, qrcode: Nullable<string>, gender: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, countryCode: Nullable<string>, profilePhoto: Nullable<string>, createdAt: Nullable<string>, updatedAt: Nullable<string>, enabled: Nullable<boolean>, emailVerified: Nullable<boolean>, phoneVerified: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRegistration.models.UserProfileData;
    }
}
export namespace kangaroorewards.appsdk.features.userRegistration.models {
    class UserProfileModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userRegistration.models.UserProfileData);
        readonly data: kangaroorewards.appsdk.features.userRegistration.models.UserProfileData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRegistration.models.UserProfileModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRegistration.models.UserProfileModel>;
        component1(): kangaroorewards.appsdk.features.userRegistration.models.UserProfileData;
        copy(data: kangaroorewards.appsdk.features.userRegistration.models.UserProfileData): kangaroorewards.appsdk.features.userRegistration.models.UserProfileModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserProfileModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userRegistration.models.UserProfileData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRegistration.models.UserProfileModel;
    }
}
export namespace kangaroorewards.appsdk.features.userRewards.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRewards.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRewards.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userRewards.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRewards.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.userRewards.models {
    class Language {
        constructor(id: number, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: number;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRewards.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRewards.models.Language>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: number, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userRewards.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: number, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRewards.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userRewards.models {
    class RewardModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, amount: Nullable<number>, realValue: Nullable<number>, discountValue: Nullable<number>, partnerReward: Nullable<boolean>, redeemForGiftCard: Nullable<boolean>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, rewardLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>>);
        readonly id: number;
        readonly points: Nullable<kotlin.Long>;
        readonly publishAt: Nullable<string>;
        readonly expiresAt: Nullable<string>;
        readonly isPublished: Nullable<boolean>;
        readonly amount: Nullable<number>;
        readonly realValue: Nullable<number>;
        readonly discountValue: Nullable<number>;
        readonly partnerReward: Nullable<boolean>;
        readonly redeemForGiftCard: Nullable<boolean>;
        readonly type: Nullable<string>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly slug: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.Image>>;
        readonly neverExpiresFlag: Nullable<boolean>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly rewardLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRewards.models.RewardModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRewards.models.RewardModel>;
        component1(): number;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        component6(): Nullable<number>;
        component7(): Nullable<number>;
        component8(): Nullable<number>;
        component9(): Nullable<boolean>;
        component10(): Nullable<boolean>;
        component11(): Nullable<string>;
        component12(): Nullable<string>;
        component13(): Nullable<string>;
        component14(): Nullable<string>;
        component15(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.Image>>;
        component16(): Nullable<boolean>;
        component17(): Nullable<string>;
        component18(): Nullable<string>;
        component19(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>>;
        copy(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, amount: Nullable<number>, realValue: Nullable<number>, discountValue: Nullable<number>, partnerReward: Nullable<boolean>, redeemForGiftCard: Nullable<boolean>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, rewardLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>>): kangaroorewards.appsdk.features.userRewards.models.RewardModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static RewardModel_init_$Create$(seen1: number, id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, amount: Nullable<number>, realValue: Nullable<number>, discountValue: Nullable<number>, partnerReward: Nullable<boolean>, redeemForGiftCard: Nullable<boolean>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, rewardLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRewards.models.RewardModel;
    }
}
export namespace kangaroorewards.appsdk.features.userRewards.models {
    class RewardTranslation {
        constructor(id: number, languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, termsConditions: Nullable<string>, link: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userRewards.models.Language>);
        readonly id: number;
        readonly languageId: Nullable<number>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userRewards.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRewards.models.RewardTranslation>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.userRewards.models.Language>;
        copy(id: number, languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, termsConditions: Nullable<string>, link: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userRewards.models.Language>): kangaroorewards.appsdk.features.userRewards.models.RewardTranslation;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static RewardTranslation_init_$Create$(seen1: number, id: number, languageId: Nullable<number>, title: Nullable<string>, description: Nullable<string>, termsConditions: Nullable<string>, link: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userRewards.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRewards.models.RewardTranslation;
    }
}
export namespace kangaroorewards.appsdk.features.userRewards.models {
    class UserRewardsData {
        constructor(catalogItems: kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardModel>);
        readonly catalogItems: kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardModel>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRewards.models.UserRewardsData>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRewards.models.UserRewardsData>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardModel>;
        copy(catalogItems: kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardModel>): kangaroorewards.appsdk.features.userRewards.models.UserRewardsData;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserRewardsData_init_$Create$(seen1: number, catalogItems: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userRewards.models.RewardModel>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRewards.models.UserRewardsData;
    }
}
export namespace kangaroorewards.appsdk.features.userRewards.models {
    class UserRewardsModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userRewards.models.UserRewardsData);
        readonly data: kangaroorewards.appsdk.features.userRewards.models.UserRewardsData;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userRewards.models.UserRewardsModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userRewards.models.UserRewardsModel>;
        component1(): kangaroorewards.appsdk.features.userRewards.models.UserRewardsData;
        copy(data: kangaroorewards.appsdk.features.userRewards.models.UserRewardsData): kangaroorewards.appsdk.features.userRewards.models.UserRewardsModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserRewardsModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userRewards.models.UserRewardsData>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userRewards.models.UserRewardsModel;
    }
}
export namespace kangaroorewards.appsdk.features.userTransactionHistory.models {
    class Transaction {
        constructor(id: kotlin.Long, amount: Nullable<number>, points: Nullable<number>, name: Nullable<string>, transactionType: Nullable<number>, createdAt: Nullable<string>, updatedAt: Nullable<string>);
        readonly id: kotlin.Long;
        readonly amount: Nullable<number>;
        readonly points: Nullable<number>;
        readonly name: Nullable<string>;
        readonly transactionType: Nullable<number>;
        readonly createdAt: Nullable<string>;
        readonly updatedAt: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>;
        component1(): kotlin.Long;
        component2(): Nullable<number>;
        component3(): Nullable<number>;
        component4(): Nullable<string>;
        component5(): Nullable<number>;
        component6(): Nullable<string>;
        component7(): Nullable<string>;
        copy(id: kotlin.Long, amount: Nullable<number>, points: Nullable<number>, name: Nullable<string>, transactionType: Nullable<number>, createdAt: Nullable<string>, updatedAt: Nullable<string>): kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Transaction_init_$Create$(seen1: number, id: kotlin.Long, amount: Nullable<number>, points: Nullable<number>, name: Nullable<string>, transactionType: Nullable<number>, createdAt: Nullable<string>, updatedAt: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction;
    }
}
export namespace kangaroorewards.appsdk.features.userTransactionHistory.models {
    class UserTransactionHistoryModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kotlin.collections.List<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>);
        readonly data: kotlin.collections.List<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransactionHistory.models.UserTransactionHistoryModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransactionHistory.models.UserTransactionHistoryModel>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>;
        copy(data: kotlin.collections.List<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>): kangaroorewards.appsdk.features.userTransactionHistory.models.UserTransactionHistoryModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static UserTransactionHistoryModel_init_$Create$(seen1: number, data: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransactionHistory.models.Transaction>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransactionHistory.models.UserTransactionHistoryModel;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userTransferMessages.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class Language {
        constructor(id: number, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: number;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.Language>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: number, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userTransferMessages.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: number, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class OfferAction {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferAction_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class OfferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>>);
        readonly id: number;
        readonly points: Nullable<kotlin.Long>;
        readonly publishAt: Nullable<string>;
        readonly expiresAt: Nullable<string>;
        readonly isPublished: Nullable<boolean>;
        readonly couponConvertible: Nullable<boolean>;
        readonly realValue: Nullable<number>;
        readonly discountValue: Nullable<number>;
        readonly multipFactor: Nullable<number>;
        readonly minPurchase: Nullable<number>;
        readonly maxPurchase: Nullable<number>;
        readonly appsOnly: Nullable<boolean>;
        readonly offerFrequencyId: Nullable<number>;
        readonly freqDetails: Nullable<kotlin.collections.List<string>>;
        readonly peakFrom: Nullable<string>;
        readonly peakTo: Nullable<string>;
        readonly type: Nullable<string>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly slug: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.Image>>;
        readonly neverExpiresFlag: Nullable<boolean>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>;
        component1(): number;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        component6(): Nullable<boolean>;
        component7(): Nullable<number>;
        component8(): Nullable<number>;
        component9(): Nullable<number>;
        component10(): Nullable<number>;
        component11(): Nullable<number>;
        component12(): Nullable<boolean>;
        component13(): Nullable<number>;
        component14(): Nullable<kotlin.collections.List<string>>;
        component15(): Nullable<string>;
        component16(): Nullable<string>;
        component17(): Nullable<string>;
        component18(): Nullable<string>;
        component19(): Nullable<string>;
        component20(): Nullable<string>;
        component21(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.Image>>;
        component22(): Nullable<boolean>;
        component23(): Nullable<string>;
        component24(): Nullable<string>;
        component25(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>>;
        component26(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>>;
        copy(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>>): kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferModel_init_$Create$(seen1: number, id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.OfferAction>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class OfferTranslation {
        constructor(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.Language>);
        readonly id: number;
        readonly languageId: Nullable<number>;
        readonly offerTitle: Nullable<string>;
        readonly offerDescription: Nullable<string>;
        readonly offerTermsConditions: Nullable<string>;
        readonly offerLink: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.Language>;
        copy(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.Language>): kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferTranslation_init_$Create$(seen1: number, id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.OfferTranslation;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class TransferMessage {
        constructor(id: kotlin.Long, typeId: Nullable<kotlin.Long>, type: Nullable<string>, description: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, hidden: Nullable<boolean>, createdAt: Nullable<string>, offer: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>, giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>>);
        readonly id: kotlin.Long;
        readonly typeId: Nullable<kotlin.Long>;
        readonly type: Nullable<string>;
        readonly description: Nullable<string>;
        readonly points: Nullable<kotlin.Long>;
        readonly amount: Nullable<number>;
        readonly hidden: Nullable<boolean>;
        readonly createdAt: Nullable<string>;
        readonly offer: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>;
        readonly giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>;
        component1(): kotlin.Long;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<kotlin.Long>;
        component6(): Nullable<number>;
        component7(): Nullable<boolean>;
        component8(): Nullable<string>;
        component9(): Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>;
        component10(): Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>;
        component11(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>>;
        copy(id: kotlin.Long, typeId: Nullable<kotlin.Long>, type: Nullable<string>, description: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, hidden: Nullable<boolean>, createdAt: Nullable<string>, offer: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>, giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessage_init_$Create$(seen1: number, id: kotlin.Long, typeId: Nullable<kotlin.Long>, type: Nullable<string>, description: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, hidden: Nullable<boolean>, createdAt: Nullable<string>, offer: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.OfferModel>, giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class TransferMessageActions {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessageActions_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageActions;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class TransferMessageGiftCardQueue {
        constructor(id: Nullable<kotlin.Long>, enabled: Nullable<boolean>, senderName: Nullable<string>, recipientName: Nullable<string>, emailPhone: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, createdAt: Nullable<string>, scheduledAt: Nullable<string>);
        readonly id: Nullable<kotlin.Long>;
        readonly enabled: Nullable<boolean>;
        readonly senderName: Nullable<string>;
        readonly recipientName: Nullable<string>;
        readonly emailPhone: Nullable<string>;
        readonly points: Nullable<kotlin.Long>;
        readonly amount: Nullable<number>;
        readonly createdAt: Nullable<string>;
        readonly scheduledAt: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue>;
        component1(): Nullable<kotlin.Long>;
        component2(): Nullable<boolean>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<kotlin.Long>;
        component7(): Nullable<number>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        copy(id: Nullable<kotlin.Long>, enabled: Nullable<boolean>, senderName: Nullable<string>, recipientName: Nullable<string>, emailPhone: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, createdAt: Nullable<string>, scheduledAt: Nullable<string>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessageGiftCardQueue_init_$Create$(seen1: number, id: Nullable<kotlin.Long>, enabled: Nullable<boolean>, senderName: Nullable<string>, recipientName: Nullable<string>, emailPhone: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, createdAt: Nullable<string>, scheduledAt: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessageGiftCardQueue;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferMessages.models {
    class TransferMessagesModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>);
        readonly data: kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessagesModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessagesModel>;
        component1(): kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>;
        copy(data: kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessagesModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessagesModel_init_$Create$(seen1: number, data: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessage>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferMessages.models.TransferMessagesModel;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class Image {
        constructor(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>);
        readonly large: Nullable<string>;
        readonly medium: Nullable<string>;
        readonly thumbnail: Nullable<string>;
        readonly default: Nullable<boolean>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.Image>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.Image>;
        component1(): Nullable<string>;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        component4(): Nullable<boolean>;
        copy(large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>): kangaroorewards.appsdk.features.userTransferRecall.models.Image;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Image_init_$Create$(seen1: number, large: Nullable<string>, medium: Nullable<string>, thumbnail: Nullable<string>, _default: Nullable<boolean>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.Image;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class Language {
        constructor(id: number, abbreviation: Nullable<string>, name: Nullable<string>);
        readonly id: number;
        readonly abbreviation: Nullable<string>;
        readonly name: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.Language>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.Language>;
        component1(): number;
        component2(): Nullable<string>;
        component3(): Nullable<string>;
        copy(id: number, abbreviation: Nullable<string>, name: Nullable<string>): kangaroorewards.appsdk.features.userTransferRecall.models.Language;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static Language_init_$Create$(seen1: number, id: number, abbreviation: Nullable<string>, name: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.Language;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class OfferAction {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferAction_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class OfferModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>>);
        readonly id: number;
        readonly points: Nullable<kotlin.Long>;
        readonly publishAt: Nullable<string>;
        readonly expiresAt: Nullable<string>;
        readonly isPublished: Nullable<boolean>;
        readonly couponConvertible: Nullable<boolean>;
        readonly realValue: Nullable<number>;
        readonly discountValue: Nullable<number>;
        readonly multipFactor: Nullable<number>;
        readonly minPurchase: Nullable<number>;
        readonly maxPurchase: Nullable<number>;
        readonly appsOnly: Nullable<boolean>;
        readonly offerFrequencyId: Nullable<number>;
        readonly freqDetails: Nullable<kotlin.collections.List<string>>;
        readonly peakFrom: Nullable<string>;
        readonly peakTo: Nullable<string>;
        readonly type: Nullable<string>;
        readonly title: Nullable<string>;
        readonly description: Nullable<string>;
        readonly slug: Nullable<string>;
        readonly images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.Image>>;
        readonly neverExpiresFlag: Nullable<boolean>;
        readonly termsConditions: Nullable<string>;
        readonly link: Nullable<string>;
        readonly offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>;
        component1(): number;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<boolean>;
        component6(): Nullable<boolean>;
        component7(): Nullable<number>;
        component8(): Nullable<number>;
        component9(): Nullable<number>;
        component10(): Nullable<number>;
        component11(): Nullable<number>;
        component12(): Nullable<boolean>;
        component13(): Nullable<number>;
        component14(): Nullable<kotlin.collections.List<string>>;
        component15(): Nullable<string>;
        component16(): Nullable<string>;
        component17(): Nullable<string>;
        component18(): Nullable<string>;
        component19(): Nullable<string>;
        component20(): Nullable<string>;
        component21(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.Image>>;
        component22(): Nullable<boolean>;
        component23(): Nullable<string>;
        component24(): Nullable<string>;
        component25(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>>;
        component26(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>>;
        copy(id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>>): kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferModel_init_$Create$(seen1: number, id: number, points: Nullable<kotlin.Long>, publishAt: Nullable<string>, expiresAt: Nullable<string>, isPublished: Nullable<boolean>, couponConvertible: Nullable<boolean>, realValue: Nullable<number>, discountValue: Nullable<number>, multipFactor: Nullable<number>, minPurchase: Nullable<number>, maxPurchase: Nullable<number>, appsOnly: Nullable<boolean>, offerFrequencyId: Nullable<number>, freqDetails: Nullable<kotlin.collections.List<string>>, peakFrom: Nullable<string>, peakTo: Nullable<string>, type: Nullable<string>, title: Nullable<string>, description: Nullable<string>, slug: Nullable<string>, images: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.Image>>, neverExpiresFlag: Nullable<boolean>, termsConditions: Nullable<string>, link: Nullable<string>, offerLanguages: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.OfferAction>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class OfferTranslation {
        constructor(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.Language>);
        readonly id: number;
        readonly languageId: Nullable<number>;
        readonly offerTitle: Nullable<string>;
        readonly offerDescription: Nullable<string>;
        readonly offerTermsConditions: Nullable<string>;
        readonly offerLink: Nullable<string>;
        readonly language: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.Language>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation>;
        component1(): number;
        component2(): Nullable<number>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<string>;
        component7(): Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.Language>;
        copy(id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.Language>): kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static OfferTranslation_init_$Create$(seen1: number, id: number, languageId: Nullable<number>, offerTitle: Nullable<string>, offerDescription: Nullable<string>, offerTermsConditions: Nullable<string>, offerLink: Nullable<string>, language: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.Language>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.OfferTranslation;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class TransferMessage {
        constructor(id: kotlin.Long, typeId: Nullable<kotlin.Long>, type: Nullable<string>, description: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, hidden: Nullable<boolean>, createdAt: Nullable<string>, offer: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>, giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>>);
        readonly id: kotlin.Long;
        readonly typeId: Nullable<kotlin.Long>;
        readonly type: Nullable<string>;
        readonly description: Nullable<string>;
        readonly points: Nullable<kotlin.Long>;
        readonly amount: Nullable<number>;
        readonly hidden: Nullable<boolean>;
        readonly createdAt: Nullable<string>;
        readonly offer: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>;
        readonly giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>;
        readonly actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage>;
        component1(): kotlin.Long;
        component2(): Nullable<kotlin.Long>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<kotlin.Long>;
        component6(): Nullable<number>;
        component7(): Nullable<boolean>;
        component8(): Nullable<string>;
        component9(): Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>;
        component10(): Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>;
        component11(): Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>>;
        copy(id: kotlin.Long, typeId: Nullable<kotlin.Long>, type: Nullable<string>, description: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, hidden: Nullable<boolean>, createdAt: Nullable<string>, offer: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>, giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessage_init_$Create$(seen1: number, id: kotlin.Long, typeId: Nullable<kotlin.Long>, type: Nullable<string>, description: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, hidden: Nullable<boolean>, createdAt: Nullable<string>, offer: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.OfferModel>, giftCardQueue: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>, actions: Nullable<kotlin.collections.List<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class TransferMessageActions {
        constructor(type: Nullable<string>);
        readonly type: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions>;
        component1(): Nullable<string>;
        copy(type: Nullable<string>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessageActions_init_$Create$(seen1: number, type: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageActions;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class TransferMessageGiftCardQueue {
        constructor(id: Nullable<kotlin.Long>, enabled: Nullable<boolean>, senderName: Nullable<string>, recipientName: Nullable<string>, emailPhone: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, createdAt: Nullable<string>, scheduledAt: Nullable<string>);
        readonly id: Nullable<kotlin.Long>;
        readonly enabled: Nullable<boolean>;
        readonly senderName: Nullable<string>;
        readonly recipientName: Nullable<string>;
        readonly emailPhone: Nullable<string>;
        readonly points: Nullable<kotlin.Long>;
        readonly amount: Nullable<number>;
        readonly createdAt: Nullable<string>;
        readonly scheduledAt: Nullable<string>;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue>;
        component1(): Nullable<kotlin.Long>;
        component2(): Nullable<boolean>;
        component3(): Nullable<string>;
        component4(): Nullable<string>;
        component5(): Nullable<string>;
        component6(): Nullable<kotlin.Long>;
        component7(): Nullable<number>;
        component8(): Nullable<string>;
        component9(): Nullable<string>;
        copy(id: Nullable<kotlin.Long>, enabled: Nullable<boolean>, senderName: Nullable<string>, recipientName: Nullable<string>, emailPhone: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, createdAt: Nullable<string>, scheduledAt: Nullable<string>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferMessageGiftCardQueue_init_$Create$(seen1: number, id: Nullable<kotlin.Long>, enabled: Nullable<boolean>, senderName: Nullable<string>, recipientName: Nullable<string>, emailPhone: Nullable<string>, points: Nullable<kotlin.Long>, amount: Nullable<number>, createdAt: Nullable<string>, scheduledAt: Nullable<string>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessageGiftCardQueue;
    }
}
export namespace kangaroorewards.appsdk.features.userTransferRecall.models {
    class TransferRecallResultModel extends kangaroorewards.appsdk.core.io.Model {
        constructor(data: kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage);
        readonly data: kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage;
        readonly Companion: {
            serializer(): kotlinx.serialization.KSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferRecallResultModel>;
        };
        readonly $serializer: {
            readonly descriptor: kotlinx.serialization.descriptors.SerialDescriptor;
        } & kotlinx.serialization.internal.GeneratedSerializer<kangaroorewards.appsdk.features.userTransferRecall.models.TransferRecallResultModel>;
        component1(): kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage;
        copy(data: kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage): kangaroorewards.appsdk.features.userTransferRecall.models.TransferRecallResultModel;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
        static TransferRecallResultModel_init_$Create$(seen1: number, data: Nullable<kangaroorewards.appsdk.features.userTransferRecall.models.TransferMessage>, serializationConstructorMarker: Nullable<kotlinx.serialization.internal.SerializationConstructorMarker>): kangaroorewards.appsdk.features.userTransferRecall.models.TransferRecallResultModel;
    }
}
export namespace kangaroorewards.js.appsdk {
    class KangarooSdk {
        constructor();
        initialize(): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.business {
    class BusinessApi {
        constructor();
        getBusiness(businessId: string): void;
        observeBusinessState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.claimOffer {
    class ClaimOfferApi {
        constructor();
        claimOffer(offerId: number, customerId: string): void;
        observeClaimOfferState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.countries {
    class CountriesApi {
        constructor();
        getCountries(): void;
        observeCountriesState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.frequentBuyer {
    class FrequentBuyerApi {
        constructor();
        getFrequentBuyer(): void;
        observeFrequentBuyerState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.postOfferFacebookShare {
    class OfferFacebookShareApi {
        constructor();
        postOfferFacebookShare(offerId: string, include: string, facebookUserId: string, type: string, friendsCount: string): void;
        observeOfferFacebookShareState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.redeemReward {
    class RedeemRewardsApi {
        constructor();
        redeemReward(serializedRedeemRequest: string): void;
        observeRedeemRewardsState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.socialMedia {
    class SocialMediaApi {
        constructor();
        getSocialMedia(): void;
        observeSocialMediaState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userAlaCarte {
    class AlaCarteProductsApi {
        constructor();
        getAlaCarteProducts(): void;
        observeAlaCarteProductsState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userAuthentication {
    class UserAuthenticationApi {
        constructor();
        authenticateUser(username: string, password: string): void;
        observeUserAuthenticationSerialized(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userBalanceTransfer {
    class BalanceTransferApi {
        constructor();
        transfer(serializedTransferRequest: string): void;
        observeBalanceTransferState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userCampaignMessages {
    class CampaignMessagesApi {
        constructor();
        getCampaignMessages(businessId: string): void;
        observeCampaignMessagesState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userCheckIn {
    class UserCheckInApi {
        constructor();
        userCheckIn(serializedCheckInRequest: string): void;
        observeUserCheckInState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userNotificationPreferencesUpdate {
    class UpdateNotificationPreferencesApi {
        constructor();
        updateNotificationPreferences(serializedNotificationPreferencesRequest: string): void;
        observeUpdateNotificationPreferencesState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userOffers {
    class UserOffersApi {
        constructor();
        getUserOffers(): void;
        observeUserOffersState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userPinResetRequest {
    class UserPinResetRequestApi {
        constructor();
        requestPinReset(mode: string, email: Nullable<string>, phone: Nullable<string>, countryCode: Nullable<string>): void;
        observeUserPinResetRequestState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userPinResetWithVerificationCode {
    class UserPinResetApi {
        constructor();
        requestPinReset(verificationCode: number, email: Nullable<string>, phone: Nullable<string>, countryCode: Nullable<string>): void;
        observeUserPinResetState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userPinUpdate {
    class UserPinUpdateApi {
        constructor();
        updatePin(serializedUpdatePinRequest: string): void;
        observeUserPinUpdateState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userProducts {
    class UserProductsApi {
        constructor();
        getUserProducts(): void;
        observeUserProductsState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userProfile {
    class UserProfileApi {
        constructor();
        getUserProfile(): void;
        observeUserProfileState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userProfileUpdate {
    class UserProfileUpdateApi {
        constructor();
        updateUserProfile(firstName: Nullable<string>, lastName: Nullable<string>, birthDate: Nullable<string>, language: Nullable<string>, gender: Nullable<string>, profilePhoto: Nullable<string>): void;
        observeUserProfileUpdateState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userRegistration {
    class UserRegistrationApi {
        constructor();
        createAccount(email: Nullable<string>, phone: Nullable<string>, countryCode: Nullable<string>, language: Nullable<string>): void;
        observeUserRegistrationState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userRewards {
    class UserRewardsApi {
        constructor();
        getUserRewards(): void;
        observeUserRewardsState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userTransactionHistory {
    class UserTransactionHistoryApi {
        constructor();
        getUserTransactionHistory(): void;
        observeUserTransactionHistoryState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userTransferMessages {
    class TransferMessagesApi {
        constructor();
        getTransferMessages(businessId: string): void;
        observeTransferMessagesState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export namespace kangaroorewards.js.appsdk.features.userTransferRecall {
    class TransferRecallApi {
        constructor();
        recallTransfer(recallId: string): void;
        observeTransferRecallState(onData: (p0: string) => void, onStreamError: (p0: string) => void): void;
    }
}
export as namespace KangarooAppSDK;