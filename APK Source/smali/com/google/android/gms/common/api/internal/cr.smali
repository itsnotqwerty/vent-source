.class final Lcom/google/android/gms/common/api/internal/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ax;


# instance fields
.field private synthetic aHd:Lcom/google/android/gms/common/api/internal/cp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/cp;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/cr;-><init>(Lcom/google/android/gms/common/api/internal/cp;)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iput-object p1, v0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/cp;->a(Lcom/google/android/gms/common/api/internal/cp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final h(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aHb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/cp;->aHb:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/cp;->a(Lcom/google/android/gms/common/api/internal/cp;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/cp;->aHb:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/ad;->cG(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    sget-object v1, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/cp;->a(Lcom/google/android/gms/common/api/internal/cp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cr;->aHd:Lcom/google/android/gms/common/api/internal/cp;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
