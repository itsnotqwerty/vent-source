.class Lio/intercom/android/sdk/overlay/ChatNotification$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/ChatNotification;->getWidthAnimator(Landroid/view/ViewGroup;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasSentUpdate:Z

.field final synthetic this$0:Lio/intercom/android/sdk/overlay/ChatNotification;

.field final synthetic val$animatorListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$diff:I


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/ChatNotification;ILandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->this$0:Lio/intercom/android/sdk/overlay/ChatNotification;

    iput p2, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->val$diff:I

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->hasSentUpdate:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->val$diff:I

    if-lez v1, :cond_1

    iget v1, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->val$diff:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    :goto_0
    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->hasSentUpdate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->hasSentUpdate:Z

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification$4;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method
