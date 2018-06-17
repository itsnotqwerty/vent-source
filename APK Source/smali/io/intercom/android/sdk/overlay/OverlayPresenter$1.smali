.class Lio/intercom/android/sdk/overlay/OverlayPresenter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/OverlayPresenter;->onStateChange(Ljava/lang/Integer;Lio/intercom/android/sdk/state/OverlayState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

.field final synthetic val$root:Landroid/view/ViewGroup;

.field final synthetic val$unreadCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/OverlayPresenter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->val$root:Landroid/view/ViewGroup;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->val$unreadCount:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/OverlayPresenter;->inAppNotificationPresenter:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->val$root:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->reset(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/OverlayPresenter;->launcherPresenter:Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->val$unreadCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->setUnreadCount(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->access$000(Lio/intercom/android/sdk/overlay/OverlayPresenter;)Lio/intercom/android/sdk/Provider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v1, v1, Lio/intercom/android/sdk/overlay/OverlayPresenter;->launcherPresenter:Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$1;->val$root:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->displayLauncherOnAttachedRoot(Landroid/view/ViewGroup;I)V

    return-void
.end method
