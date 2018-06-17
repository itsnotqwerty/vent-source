.class public Lio/intercom/android/sdk/api/Api;
.super Ljava/lang/Object;


# static fields
.field private static final BATCH_SIZE:Ljava/lang/String; = "batch_size"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DEVICE_DATA:Ljava/lang/String; = "device_data"

.field private static final DEVICE_TOKEN:Ljava/lang/String; = "device_token"

.field private static final HMAC:Ljava/lang/String; = "hmac"

.field private static final NEW_SESSION:Ljava/lang/String; = "new_session"

.field private static final SENT_FROM_BACKGROUND:Ljava/lang/String; = "sent_from_background"

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;

.field private static final UPLOAD:Ljava/lang/String; = "upload"

.field private static final USER:Ljava/lang/String; = "user"

.field private static final USER_ATTRIBUTES:Ljava/lang/String; = "user_attributes"


# instance fields
.field private final apiHttpClient:Lio/intercom/okhttp3/OkHttpClient;

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

.field final bus:Lio/intercom/a/c/a/b;

.field final callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

.field private final context:Landroid/content/Context;

.field private final defaultOkHttpMaxRequests:I

.field private final emptyCallback:Lio/intercom/retrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final httpClient:Lio/intercom/okhttp3/OkHttpClient;

.field private final messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

.field private final rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

.field private final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/api/Api;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/c/a/b;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/android/sdk/api/MessengerApi;Lio/intercom/android/sdk/api/CallbackHolder;Lio/intercom/android/sdk/api/RateLimiter;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/identity/AppIdentity;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/okhttp3/OkHttpClient;",
            "Lio/intercom/android/sdk/api/MessengerApi;",
            "Lio/intercom/android/sdk/api/CallbackHolder;",
            "Lio/intercom/android/sdk/api/RateLimiter;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lio/intercom/okhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/api/Api;->httpClient:Lio/intercom/okhttp3/OkHttpClient;

    new-instance v0, Lio/intercom/android/sdk/api/Api$4;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/api/Api$4;-><init>(Lio/intercom/android/sdk/api/Api;)V

    iput-object v0, p0, Lio/intercom/android/sdk/api/Api;->emptyCallback:Lio/intercom/retrofit2/Callback;

    iput-object p1, p0, Lio/intercom/android/sdk/api/Api;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/intercom/android/sdk/api/Api;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    iput-object p3, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p4, p0, Lio/intercom/android/sdk/api/Api;->bus:Lio/intercom/a/c/a/b;

    iput-object p6, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    iput-object p7, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    iput-object p8, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    iput-object p9, p0, Lio/intercom/android/sdk/api/Api;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p10, p0, Lio/intercom/android/sdk/api/Api;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p5, p0, Lio/intercom/android/sdk/api/Api;->apiHttpClient:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {p5}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Dispatcher;->getMaxRequests()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/api/Api;->defaultOkHttpMaxRequests:I

    invoke-virtual {p0}, Lio/intercom/android/sdk/api/Api;->updateMaxRequests()V

    return-void
.end method

