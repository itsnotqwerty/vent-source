.class Lio/intercom/android/sdk/overlay/DefaultLauncher$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/DefaultLauncher;->updateBottomPadding(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;

.field final synthetic val$params:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/DefaultLauncher;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/DefaultLauncher;->launcherRoot:Landroid/view/View;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
