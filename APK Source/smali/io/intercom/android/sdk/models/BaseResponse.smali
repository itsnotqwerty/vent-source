.class public abstract Lio/intercom/android/sdk/models/BaseResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/BaseResponse$Builder;
    }
.end annotation


# instance fields
.field private final config:Lio/intercom/android/sdk/models/Config;

.field private final hasConversations:Z

.field private final user:Lio/intercom/android/sdk/models/User;


# direct methods
.method protected constructor <init>(Lio/intercom/android/sdk/models/BaseResponse$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/models/BaseResponse$Builder;->config:Lio/intercom/android/sdk/models/Config$Builder;

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/models/Config;->NULL:Lio/intercom/android/sdk/models/Config;

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/BaseResponse;->config:Lio/intercom/android/sdk/models/Config;

    iget-boolean v0, p1, Lio/intercom/android/sdk/models/BaseResponse$Builder;->has_conversations:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/BaseResponse;->hasConversations:Z

    iget-object v0, p1, Lio/intercom/android/sdk/models/BaseResponse$Builder;->user:Lio/intercom/android/sdk/models/User$Builder;

    if-nez v0, :cond_1

    sget-object v0, Lio/intercom/android/sdk/models/User;->NULL:Lio/intercom/android/sdk/models/User;

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/models/BaseResponse;->user:Lio/intercom/android/sdk/models/User;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/BaseResponse$Builder;->config:Lio/intercom/android/sdk/models/Config$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Config$Builder;->build()Lio/intercom/android/sdk/models/Config;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/models/BaseResponse$Builder;->user:Lio/intercom/android/sdk/models/User$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/User$Builder;->build()Lio/intercom/android/sdk/models/User;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getConfig()Lio/intercom/android/sdk/models/Config;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/BaseResponse;->config:Lio/intercom/android/sdk/models/Config;

    return-object v0
.end method

.method public getUser()Lio/intercom/android/sdk/models/User;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/BaseResponse;->user:Lio/intercom/android/sdk/models/User;

    return-object v0
.end method

.method public hasConversations()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/BaseResponse;->hasConversations:Z

    return v0
.end method
