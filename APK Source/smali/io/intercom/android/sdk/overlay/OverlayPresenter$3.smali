.class Lio/intercom/android/sdk/overlay/OverlayPresenter$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/OverlayPresenter;->removeOverlaysIfPresent(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/OverlayPresenter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->val$root:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/OverlayPresenter;->launcherPresenter:Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->removeLauncher()V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v1, v0, Lio/intercom/android/sdk/overlay/OverlayPresenter;->inAppNotificationPresenter:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->val$root:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->reset(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->val$root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->val$root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$3;->val$root:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
