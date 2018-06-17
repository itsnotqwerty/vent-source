.class abstract Lcom/google/android/gms/common/api/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aEm:Lcom/google/android/gms/common/api/internal/l;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/l;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/v;-><init>(Lcom/google/android/gms/common/api/internal/l;)V

    return-void
.end method


# virtual methods
.method protected abstract nn()V
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/v;->nn()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/ad;->aEP:Lcom/google/android/gms/common/api/internal/af;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/af;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEP:Lcom/google/android/gms/common/api/internal/af;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/af;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/v;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
