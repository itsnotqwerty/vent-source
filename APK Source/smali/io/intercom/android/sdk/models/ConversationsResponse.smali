.class public Lio/intercom/android/sdk/models/ConversationsResponse;
.super Lio/intercom/android/sdk/models/BaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/ConversationsResponse$Builder;
    }
.end annotation


# instance fields
.field private final conversationPage:Lio/intercom/android/sdk/models/ConversationList;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/models/ConversationsResponse$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/models/BaseResponse;-><init>(Lio/intercom/android/sdk/models/BaseResponse$Builder;)V

    iget-object v0, p1, Lio/intercom/android/sdk/models/ConversationsResponse$Builder;->conversation_page:Lio/intercom/android/sdk/models/ConversationList$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/models/ConversationList$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/ConversationList$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationList$Builder;->build()Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/ConversationsResponse;->conversationPage:Lio/intercom/android/sdk/models/ConversationList;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/ConversationsResponse$Builder;->conversation_page:Lio/intercom/android/sdk/models/ConversationList$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ConversationList$Builder;->build()Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getConversationPage()Lio/intercom/android/sdk/models/ConversationList;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationsResponse;->conversationPage:Lio/intercom/android/sdk/models/ConversationList;

    return-object v0
.end method
