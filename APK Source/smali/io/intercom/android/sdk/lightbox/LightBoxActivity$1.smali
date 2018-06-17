.class Lio/intercom/android/sdk/lightbox/LightBoxActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/lightbox/LightBoxActivity;->fadeIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/lightbox/LightBoxActivity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/lightbox/LightBoxActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity$1;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity$1;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxActivity;

    iget-object v1, v0, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method
