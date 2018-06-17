.class Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;


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


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomNoteActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->animateContent()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/ReactionReply;->isNull(Lio/intercom/android/sdk/models/ReactionReply;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->composerLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    sget v1, Lio/intercom/android/sdk/R$id;->note_touch_target:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomNoteActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomNoteActivity;

    sget v1, Lio/intercom/android/sdk/R$id;->composer_input_view:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/activities/IntercomNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
