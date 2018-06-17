.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onReplyDelivered(Lio/intercom/android/sdk/models/events/ReplyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

.field final synthetic val$part:Lio/intercom/android/sdk/models/Part;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Lio/intercom/android/sdk/models/Part;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;->val$part:Lio/intercom/android/sdk/models/Part;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;->val$part:Lio/intercom/android/sdk/models/Part;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setDisplayDelivered(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$400(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    return-void
.end method
