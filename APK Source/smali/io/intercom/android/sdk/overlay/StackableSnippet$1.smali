.class Lio/intercom/android/sdk/overlay/StackableSnippet$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/StackableSnippet;->animateOnScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/StackableSnippet;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/StackableSnippet;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet$1;->this$0:Lio/intercom/android/sdk/overlay/StackableSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet$1;->this$0:Lio/intercom/android/sdk/overlay/StackableSnippet;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet$1;->this$0:Lio/intercom/android/sdk/overlay/StackableSnippet;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet$1;->this$0:Lio/intercom/android/sdk/overlay/StackableSnippet;

    iget v1, v1, Lio/intercom/android/sdk/overlay/StackableSnippet;->screenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet$1;->this$0:Lio/intercom/android/sdk/overlay/StackableSnippet;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
