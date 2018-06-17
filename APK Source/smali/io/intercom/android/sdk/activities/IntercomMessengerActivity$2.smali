.class Lio/intercom/android/sdk/activities/IntercomMessengerActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->animateSdkWindowIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomMessengerActivity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomMessengerActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->hideBackgroundColor()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$2;->this$0:Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->getExistingConversationFragment()Lio/intercom/android/sdk/conversation/ConversationFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->sdkWindowFinishedAnimating()V

    :cond_0
    return-void
.end method
