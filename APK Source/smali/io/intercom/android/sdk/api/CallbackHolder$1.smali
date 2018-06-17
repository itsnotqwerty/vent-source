.class Lio/intercom/android/sdk/api/CallbackHolder$1;
.super Lio/intercom/android/sdk/api/BaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/api/CallbackHolder;->unreadCallback()Lio/intercom/android/sdk/api/BaseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/android/sdk/api/BaseCallback",
        "<",
        "Lio/intercom/android/sdk/models/UsersResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/api/CallbackHolder;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/CallbackHolder;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/api/CallbackHolder$1;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    invoke-direct {p0}, Lio/intercom/android/sdk/api/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lio/intercom/android/sdk/models/UsersResponse$Builder;)V
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/UsersResponse$Builder;->build()Lio/intercom/android/sdk/models/UsersResponse;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$1;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->baseResponseReceived(Lio/intercom/android/sdk/models/BaseResponse;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$1;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->unreadConversationsSuccess(Lio/intercom/android/sdk/models/UsersResponse;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/models/UsersResponse$Builder;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/api/CallbackHolder$1;->onSuccess(Lio/intercom/android/sdk/models/UsersResponse$Builder;)V

    return-void
.end method
