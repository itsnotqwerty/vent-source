.class abstract Lio/intercom/android/sdk/identity/SoftUserIdentity;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field static final NONE:Lio/intercom/android/sdk/identity/SoftUserIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/identity/SoftUserIdentity;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/identity/SoftUserIdentity;->NONE:Lio/intercom/android/sdk/identity/SoftUserIdentity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/identity/SoftUserIdentity;
    .locals 8

    new-instance v0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract anonymousId()Ljava/lang/String;
.end method

.method abstract data()Ljava/lang/String;
.end method

.method abstract email()Ljava/lang/String;
.end method

.method abstract fingerprint()Ljava/lang/String;
.end method

.method abstract hmac()Ljava/lang/String;
.end method

.method abstract intercomId()Ljava/lang/String;
.end method

.method isPresent()Z
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/identity/SoftUserIdentity;->NONE:Lio/intercom/android/sdk/identity/SoftUserIdentity;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSameUser(Lio/intercom/android/sdk/identity/Registration;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/Registration;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/Registration;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->userId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->email()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    return v2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_2
.end method

.method abstract userId()Ljava/lang/String;
.end method
