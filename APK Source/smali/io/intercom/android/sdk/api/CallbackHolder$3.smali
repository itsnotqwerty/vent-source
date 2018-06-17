.class Lio/intercom/android/sdk/api/CallbackHolder$3;
.super Lio/intercom/android/sdk/api/BaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/api/CallbackHolder;->replyCallback(IZLjava/lang/String;Ljava/lang/String;)Lio/intercom/retrofit2/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/android/sdk/api/BaseCallback",
        "<",
        "Lio/intercom/android/sdk/models/Part$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/api/CallbackHolder;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$isUpload:Z

.field final synthetic val$partId:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/CallbackHolder;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iput-object p2, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$conversationId:Ljava/lang/String;

    iput p3, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$position:I

    iput-object p4, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$partId:Ljava/lang/String;

    iput-boolean p5, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$isUpload:Z

    invoke-direct {p0}, Lio/intercom/android/sdk/api/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/intercom/android/sdk/api/ErrorObject;)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v0, v0, Lio/intercom/android/sdk/api/CallbackHolder;->bus:Lio/intercom/a/c/a/b;

    new-instance v1, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;

    iget v2, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$position:I

    iget-boolean v3, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$isUpload:Z

    iget-object v4, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$partId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lio/intercom/android/sdk/models/Part$Builder;)V
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part$Builder;->build()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    new-instance v2, Lio/intercom/android/sdk/state/ReplyPart;

    iget-object v3, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$conversationId:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lio/intercom/android/sdk/state/ReplyPart;-><init>(Lio/intercom/android/sdk/models/Part;Ljava/lang/String;)V

    invoke-static {v2}, Lio/intercom/android/sdk/actions/Actions;->conversationReplySuccess(Lio/intercom/android/sdk/state/ReplyPart;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->this$0:Lio/intercom/android/sdk/api/CallbackHolder;

    iget-object v1, v1, Lio/intercom/android/sdk/api/CallbackHolder;->bus:Lio/intercom/a/c/a/b;

    new-instance v2, Lio/intercom/android/sdk/models/events/ReplyEvent;

    iget v3, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$position:I

    iget-object v4, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$partId:Ljava/lang/String;

    iget-object v5, p0, Lio/intercom/android/sdk/api/CallbackHolder$3;->val$conversationId:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lio/intercom/android/sdk/models/events/ReplyEvent;-><init>(Lio/intercom/android/sdk/models/Part;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/api/CallbackHolder$3;->onSuccess(Lio/intercom/android/sdk/models/Part$Builder;)V

    return-void
.end method
