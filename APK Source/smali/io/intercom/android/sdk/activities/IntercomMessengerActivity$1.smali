.class Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->showMessenger()V
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

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1;->this$0:Lio/intercom/android/sdk/activities/IntercomMessengerActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->background:Landroid/view/View;

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1$1;-><init>(Lio/intercom/android/sdk/activities/IntercomMessengerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
