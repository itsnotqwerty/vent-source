.class public Lio/intercom/android/sdk/LateInitializationPreparer;
.super Lio/intercom/android/sdk/utilities/SimpleActivityLifecycleCallbacks;


# static fields
.field private static instance:Lio/intercom/android/sdk/LateInitializationPreparer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private hasPaused:Z

.field private isRegistered:Z

.field private lastResumedActivity:Landroid/app/Activity;

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

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/SimpleActivityLifecycleCallbacks;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lio/intercom/android/sdk/LateInitializationPreparer;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/LateInitializationPreparer;->instance:Lio/intercom/android/sdk/LateInitializationPreparer;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/LateInitializationPreparer;

    invoke-direct {v0}, Lio/intercom/android/sdk/LateInitializationPreparer;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/LateInitializationPreparer;->instance:Lio/intercom/android/sdk/LateInitializationPreparer;

    :cond_0
    sget-object v0, Lio/intercom/android/sdk/LateInitializationPreparer;->instance:Lio/intercom/android/sdk/LateInitializationPreparer;

    return-object v0
.end method


# virtual methods
.method public handlePastLifecycleEvents(Landroid/app/Application;Lio/intercom/android/sdk/Injector;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->lastResumedActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->hasPaused:Z

    iget-object v2, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/LateInitializationPreparer;->unregister(Landroid/app/Application;)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Handling lifecycle events for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during late initialisation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/Injector;->getLifecycleTracker()Lio/intercom/android/sdk/LifecycleTracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/intercom/android/sdk/LifecycleTracker;->onActivityStarted(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Lio/intercom/android/sdk/LifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Lio/intercom/android/sdk/LifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lio/intercom/android/sdk/Injector;->getLifecycleTracker()Lio/intercom/android/sdk/LifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/LifecycleTracker;->registerActivities(Ljava/util/Collection;)V

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Observed Activities with hashcodes "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " during late initialization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method hasPaused()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->hasPaused:Z

    return v0
.end method

.method lastResumedActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->lastResumedActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->hasPaused:Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->lastResumedActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->hasPaused:Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->lastResumedActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->lastResumedActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public register(Landroid/app/Application;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Registering for later initialization"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->isRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->isRegistered:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startedActivities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->startedActivities:Ljava/util/Set;

    return-object v0
.end method

.method public unregister(Landroid/app/Application;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Unregistering for later initialization"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-boolean v3, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->isRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->lastResumedActivity:Landroid/app/Activity;

    iput-boolean v3, p0, Lio/intercom/android/sdk/LateInitializationPreparer;->hasPaused:Z

    return-void
.end method
