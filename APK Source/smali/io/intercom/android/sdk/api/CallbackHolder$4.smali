.class Lio/intercom/android/sdk/api/CallbackHolder$4;
.super Lio/intercom/android/sdk/api/BaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/api/CallbackHolder;->conversationCallback()Lio/intercom/retrofit2/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/android/sdk/api/BaseCallback",
        "<",
        "Lio/intercom/android/sdk/models/Conversation$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/api/CallbackHolder;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/CallbackHolder;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/api/CallbackHolder$4;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-direct {p0}, Lio/intercom/android/sdk/api/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/intercom/android/sdk/api/ErrorObject;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/CallbackHolder$4;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v0, v0, Lio/intercom/android/sdk/api/CallbackHolder;->bus:Lio/intercom/a/c/a/b;

    new-instance v1, Lio/intercom/android/sdk/models/events/failure/ConversationFailedEvent;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/events/failure/ConversationFailedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lio/intercom/android/sdk/models/Conversation$Builder;)V
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation$Builder;->build()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$4;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->fetchConversationSuccess(Lio/intercom/android/sdk/models/Conversation;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$4;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->bus:Lio/intercom/a/c/a/b;

    new-instance v2, Lio/intercom/android/sdk/models/events/ConversationEvent;

    invoke-direct {v2, v0}, Lio/intercom/android/sdk/models/events/ConversationEvent;-><init>(Lio/intercom/android/sdk/models/Conversation;)V

    invoke-virtual {v1, v2}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/models/Conversation$Builder;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/api/CallbackHolder$4;->onSuccess(Lio/intercom/android/sdk/models/Conversation$Builder;)V

    return-void
.end method
