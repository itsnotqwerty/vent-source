.class public Lcom/google/ads/consent/ConsentInformation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;,
        Lcom/google/ads/consent/ConsentInformation$ServerResponse;,
        Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;,
        Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;
    }
.end annotation


# static fields
.field private static final CONSENT_DATA_KEY:Ljava/lang/String; = "consent_string"

.field private static final MOBILE_ADS_SERVER_URL:Ljava/lang/String; = "https://adservice.google.com/getconfig/pubvendors"

.field private static final PREFERENCES_FILE_KEY:Ljava/lang/String; = "mobileads_consent"

.field private static final TAG:Ljava/lang/String; = "ConsentInformation"

.field private static instance:Lcom/google/ads/consent/ConsentInformation;


# instance fields
.field private final context:Landroid/content/Context;

.field debugGeography:Lcom/google/ads/consent/DebugGeography;

.field private hashedDeviceId:Ljava/lang/String;

.field private testDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    sget-object v0, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_DISABLED:Lcom/google/ads/consent/DebugGeography;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/AdProvider;

    iget-object v3, v0, Lcom/google/ads/consent/AdProvider;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private a(Lcom/google/ads/consent/ConsentData;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lcom/google/a/f;

    invoke-direct {v1}, Lcom/google/a/f;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/a/f;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "consent_string"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/consent/ConsentInformation;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/ads/consent/ConsentInformation;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/a/f;

    invoke-direct {v0}, Lcom/google/a/f;-><init>()V

    const-class v1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/a/f;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;

    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not parse Event FE preflight response."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not parse Event FE preflight response."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->a(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->b(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->c(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->b(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response error."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ","

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " Lookup failure for: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ","

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " Publisher Ids not found: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    :cond_9
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->d(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->e(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_a
    move v4, v2

    goto :goto_1

    :cond_b
    move v5, v4

    :goto_2
    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v4, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v6

    iget-boolean v1, v6, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId:Z

    if-eq v1, v5, :cond_e

    move v1, v2

    :goto_4
    iput-boolean v5, v6, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId:Z

    iput-object p1, v6, Lcom/google/ads/consent/ConsentData;->rawResponse:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v6, Lcom/google/ads/consent/ConsentData;->publisherIds:Ljava/util/HashSet;

    iput-object v4, v6, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v6, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown:Z

    iget-object v0, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, v6}, Lcom/google/ads/consent/ConsentInformation;->a(Lcom/google/ads/consent/ConsentData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    monitor-exit p0

    return-void

    :cond_c
    if-eqz v5, :cond_d

    :try_start_2
    iget-object v1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    invoke-static {v1, v6}, Lcom/google/ads/consent/ConsentInformation;->a(Ljava/util/List;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    move-object v4, v1

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/util/HashSet;

    iget-object v4, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v1

    goto :goto_3

    :cond_e
    move v1, v3

    goto :goto_4

    :cond_f
    iget-object v0, v6, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    iget-object v2, v6, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    const-string v0, "sdk"

    iput-object v0, v6, Lcom/google/ads/consent/ConsentData;->consentSource:Ljava/lang/String;

    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    iput-object v0, v6, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v6, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    :cond_11
    invoke-direct {p0, v6}, Lcom/google/ads/consent/ConsentInformation;->a(Lcom/google/ads/consent/ConsentData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_12
    move v5, v3

    goto :goto_2
.end method

.method private static aP(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%032X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v7, v8, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static lc()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;
    .locals 2

    const-class v1, Lcom/google/ads/consent/ConsentInformation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/consent/ConsentInformation;

    invoke-direct {v0, p0}, Lcom/google/ads/consent/ConsentInformation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;

    :cond_0
    sget-object v0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final declared-synchronized a(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    :goto_0
    iput-object p2, v0, Lcom/google/ads/consent/ConsentData;->consentSource:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;

    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->a(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    iput-object v1, v0, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/consent/ConsentInformation;->lc()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "emulator"

    :cond_1
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->aP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final ld()Z
    .locals 2

    invoke-static {}, Lcom/google/ads/consent/ConsentInformation;->lc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized le()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/consent/ConsentData;->underAgeOfConsent:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->a(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized lf()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/consent/ConsentData;->underAgeOfConsent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final lg()Lcom/google/ads/consent/ConsentData;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_string"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/ads/consent/ConsentData;

    invoke-direct {v0}, Lcom/google/ads/consent/ConsentData;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/a/f;

    invoke-direct {v1}, Lcom/google/a/f;-><init>()V

    const-class v2, Lcom/google/ads/consent/ConsentData;

    invoke-virtual {v1, v0, v2}, Lcom/google/a/f;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentData;

    goto :goto_0
.end method

.method public final lh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown:Z

    return v0
.end method

.method public final declared-synchronized li()Lcom/google/ads/consent/ConsentStatus;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
