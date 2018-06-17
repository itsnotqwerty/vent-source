.class public final Lio/intercom/android/sdk/models/SocialAccount$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/SocialAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field profile_url:Ljava/lang/String;

.field provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/SocialAccount;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/models/SocialAccount$Builder;->provider:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/SocialAccount$Builder;->profile_url:Ljava/lang/String;

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/models/SocialAccount;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/SocialAccount;

    move-result-object v0

    return-object v0
.end method
