.class public final Lcom/google/android/gms/ads/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/i$a;
    }
.end annotation


# instance fields
.field private azr:Lcom/google/android/gms/internal/pp;

.field private azs:Lcom/google/android/gms/ads/i$a;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/i;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/pp;)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/ads/i;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/i;->azr:Lcom/google/android/gms/internal/pp;

    iget-object v0, p0, Lcom/google/android/gms/ads/i;->azs:Lcom/google/android/gms/ads/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/i;->azs:Lcom/google/android/gms/ads/i$a;

    const-string v2, "VideoLifecycleCallbacks may not be null."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/i;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/ads/i;->azs:Lcom/google/android/gms/ads/i$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/i;->azr:Lcom/google/android/gms/internal/pp;

    if-nez v3, :cond_1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/ads/i;->azr:Lcom/google/android/gms/internal/pp;

    new-instance v4, Lcom/google/android/gms/internal/qp;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/qp;-><init>(Lcom/google/android/gms/ads/i$a;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/pp;->a(Lcom/google/android/gms/internal/ps;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v3, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/af;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public final lz()Lcom/google/android/gms/internal/pp;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/i;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/i;->azr:Lcom/google/android/gms/internal/pp;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
