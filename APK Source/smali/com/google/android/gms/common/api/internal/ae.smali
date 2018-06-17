.class abstract Lcom/google/android/gms/common/api/internal/ae;
.super Ljava/lang/Object;


# instance fields
.field private final aEW:Lcom/google/android/gms/common/api/internal/ac;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/ac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ae;->aEW:Lcom/google/android/gms/common/api/internal/ac;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/ad;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ae;->aEW:Lcom/google/android/gms/common/api/internal/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ae;->nn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract nn()V
.end method
