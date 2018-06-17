.class public Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/overlay/DefaultLauncher$Listener;


# instance fields
.field private bottomPadding:I

.field defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final openBehaviour:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;

.field private previousUnreadCount:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->previousUnreadCount:I

    iput v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->bottomPadding:I

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->inflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->openBehaviour:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->getDefaultPadding(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->bottomPadding:I

    return-void
.end method

.method private getDefaultPadding(Landroid/content/res/Resources;)I
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$dimen;->intercom_launcher_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public displayLauncherOnAttachedRoot(Landroid/view/ViewGroup;I)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->isAttachedToRoot(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->removeView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->bottomPadding:I

    invoke-direct {v0, p1, v1, p0, v2}, Lio/intercom/android/sdk/overlay/DefaultLauncher;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lio/intercom/android/sdk/overlay/DefaultLauncher$Listener;I)V

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->fadeOnScreen()V

    :cond_1
    invoke-virtual {p0, p2}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->setLauncherBackgroundColor(I)V

    iget v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->previousUnreadCount:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->setUnreadCount(I)V

    return-void
.end method

.method getAndUnsetLauncher()Lio/intercom/android/sdk/overlay/DefaultLauncher;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    return-object v0
.end method

.method public isDisplaying()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLauncherClicked(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->openBehaviour:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->openMessenger(Landroid/content/Context;)V

    return-void
.end method

.method removeLauncher()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->fadeOffScreen(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    :cond_0
    return-void
.end method

.method public setBottomPadding(I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->getDefaultPadding(Landroid/content/res/Resources;)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->bottomPadding:I

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->isDisplaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iget v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->bottomPadding:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->updateBottomPadding(I)V

    :cond_0
    return-void
.end method

.method setLauncherBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->isDisplaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->previousUnreadCount:I

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedNotificationFromBadgeWhenMessengerClosed(Ljava/lang/String;)V

    :cond_0
    if-lez p1, :cond_2

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->setBadgeCount(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput p1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->previousUnreadCount:I

    return-void

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncherPresenter;->defaultLauncher:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/DefaultLauncher;->hideBadgeCount()V

    goto :goto_0
.end method
