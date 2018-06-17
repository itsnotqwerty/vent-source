.class final Lcom/google/android/gms/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/o",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final bdX:Ljava/util/concurrent/Executor;

.field beb:Lcom/google/android/gms/c/b;

.field final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/k;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/c/k;->bdX:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/c/k;->beb:Lcom/google/android/gms/c/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/e",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/c/e;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/k;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/k;->beb:Lcom/google/android/gms/c/b;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/k;->bdX:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/c/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/l;-><init>(Lcom/google/android/gms/c/k;Lcom/google/android/gms/c/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
