.class Lcom/google/ads/consent/ConsentData;
.super Ljava/lang/Object;


# instance fields
.field adProviders:Ljava/util/HashSet;
    .annotation runtime Lcom/google/a/a/c;
        value = "providers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field consentSource:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "consent_source"
    .end annotation
.end field

.field consentStatus:Lcom/google/ads/consent/ConsentStatus;
    .annotation runtime Lcom/google/a/a/c;
        value = "consent_state"
    .end annotation
.end field

.field consentedAdProviders:Ljava/util/HashSet;
    .annotation runtime Lcom/google/a/a/c;
        value = "consented_providers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field hasNonPersonalizedPublisherId:Z
    .annotation runtime Lcom/google/a/a/c;
        value = "has_any_npa_pub_id"
    .end annotation
.end field

.field isRequestLocationInEeaOrUnknown:Z
    .annotation runtime Lcom/google/a/a/c;
        value = "is_request_in_eea_or_unknown"
    .end annotation
.end field

.field publisherIds:Ljava/util/HashSet;
    .annotation runtime Lcom/google/a/a/c;
        value = "pub_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rawResponse:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "raw_response"
    .end annotation
.end field

.field private final sdkPlatformString:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "plat"
    .end annotation
.end field

.field private final sdkVersionString:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "version"
    .end annotation
.end field

.field underAgeOfConsent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/a/a/c;
        value = "tag_for_under_age_of_consent"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.3"

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->sdkVersionString:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->sdkPlatformString:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->publisherIds:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->underAgeOfConsent:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;

    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown:Z

    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->rawResponse:Ljava/lang/String;

    return-void
.end method
