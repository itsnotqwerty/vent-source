.class public abstract Lio/intercom/android/sdk/push/PushPayload;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field private static final MESSAGE_TYPE:Ljava/lang/String; = "message"

.field private static final PUSH_ONLY:Ljava/lang/String; = "push_only"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Bundle;)Lio/intercom/android/sdk/push/PushPayload;
    .locals 14

    :goto_0
    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const-string v0, "intercom_priority_type"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    new-instance v0, Lio/intercom/android/sdk/push/AutoValue_PushPayload;

    const-string v1, "conversation_id"

    invoke-static {p0, v1}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-static {p0, v2}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-static {p0, v3}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "author_name"

    invoke-static {p0, v4}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "image_url"

    invoke-static {p0, v5}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_name"

    invoke-static {p0, v6}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "receiver"

    invoke-static {p0, v7}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "conversation_part_type"

    invoke-static {p0, v8}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "intercom_push_type"

    invoke-static {p0, v9}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uri"

    invoke-static {p0, v10}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "push_only_conv_id"

    invoke-static {p0, v11}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "title"

    invoke-static {p0, v12}, Lio/intercom/android/sdk/push/PushPayload;->stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v13}, Lio/intercom/android/sdk/push/AutoValue_PushPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static stringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAuthorName()Ljava/lang/String;
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getConversationPartType()Ljava/lang/String;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getIntercomPushType()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getPushOnlyConversationId()Ljava/lang/String;
.end method

.method public abstract getReceiver()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method isFirstPart()Z
    .locals 2

    const-string v0, "message"

    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getConversationPartType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isIntercomPush()Z
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getIntercomPushType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "intercom_sdk"

    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getReceiver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPushOnly()Z
    .locals 2

    const-string v0, "push_only"

    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getIntercomPushType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method messageOrBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/push/PushPayload;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
