.class Lio/intercom/android/sdk/activities/IntercomPostActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

.field final synthetic val$reactionListener:Lio/intercom/android/sdk/conversation/ReactionListener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomPostActivity;Lio/intercom/android/sdk/conversation/ReactionListener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iput-object p2, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->val$reactionListener:Lio/intercom/android/sdk/conversation/ReactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomReached()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomPostActivity;->postView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setListener(Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomPostActivity;->composerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomPostActivity;->composerLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomPostActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomPostActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->val$reactionListener:Lio/intercom/android/sdk/conversation/ReactionListener;

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    invoke-static {v4}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->access$000(Lio/intercom/android/sdk/activities/IntercomPostActivity;)Lio/intercom/a/a/a/j;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setUpReactions(Lio/intercom/android/sdk/models/ReactionReply;ZLio/intercom/android/sdk/conversation/ReactionListener;Lio/intercom/a/a/a/j;)V

    :cond_0
    return-void
.end method

.method public onScrollChanged(I)V
    .locals 0

    return-void
.end method
