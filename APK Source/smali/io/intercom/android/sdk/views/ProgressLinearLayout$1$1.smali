.class Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/android/sdk/views/ProgressLinearLayout$1;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/ProgressLinearLayout$1;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;->this$1:Lio/intercom/android/sdk/views/ProgressLinearLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;->this$1:Lio/intercom/android/sdk/views/ProgressLinearLayout$1;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/UploadProgressBar;->hideBar()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;->this$1:Lio/intercom/android/sdk/views/ProgressLinearLayout$1;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->attachmentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;->this$1:Lio/intercom/android/sdk/views/ProgressLinearLayout$1;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->attachmentIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;->this$1:Lio/intercom/android/sdk/views/ProgressLinearLayout$1;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->attachmentIcon:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
