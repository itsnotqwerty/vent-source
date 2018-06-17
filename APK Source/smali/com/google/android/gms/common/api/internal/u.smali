.class final Lcom/google/android/gms/common/api/internal/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# instance fields
.field private synthetic aEm:Lcom/google/android/gms/common/api/internal/l;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/l;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/l;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/l;->b(Lcom/google/android/gms/common/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->nr()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->np()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final cG(I)V
    .locals 0

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    new-instance v1, Lcom/google/android/gms/common/api/internal/s;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/internal/s;-><init>(Lcom/google/android/gms/common/api/internal/l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/mg;)V

    return-void
.end method
