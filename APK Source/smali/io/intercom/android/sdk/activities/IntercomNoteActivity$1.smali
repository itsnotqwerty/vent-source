.class Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomNoteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

.field final synthetic val$noteView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

.field final synthetic val$reactionListener:Lio/intercom/android/sdk/conversation/ReactionListener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomNoteActivity;Lio/intercom/android/sdk/views/ContentAwareScrollView;Lio/intercom/android/sdk/conversation/ReactionListener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    iput-object p2, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->val$noteView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    iput-object p3, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->val$reactionListener:Lio/intercom/android/sdk/conversation/ReactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomReached()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->val$noteView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setListener(Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->composerLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->val$reactionListener:Lio/intercom/android/sdk/conversation/ReactionListener;

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    invoke-static {v4}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->access$000(Lio/intercom/android/sdk/activities/IntercomNoteActivity;)Lio/intercom/a/a/a/j;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setUpReactions(Lio/intercom/android/sdk/models/ReactionReply;ZLio/intercom/android/sdk/conversation/ReactionListener;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method public onScrollChanged(I)V
    .locals 0

    return-void
.end method
