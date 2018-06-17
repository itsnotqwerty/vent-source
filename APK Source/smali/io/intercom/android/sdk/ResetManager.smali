.class public Lio/intercom/android/sdk/ResetManager;
.super Ljava/lang/Object;


# instance fields
.field private final activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

.field private final apiProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;"
        }
    .end annotation
.end field

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final hardResetTask:Ljava/lang/Runnable;

.field private final overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

.field private final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

.field private final userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/overlay/OverlayPresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/api/UserUpdateBatcher;Landroid/content/Context;Lio/intercom/android/sdk/utilities/ActivityFinisher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/android/sdk/overlay/OverlayPresenter;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/utilities/ActivityFinisher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/intercom/android/sdk/ResetManager;->handler:Landroid/os/Handler;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/ResetManager;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v0, Lio/intercom/android/sdk/ResetManager$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/ResetManager$1;-><init>(Lio/intercom/android/sdk/ResetManager;)V

    iput-object v0, p0, Lio/intercom/android/sdk/ResetManager;->hardResetTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lio/intercom/android/sdk/ResetManager;->apiProvider:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/ResetManager;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p3, p0, Lio/intercom/android/sdk/ResetManager;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iput-object p4, p0, Lio/intercom/android/sdk/ResetManager;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p5, p0, Lio/intercom/android/sdk/ResetManager;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p6, p0, Lio/intercom/android/sdk/ResetManager;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    iput-object p7, p0, Lio/intercom/android/sdk/ResetManager;->context:Landroid/content/Context;

    iput-object p8, p0, Lio/intercom/android/sdk/ResetManager;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/android/sdk/ResetManager;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hardReset()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/android/sdk/ResetManager;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/ResetManager;->isSoftReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/intercom/android/sdk/user/DeviceData;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "There is no device token to remove."

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->hardReset()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/Api;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/api/Api;->removeDeviceToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isSoftReset()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->isSoftReset()Z

    move-result v0

    return v0
.end method

.method public softReset()V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->submitPendingUpdate()V

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/ActivityFinisher;->finishActivities()V

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->softReset()V

    iget-object v1, p0, Lio/intercom/android/sdk/ResetManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lio/intercom/android/sdk/ResetManager;->hardResetTask:Ljava/lang/Runnable;

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getSoftResetTimeoutMs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->softReset()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Successfully reset the user. To resume communicating with Intercom, you can register a user"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
