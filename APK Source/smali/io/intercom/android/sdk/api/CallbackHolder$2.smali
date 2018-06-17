.class Lio/intercom/android/sdk/api/CallbackHolder$2;
.super Lio/intercom/android/sdk/api/BaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/api/CallbackHolder;->inboxCallback()Lio/intercom/retrofit2/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/android/sdk/api/BaseCallback",
        "<",
        "Lio/intercom/android/sdk/models/ConversationsResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/api/CallbackHolder;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/CallbackHolder;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/api/CallbackHolder$2;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-direct {p0}, Lio/intercom/android/sdk/api/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/intercom/android/sdk/api/ErrorObject;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/CallbackHolder$2;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v0, v0, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->fetchInboxFailed()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method

.method public onSuccess(Lio/intercom/android/sdk/models/ConversationsResponse$Builder;)V
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/ConversationsResponse$Builder;->build()Lio/intercom/android/sdk/models/ConversationsResponse;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$2;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->baseResponseReceived(Lio/intercom/android/sdk/models/BaseResponse;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$2;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->fetchInboxSuccess(Lio/intercom/android/sdk/models/ConversationsResponse;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/models/ConversationsResponse$Builder;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/api/CallbackHolder$2;->onSuccess(Lio/intercom/android/sdk/models/ConversationsResponse$Builder;)V

    return-void
.end method
