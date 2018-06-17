.class Lio/intercom/android/sdk/overlay/InAppNotification$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/InAppNotification;->updateBottomPadding(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

.field final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/InAppNotification;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->this$0:Lio/intercom/android/sdk/overlay/InAppNotification;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification$2;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
