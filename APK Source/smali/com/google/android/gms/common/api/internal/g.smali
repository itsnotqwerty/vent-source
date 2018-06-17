.class public final Lcom/google/android/gms/common/api/internal/g;
.super Lcom/google/android/gms/common/api/internal/ci;


# instance fields
.field private aCF:Lcom/google/android/gms/common/api/internal/ah;

.field final aDU:Landroid/support/v4/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/b",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private final nm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g;->aDU:Landroid/support/v4/g/b;

    invoke-virtual {v0}, Landroid/support/v4/g/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    sget-object v1, Lcom/google/android/gms/common/api/internal/ah;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/ah;->aFg:Lcom/google/android/gms/common/api/internal/g;

    if-eq v2, p0, :cond_0

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/ah;->aFg:Lcom/google/android/gms/common/api/internal/g;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/ah;->aFh:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ah;->aFh:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g;->aDU:Landroid/support/v4/g/b;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/a;I)V

    return-void
.end method

.method protected final nl()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ah;->nl()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/ci;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g;->nm()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/ci;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/g;->nm()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/ci;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    sget-object v1, Lcom/google/android/gms/common/api/internal/ah;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/ah;->aFg:Lcom/google/android/gms/common/api/internal/g;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/ah;->aFg:Lcom/google/android/gms/common/api/internal/g;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ah;->aFh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

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
