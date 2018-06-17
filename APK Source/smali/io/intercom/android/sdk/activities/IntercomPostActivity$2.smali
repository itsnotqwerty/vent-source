.class Lio/intercom/android/sdk/activities/IntercomPostActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;


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

.field final synthetic val$intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomPostActivity;Lio/intercom/android/sdk/views/IntercomToolbar;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iput-object p2, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->val$intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->val$intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->animateToolbar(Lio/intercom/android/sdk/views/IntercomToolbar;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->animateContent()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->openedFromConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomPostActivity;->composerLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomPostActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/ReactionReply;->isNull(Lio/intercom/android/sdk/models/ReactionReply;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    sget v1, Lio/intercom/android/sdk/R$id;->post_touch_target:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomPostActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomPostActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->animateComposer()V

    goto :goto_0
.end method
