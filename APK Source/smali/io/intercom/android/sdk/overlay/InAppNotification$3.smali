.class Lio/intercom/android/sdk/overlay/InAppNotification$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/InAppNotification;->performReplyPulse(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

.field final synthetic val$text:Landroid/view/View;

.field final synthetic val$updateEndAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/InAppNotification;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/InAppNotification$3;->this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotification$3;->val$text:Landroid/view/View;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/InAppNotification$3;->val$updateEndAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification$3;->this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification$3;->this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

    invoke-static {v1}, Lio/intercom/android/sdk/overlay/InAppNotification;->access$000(Lio/intercom/android/sdk/overlay/InAppNotification;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/overlay/InAppNotification;->updateViewDataDuringReplyPulse(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification$3;->val$text:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lio/intercom/android/sdk/overlay/InAppNotification$3$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/overlay/InAppNotification$3$1;-><init>(Lio/intercom/android/sdk/overlay/InAppNotification$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
