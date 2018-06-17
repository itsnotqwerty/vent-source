.class Lio/intercom/android/sdk/LifecycleTracker;
.super Lio/intercom/android/sdk/utilities/SimpleActivityLifecycleCallbacks;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final deDuper:Lio/intercom/android/sdk/api/DeDuper;

.field private final handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

.field private final metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;

.field private final resetManager:Lio/intercom/android/sdk/ResetManager;

.field private final startedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private final systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

.field private final timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/api/UserUpdateBatcher;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/ResetManager;Lio/intercom/android/sdk/ActivityLifecycleHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/push/SystemNotificationManager;",
            "Lio/intercom/android/sdk/metrics/MetricsStore;",
            "Lio/intercom/android/sdk/api/DeDuper;",
            "Lio/intercom/android/sdk/commons/utilities/TimeProvider;",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/ResetManager;",
            "Lio/intercom/android/sdk/ActivityLifecycleHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/SimpleActivityLifecycleCallbacks;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->startedActivities:Ljava/util/Set;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/LifecycleTracker;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

    iput-object p2, p0, Lio/intercom/android/sdk/LifecycleTracker;->metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;

    iput-object p3, p0, Lio/intercom/android/sdk/LifecycleTracker;->deDuper:Lio/intercom/android/sdk/api/DeDuper;

    iput-object p4, p0, Lio/intercom/android/sdk/LifecycleTracker;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    iput-object p5, p0, Lio/intercom/android/sdk/LifecycleTracker;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    iput-object p6, p0, Lio/intercom/android/sdk/LifecycleTracker;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p7, p0, Lio/intercom/android/sdk/LifecycleTracker;->resetManager:Lio/intercom/android/sdk/ResetManager;

    iput-object p8, p0, Lio/intercom/android/sdk/LifecycleTracker;->handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

    return-void
.end method

.method static create(Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/api/UserUpdateBatcher;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/ResetManager;F)Lio/intercom/android/sdk/LifecycleTracker;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/push/SystemNotificationManager;",
            "Lio/intercom/android/sdk/metrics/MetricsStore;",
            "Lio/intercom/android/sdk/api/DeDuper;",
            "Lio/intercom/android/sdk/commons/utilities/TimeProvider;",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/ResetManager;",
            "F)",
            "Lio/intercom/android/sdk/LifecycleTracker;"
        }
    .end annotation

    new-instance v1, Lio/intercom/android/sdk/LifecycleTracker;

    new-instance v9, Lio/intercom/android/sdk/ActivityLifecycleHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move/from16 v0, p7

    invoke-direct {v9, v2, p5, v0}, Lio/intercom/android/sdk/ActivityLifecycleHandler;-><init>(Landroid/os/Looper;Lio/intercom/android/sdk/store/Store;F)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lio/intercom/android/sdk/LifecycleTracker;-><init>(Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/api/UserUpdateBatcher;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/ResetManager;Lio/intercom/android/sdk/ActivityLifecycleHandler;)V

    return-object v1
.end method

.method private hasApplicationBecomeBackgrounded(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/LifecycleTracker;->isApplicationInBackground(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isScreenLocked(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private registerActivity(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->startedActivities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started observing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterActivity(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->startedActivities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopped observing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method isApplicationInBackground(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p1}, Lio/intercom/android/sdk/LifecycleTracker;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->startedActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

    const/4 v1, 0x2

    invoke-static {v1, p1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->getMessage(ILandroid/app/Activity;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->getMessage(ILandroid/app/Activity;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/LifecycleTracker;->registerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->store:Lio/intercom/android/sdk/store/Store;

    iget-object v1, p0, Lio/intercom/android/sdk/LifecycleTracker;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v1}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/intercom/android/sdk/actions/Actions;->appEnteredForeground(J)Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/MetricsStore;->loadAndSendMetrics()V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/SystemNotificationManager;->clear()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/LifecycleTracker;->unregisterActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->handler:Lio/intercom/android/sdk/ActivityLifecycleHandler;

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->getMessage(ILandroid/app/Activity;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/ActivityLifecycleHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/LifecycleTracker;->hasApplicationBecomeBackgrounded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->isSoftReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->hardReset()V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->store:Lio/intercom/android/sdk/store/Store;

    iget-object v1, p0, Lio/intercom/android/sdk/LifecycleTracker;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v1}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/intercom/android/sdk/actions/Actions;->appEnteredBackground(J)Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->deDuper:Lio/intercom/android/sdk/api/DeDuper;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/DeDuper;->reset()V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->submitPendingUpdate()V

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/MetricsStore;->loadAndSendMetrics()V

    :cond_1
    return-void
.end method

.method registerActivities(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/LifecycleTracker;->startedActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
