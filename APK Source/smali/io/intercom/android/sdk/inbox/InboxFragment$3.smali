.class Lio/intercom/android/sdk/inbox/InboxFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/inbox/InboxFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/inbox/InboxFragment;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/inbox/InboxFragment;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/inbox/InboxFragment$3;->this$0:Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment$3;->this$0:Lio/intercom/android/sdk/inbox/InboxFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/inbox/InboxFragment;->listener:Lio/intercom/android/sdk/inbox/InboxFragment$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/inbox/InboxFragment$Listener;->onComposerSelected()V

    return-void
.end method