.method static synthetic access$000()Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/api/Api;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/api/Api;)Lio/intercom/android/sdk/store/Store;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->store:Lio/intercom/android/sdk/store/Store;

    return-object v0
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/api/Api;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/api/Api;->retriableUpdateUser(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private addSecureHash(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/UserIdentity;->getHmac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "data"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hmac"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private baseNewConversationParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    return-object v0
.end method

.method private createBaseReplyParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message_type"

    const-string v2, "comment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    return-object v0
.end method

.method private generateUpdateUserParams(Lio/intercom/android/sdk/api/UserUpdateRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/api/UserUpdateRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_data"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->context:Landroid/content/Context;

    invoke-static {v2}, Lio/intercom/android/sdk/user/DeviceData;->generateDeviceData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_session"

    invoke-virtual {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->isNewSession()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sent_from_background"

    invoke-virtual {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->isSentFromBackground()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "batch_size"

    invoke-virtual {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->getBatchSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_attributes"

    invoke-virtual {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    return-object v0
.end method

.method protected static isUserNotFound(Lio/intercom/android/sdk/api/ErrorObject;Ljava/util/Map;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lio/intercom/android/sdk/api/ErrorObject;->hasErrorBody()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/api/ErrorObject;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "intercom_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/intercom/android/sdk/api/ErrorObject;->getErrorBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errors"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "not_found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lio/intercom/android/sdk/api/Api;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Could not parse error response"

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private logBackgroundDisabledError()V
    .locals 3

    sget-object v0, Lio/intercom/android/sdk/api/Api;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Your request was not sent because the app is in the background. Please contact Intercom to enable background requests."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private retriableUpdateUser(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v0, p1}, Lio/intercom/android/sdk/api/MessengerApi;->updateUser(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/Api$1;

    invoke-direct {v1, p0, p2, p1}, Lio/intercom/android/sdk/api/Api$1;-><init>(Lio/intercom/android/sdk/api/Api;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method private shouldStopBackgroundRequest(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->backgroundRequestsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addConversationRatingRemark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "remark"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->addConversationRatingRemark(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    const-string v2, "adding remark to conversation"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/api/CallbackHolder;->loggingCallback(Ljava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public fetchDefaultGifs(Lio/intercom/retrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/GifResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/api/MessengerApi;->getGifs(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public fetchGifs(Ljava/lang/String;Lio/intercom/retrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/GifResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getGifs(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public fetchSheet(Ljava/util/HashMap;Lio/intercom/retrofit2/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/Sheet$Builder;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getSheet(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public getConversation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/CallbackHolder;->conversationCallback()Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public getInbox()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "per_page"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getConversations(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/CallbackHolder;->inboxCallback()Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public getInboxBefore(J)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "before"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "per_page"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getConversations(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/CallbackHolder;->inboxCallback()Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public getLink(Ljava/lang/String;Lio/intercom/retrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/LinkResponse$Builder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getLink(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public getUnreadConversations()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "per_page"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->getUnreadConversations(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/CallbackHolder;->unreadCallback()Lio/intercom/android/sdk/api/BaseCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public getVideo(Ljava/lang/String;Lio/intercom/okhttp3/Callback;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->httpClient:Lio/intercom/okhttp3/OkHttpClient;

    new-instance v1, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient;->newCall(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/intercom/okhttp3/Call;->enqueue(Lio/intercom/okhttp3/Callback;)V

    return-void
.end method

.method public hitTrackingUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->httpClient:Lio/intercom/okhttp3/OkHttpClient;

    new-instance v1, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient;->newCall(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/Api$3;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/api/Api$3;-><init>(Lio/intercom/android/sdk/api/Api;)V

    invoke-interface {v0, v1}, Lio/intercom/okhttp3/Call;->enqueue(Lio/intercom/okhttp3/Callback;)V

    return-void
.end method

.method public isIdle()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->apiHttpClient:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Dispatcher;->runningCallsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSynchronous()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->apiHttpClient:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Dispatcher;->getMaxRequests()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/RateLimiter;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/RateLimiter;->logError()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->shouldStopBackgroundRequest(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lio/intercom/android/sdk/api/Api;->logBackgroundDisabledError()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/RateLimiter;->recordRequest()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "event_name"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "metadata"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "event"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sent_from_background"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user"

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v0, v2}, Lio/intercom/android/sdk/api/MessengerApi;->logEvent(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1}, Lio/intercom/android/sdk/api/CallbackHolder;->unreadCallback()Lio/intercom/android/sdk/api/BaseCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    goto :goto_0
.end method

.method public markConversationAsDismissed(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "conversation_ids"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->markAsDismissed(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->emptyCallback:Lio/intercom/retrofit2/Callback;

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public markConversationAsRead(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->markAsRead(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->emptyCallback:Lio/intercom/retrofit2/Callback;

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public rateConversation(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rating_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->rateConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    const-string v2, "conversation rating"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/api/CallbackHolder;->loggingCallback(Ljava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public reactToConversation(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reaction_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->reactToConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    const-string v2, "add reaction to conversation"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/api/CallbackHolder;->loggingCallback(Ljava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public reactToLink(Ljava/lang/String;IZ)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reaction_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "allow_auto_responses"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->reactToLink(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    const-string v2, "add reaction to link"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/api/CallbackHolder;->loggingCallback(Ljava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public removeDeviceToken(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->deleteDeviceToken(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->emptyCallback:Lio/intercom/retrofit2/Callback;

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public replyToConversation(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/api/Api;->createBaseReplyParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "blocks"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->replyToConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1, p3, p5, p4, p1}, Lio/intercom/android/sdk/api/CallbackHolder;->replyCallback(IZLjava/lang/String;Ljava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method retriableUpdateUser(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/api/Api;->retriableUpdateUser(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public satisfyOperatorCondition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transition_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, p1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->satisfyCondition(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->emptyCallback:Lio/intercom/retrofit2/Callback;

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public sendErrorReport(Lio/intercom/android/sdk/errorreporting/ErrorReport;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_report"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->reportError(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    const-string v2, "report error"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/api/CallbackHolder;->loggingCallback(Ljava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public sendMetrics(Ljava/util/List;Ljava/util/List;Lio/intercom/retrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/metrics/MetricObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/metrics/ops/OpsMetricObject;",
            ">;",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "metrics"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "op_metrics"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->sendMetrics(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p3}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/intercom/android/sdk/user/DeviceData;->generateDeviceData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "user"

    iget-object v3, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v3}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/api/MessengerApi;->setDeviceToken(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->emptyCallback:Lio/intercom/retrofit2/Callback;

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public setIdleCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->apiHttpClient:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Dispatcher;->setIdleCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startNewConversation(Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/api/Api;->baseNewConversationParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "blocks"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->startNewConversation(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->callbacks:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-virtual {v1, p2, p3}, Lio/intercom/android/sdk/api/CallbackHolder;->newConversationCallback(ILjava/lang/String;)Lio/intercom/retrofit2/Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public submitSheet(Ljava/lang/String;Ljava/util/Map;Lio/intercom/retrofit2/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    const-string v1, "uri"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sheet_values"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->submitSheet(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p3}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public updateMaxRequests()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->hasIntercomId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/intercom/android/sdk/api/Api;->defaultOkHttpMaxRequests:I

    :goto_0
    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->apiHttpClient:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lio/intercom/okhttp3/OkHttpClient;->dispatcher()Lio/intercom/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Dispatcher;->getMaxRequests()I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/Dispatcher;->setMaxRequests(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateUser(Lio/intercom/android/sdk/api/UserUpdateRequest;)V
    .locals 1

    invoke-virtual {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->isInternalUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/RateLimiter;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/RateLimiter;->logError()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->isSentFromBackground()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->shouldStopBackgroundRequest(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/intercom/android/sdk/api/Api;->logBackgroundDisabledError()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/api/Api;->rateLimiter:Lio/intercom/android/sdk/api/RateLimiter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/RateLimiter;->recordRequest()V

    :cond_3
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/api/Api;->generateUpdateUserParams(Lio/intercom/android/sdk/api/UserUpdateRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/api/Api;->retriableUpdateUser(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public uploadFile(Lcom/intercom/input/gallery/b;ILjava/lang/String;Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/conversation/UploadProgressListener;)V
    .locals 10

    iget-object v4, p1, Lcom/intercom/input/gallery/b;->bmd:Ljava/lang/String;

    iget-object v5, p1, Lcom/intercom/input/gallery/b;->mimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "original_filename"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "size_in_bytes"

    iget v3, p1, Lcom/intercom/input/gallery/b;->bmf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content_type"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "width"

    iget v3, p1, Lcom/intercom/input/gallery/b;->imageWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    iget v3, p1, Lcom/intercom/input/gallery/b;->imageHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "upload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/Api;->addSecureHash(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api;->messengerApi:Lio/intercom/android/sdk/api/MessengerApi;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/api/MessengerApi;->uploadFile(Ljava/util/Map;)Lio/intercom/retrofit2/Call;

    move-result-object v9

    new-instance v0, Lio/intercom/android/sdk/api/Api$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v6, p5

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/api/Api$2;-><init>(Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/blocks/UploadingImageCache;Lcom/intercom/input/gallery/b;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/conversation/UploadProgressListener;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Lio/intercom/retrofit2/Call;->enqueue(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method
