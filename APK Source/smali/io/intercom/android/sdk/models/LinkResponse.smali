.class public Lio/intercom/android/sdk/models/LinkResponse;
.super Lio/intercom/android/sdk/models/BaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/LinkResponse$Builder;
    }
.end annotation


# instance fields
.field private final link:Lio/intercom/android/sdk/models/Link;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/models/LinkResponse$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/models/BaseResponse;-><init>(Lio/intercom/android/sdk/models/BaseResponse$Builder;)V

    iget-object v0, p1, Lio/intercom/android/sdk/models/LinkResponse$Builder;->article:Lio/intercom/android/sdk/models/Link$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/models/Link$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Link$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Link$Builder;->build()Lio/intercom/android/sdk/models/Link;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/LinkResponse;->link:Lio/intercom/android/sdk/models/Link;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/LinkResponse$Builder;->article:Lio/intercom/android/sdk/models/Link$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Link$Builder;->build()Lio/intercom/android/sdk/models/Link;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getLink()Lio/intercom/android/sdk/models/Link;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LinkResponse;->link:Lio/intercom/android/sdk/models/Link;

    return-object v0
.end method
