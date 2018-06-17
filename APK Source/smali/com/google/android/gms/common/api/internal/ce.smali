.class public final Lcom/google/android/gms/common/api/internal/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final aGE:Lcom/google/android/gms/common/api/internal/ce;


# instance fields
.field final aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aGH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/cf;",
            ">;"
        }
    .end annotation
.end field

.field private aGI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/ce;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/ce;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGH:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGI:Z

    return-void
.end method

.method private final as(Z)V
    .locals 5

    sget-object v3, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGH:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/cf;->as(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static b(Landroid/app/Application;)V
    .locals 3

    sget-object v1, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/ce;->aGI:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/ce;->aGI:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static nR()Lcom/google/android/gms/common/api/internal/ce;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/cf;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/common/api/internal/ce;->aGE:Lcom/google/android/gms/common/api/internal/ce;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ce;->aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/ce;->as(Z)V

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ce;->aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/ce;->as(Z)V

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ce;->aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/ce;->as(Z)V

    :cond_0
    return-void
.end method
