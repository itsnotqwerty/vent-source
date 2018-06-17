.class public final Lcom/google/android/gms/internal/fl;
.super Lcom/google/android/gms/internal/ej;


# instance fields
.field final aQh:Lcom/google/android/gms/internal/fe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/ay;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ej;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/ay;)V

    new-instance v0, Lcom/google/android/gms/internal/fe;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/fe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 10

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    iget-object v4, v3, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, v3, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fj;

    if-eqz v0, :cond_0

    iget-object v1, v3, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fc;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/fo;->a(Lcom/google/android/gms/location/t;Lcom/google/android/gms/internal/ez;)Lcom/google/android/gms/internal/fo;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ej;->disconnect()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :cond_2
    :try_start_5
    iget-object v0, v3, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v4, v3, Lcom/google/android/gms/internal/fe;->aQd:Ljava/util/Map;

    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, v3, Lcom/google/android/gms/internal/fe;->aQd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ff;

    if-eqz v0, :cond_3

    iget-object v1, v3, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/fo;->a(Lcom/google/android/gms/location/q;)Lcom/google/android/gms/internal/fo;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fo;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_4
    :try_start_a
    iget-object v0, v3, Lcom/google/android/gms/internal/fe;->aQd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v4, v3, Lcom/google/android/gms/internal/fe;->aQc:Ljava/util/Map;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v0, v3, Lcom/google/android/gms/internal/fe;->aQc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fi;

    if-eqz v0, :cond_5

    iget-object v1, v3, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fc;

    new-instance v6, Lcom/google/android/gms/internal/ep;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/location/n;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v0, v9}, Lcom/google/android/gms/internal/ep;-><init>(ILcom/google/android/gms/internal/en;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/ep;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_6
    :try_start_e
    iget-object v0, v3, Lcom/google/android/gms/internal/fe;->aQc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    iget-boolean v0, v1, Lcom/google/android/gms/internal/fe;->aQa:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fq;->oq()V

    iget-object v0, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fc;->qx()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/fe;->aQa:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1
.end method
