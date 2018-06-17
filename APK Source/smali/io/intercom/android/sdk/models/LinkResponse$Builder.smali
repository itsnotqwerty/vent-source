.class public final Lio/intercom/android/sdk/models/LinkResponse$Builder;
.super Lio/intercom/android/sdk/models/BaseResponse$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/LinkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field article:Lio/intercom/android/sdk/models/Link$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/models/BaseResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lio/intercom/android/sdk/models/BaseResponse;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/LinkResponse$Builder;->build()Lio/intercom/android/sdk/models/LinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/intercom/android/sdk/models/LinkResponse;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/LinkResponse;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/models/LinkResponse;-><init>(Lio/intercom/android/sdk/models/LinkResponse$Builder;)V

    return-object v0
.end method
