.class public Lio/intercom/android/sdk/api/ApiFactory;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "Intercom_SDK/HttpCache"

.field private static final CACHE_SIZE:I = 0xa00000

.field private static final ENDPOINT:Ljava/lang/String; = "/messenger/mobile/"

.field private static final INTERCOM_TRAFFIC_TAG:I = 0x2caae12

.field private static final MAX_DNS_SEGMENT_SIZE:I = 0x3f

.field private static final PARTIAL_HOSTNAME:Ljava/lang/String; = ".mobile-sdk-api.intercom.io"

.field private static final PROTOCOL:Ljava/lang/String; = "https://"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertHostnameToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/messenger/mobile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/api/Api;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/identity/AppIdentity;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/b/a/e;",
            ")",
            "Lio/intercom/android/sdk/api/Api;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/intercom/android/sdk/api/ApiFactory;->createConfigurableHttpClient(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;->build()Lio/intercom/okhttp3/OkHttpClient;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lio/intercom/android/sdk/api/ApiFactory;->createWithNetworkClient(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/c/a/b;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/store/Store;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    return-object v0
.end method

.method public static createConfigurableHttpClient(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;)Lio/intercom/okhttp3/OkHttpClient$Builder;
    .locals 6

    const-wide/16 v2, 0x2

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/TaggingSocketFactory;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    const v3, 0x2caae12

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/api/TaggingSocketFactory;-><init>(Ljavax/net/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/UserIdentityInterceptor;

    invoke-direct {v1, p2}, Lio/intercom/android/sdk/api/UserIdentityInterceptor;-><init>(Lio/intercom/android/sdk/identity/UserIdentity;)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->addInterceptor(Lio/intercom/okhttp3/Interceptor;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/RetryInterceptor;

    new-instance v2, Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;

    invoke-direct {v2}, Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;-><init>()V

    invoke-direct {v1, v2}, Lio/intercom/android/sdk/api/RetryInterceptor;-><init>(Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->addInterceptor(Lio/intercom/okhttp3/Interceptor;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/ShutdownInterceptor;

    new-instance v2, Lio/intercom/android/sdk/api/ShutdownState;

    sget-object v3, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-direct {v2, p0, p1, v3}, Lio/intercom/android/sdk/api/ShutdownState;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    invoke-direct {v1, v2}, Lio/intercom/android/sdk/api/ShutdownInterceptor;-><init>(Lio/intercom/android/sdk/api/ShutdownState;)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->addInterceptor(Lio/intercom/okhttp3/Interceptor;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Lio/intercom/android/sdk/api/HeaderInterceptor;->create(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;)Lio/intercom/android/sdk/api/HeaderInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lio/intercom/okhttp3/Interceptor;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Intercom_SDK/HttpCache"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lio/intercom/okhttp3/Cache;

    const-wide/32 v4, 0xa00000

    invoke-direct {v1, v2, v4, v5}, Lio/intercom/okhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->cache(Lio/intercom/okhttp3/Cache;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/api/ApiFactory;->getFullHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/intercom/okhttp3/CertificatePinner$Builder;

    invoke-direct {v2}, Lio/intercom/okhttp3/CertificatePinner$Builder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sha1/BiCgk94N+oILO/VULX+wYS6gWKU="

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lio/intercom/okhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lio/intercom/okhttp3/CertificatePinner$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CertificatePinner$Builder;->build()Lio/intercom/okhttp3/CertificatePinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->certificatePinner(Lio/intercom/okhttp3/CertificatePinner;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method private static createRetrofitClient(Lio/intercom/okhttp3/OkHttpClient;Ljava/lang/String;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/api/MessengerApi;
    .locals 2

    new-instance v0, Lio/intercom/retrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lio/intercom/retrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lio/intercom/retrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lio/intercom/retrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/retrofit2/Retrofit$Builder;->client(Lio/intercom/okhttp3/OkHttpClient;)Lio/intercom/retrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {p2}, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->create(Lio/intercom/a/b/a/e;)Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/retrofit2/Retrofit$Builder;->addConverterFactory(Lio/intercom/retrofit2/Converter$Factory;)Lio/intercom/retrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/retrofit2/Retrofit$Builder;->build()Lio/intercom/retrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lio/intercom/android/sdk/api/MessengerApi;

    invoke-virtual {v0, v1}, Lio/intercom/retrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/MessengerApi;

    return-object v0
.end method

.method static createUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v1, 0x3f

    const/16 v0, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/intercom/android/sdk/api/ApiFactory;->removeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public static createWithNetworkClient(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/c/a/b;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/store/Store;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/api/Api;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/identity/AppIdentity;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/okhttp3/OkHttpClient;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/b/a/e;",
            ")",
            "Lio/intercom/android/sdk/api/Api;"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/api/ApiFactory;->createRetrofitClient(Lio/intercom/okhttp3/OkHttpClient;Ljava/lang/String;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/api/MessengerApi;

    move-result-object v9

    new-instance v10, Lio/intercom/android/sdk/api/CallbackHolder;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {v10, v0, v1}, Lio/intercom/android/sdk/api/CallbackHolder;-><init>(Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;)V

    new-instance v11, Lio/intercom/android/sdk/api/RateLimiter;

    invoke-interface/range {p7 .. p7}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-direct {v11, v3}, Lio/intercom/android/sdk/api/RateLimiter;-><init>(Lio/intercom/android/sdk/identity/AppConfig;)V

    new-instance v3, Lio/intercom/android/sdk/api/Api;

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p7

    invoke-direct/range {v3 .. v13}, Lio/intercom/android/sdk/api/Api;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/c/a/b;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/api/MessengerApi;Lio/intercom/android/sdk/api/CallbackHolder;Lio/intercom/android/sdk/api/RateLimiter;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/Provider;)V

    return-object v3
.end method

.method static getFullHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/intercom/android/sdk/api/ApiFactory;->createUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mobile-sdk-api.intercom.io"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Lio/intercom/android/sdk/identity/AppIdentity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/api/ApiFactory;->getFullHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/api/ApiFactory;->convertHostnameToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[^A-Za-z0-9\\-$]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
