.class public Lio/intercom/android/sdk/experimental/IntercomSettings;
.super Ljava/lang/Object;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private userHash:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->apiKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->appId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->email:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userHash:Ljava/lang/String;

    return-void
.end method

.method public static create()Lio/intercom/android/sdk/experimental/IntercomSettings;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/experimental/IntercomSettings;

    invoke-direct {v0}, Lio/intercom/android/sdk/experimental/IntercomSettings;-><init>()V

    return-object v0
.end method


# virtual methods
.method public canIdentifyUser()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public withApiKey(Ljava/lang/String;)Lio/intercom/android/sdk/experimental/IntercomSettings;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->apiKey:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "apiKey cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public withAppId(Ljava/lang/String;)Lio/intercom/android/sdk/experimental/IntercomSettings;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->appId:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "appId cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public withEmail(Ljava/lang/String;)Lio/intercom/android/sdk/experimental/IntercomSettings;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->email:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "email cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public withUserHash(Ljava/lang/String;)Lio/intercom/android/sdk/experimental/IntercomSettings;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userHash:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "userHash cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public withUserId(Ljava/lang/String;)Lio/intercom/android/sdk/experimental/IntercomSettings;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->userId:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/IntercomSettings;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "userId cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
