.class final Lcom/google/android/gms/internal/kf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVJ:Ljava/lang/String;

.field private synthetic aVK:Ljava/lang/String;

.field private synthetic aVZ:Z

.field private synthetic aWG:Lcom/google/android/gms/internal/ju;

.field private synthetic aWH:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ju;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kf;->aWG:Lcom/google/android/gms/internal/ju;

    iput-object p2, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/kf;->aVD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/kf;->aVJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/kf;->aVK:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/kf;->aVZ:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/kf;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get user properties"

    iget-object v3, p0, Lcom/google/android/gms/internal/kf;->aVD:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/kf;->aVJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/kf;->aVK:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/kf;->aVD:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/kf;->aVJ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/kf;->aVK:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/kf;->aVZ:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/kf;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/gt;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fx;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->po()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/kf;->aVD:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/kf;->aVJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/kf;->aVK:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/kf;->aVZ:Z

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/gt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/kf;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Failed to get user properties"

    iget-object v4, p0, Lcom/google/android/gms/internal/kf;->aVD:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/kf;->aVJ:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/kf;->aWH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
