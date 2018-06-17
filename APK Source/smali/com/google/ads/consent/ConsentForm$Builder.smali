.class public Lcom/google/ads/consent/ConsentForm$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/consent/ConsentForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adFreeOption:Z

.field private final appPrivacyPolicyURL:Ljava/net/URL;

.field private final context:Landroid/content/Context;

.field public listener:Lcom/google/ads/consent/ConsentFormListener;

.field public nonPersonalizedAdsOption:Z

.field public personalizedAdsOption:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm$Builder;->context:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->personalizedAdsOption:Z

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->nonPersonalizedAdsOption:Z

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->adFreeOption:Z

    iput-object p2, p0, Lcom/google/ads/consent/ConsentForm$Builder;->appPrivacyPolicyURL:Ljava/net/URL;

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->appPrivacyPolicyURL:Ljava/net/URL;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide valid app privacy policy url to create a ConsentForm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/ads/consent/ConsentForm$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->listener:Lcom/google/ads/consent/ConsentFormListener;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/consent/ConsentForm$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->personalizedAdsOption:Z

    return v0
.end method

.method static synthetic d(Lcom/google/ads/consent/ConsentForm$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->nonPersonalizedAdsOption:Z

    return v0
.end method

.method static synthetic e(Lcom/google/ads/consent/ConsentForm$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->adFreeOption:Z

    return v0
.end method

.method static synthetic f(Lcom/google/ads/consent/ConsentForm$Builder;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->appPrivacyPolicyURL:Ljava/net/URL;

    return-object v0
.end method
