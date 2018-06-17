.class Lio/intercom/android/sdk/overlay/OverlayPresenter$5$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/OverlayPresenter$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/android/sdk/overlay/OverlayPresenter$5;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/OverlayPresenter$5;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$5$1;->this$1:Lio/intercom/android/sdk/overlay/OverlayPresenter$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$5$1;->this$1:Lio/intercom/android/sdk/overlay/OverlayPresenter$5;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/OverlayPresenter$5;->val$defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->removeView()V

    return-void
.end method
