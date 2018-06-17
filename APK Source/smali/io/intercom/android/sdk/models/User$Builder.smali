.class public final Lio/intercom/android/sdk/models/User$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field anonymous_id:Ljava/lang/String;

.field private avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

.field email:Ljava/lang/String;

.field intercom_id:Ljava/lang/String;

.field user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/User;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/User;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/models/User;-><init>(Lio/intercom/android/sdk/models/User$Builder;)V

    return-object v0
.end method

.method public final withAnonymousId(Ljava/lang/String;)Lio/intercom/android/sdk/models/User$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/User$Builder;->anonymous_id:Ljava/lang/String;

    return-object p0
.end method

.method public final withAvatar(Lio/intercom/android/sdk/models/Avatar$Builder;)Lio/intercom/android/sdk/models/User$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/User$Builder;->avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

    return-object p0
.end method

.method public final withEmail(Ljava/lang/String;)Lio/intercom/android/sdk/models/User$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/User$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public final withIntercomId(Ljava/lang/String;)Lio/intercom/android/sdk/models/User$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/User$Builder;->intercom_id:Ljava/lang/String;

    return-object p0
.end method

.method public final withUserId(Ljava/lang/String;)Lio/intercom/android/sdk/models/User$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/User$Builder;->user_id:Ljava/lang/String;

    return-object p0
.end method
