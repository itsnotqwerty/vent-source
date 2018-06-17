.class public Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Middleware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Middleware",
        "<",
        "Lio/intercom/android/sdk/state/State;",
        ">;"
    }
.end annotation


# instance fields
.field private final presenterProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/overlay/OverlayPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/overlay/OverlayPresenter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->presenterProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method private presenter()Lio/intercom/android/sdk/overlay/OverlayPresenter;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->presenterProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/OverlayPresenter;

    return-object v0
.end method

.method private removeOverlays(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->presenter()Lio/intercom/android/sdk/overlay/OverlayPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->removeOverlaysIfPresent(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/store/Store$NextDispatcher;",
            ")V"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/store/Selectors;->OVERLAY:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/OverlayState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState;->pausedHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState;->resumedHostActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p3, p2}, Lio/intercom/android/sdk/store/Store$NextDispatcher;->dispatch(Lio/intercom/android/sdk/actions/Action;)V

    return-void

    :pswitch_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->removeOverlays(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->removeOverlays(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->removeOverlays(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->presenter()Lio/intercom/android/sdk/overlay/OverlayPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->cancelAnimations()V

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->removeOverlays(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;->removeOverlays(Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
