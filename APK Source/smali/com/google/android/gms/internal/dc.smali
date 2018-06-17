.class public final Lcom/google/android/gms/internal/dc;
.super Ljava/lang/Object;


# static fields
.field static AT:Ljava/lang/Object;

.field private static aAJ:Ljava/lang/Boolean;

.field static aPk:Lcom/google/android/gms/internal/mp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dc;->AT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-static {p0}, Lcom/google/android/gms/internal/bd;->ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v10

    if-nez p1, :cond_1

    const-string v0, "AnalyticsReceiver called with null intent"

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Local AnalyticsReceiver got"

    invoke-virtual {v10, v1, v0}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/dd;->ad(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v11, Lcom/google/android/gms/internal/dc;->AT:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v0, :cond_2

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/dc;->aPk:Lcom/google/android/gms/internal/mp;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/mp;

    const-string v1, "Analytics WakeLock"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dc;->aPk:Lcom/google/android/gms/internal/mp;

    iget-object v1, v0, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/mp;->aZv:Z

    :cond_3
    sget-object v12, Lcom/google/android/gms/internal/dc;->aPk:Lcom/google/android/gms/internal/mp;

    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mp;->sG()Ljava/lang/String;

    move-result-object v5

    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v12, Lcom/google/android/gms/internal/mp;->aZx:I

    if-lez v0, :cond_5

    :cond_4
    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, v12, Lcom/google/android/gms/internal/mp;->aZx:I

    :cond_5
    iget-boolean v0, v12, Lcom/google/android/gms/internal/mp;->aZv:Z

    if-eqz v0, :cond_6

    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_a

    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, v12, Lcom/google/android/gms/internal/mp;->aZv:Z

    if-nez v0, :cond_8

    iget v0, v12, Lcom/google/android/gms/internal/mp;->aZx:I

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/google/android/gms/common/stats/e;->oA()Lcom/google/android/gms/common/stats/e;

    iget-object v1, v12, Lcom/google/android/gms/internal/mp;->mContext:Landroid/content/Context;

    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/stats/c;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, v12, Lcom/google/android/gms/internal/mp;->aIO:Ljava/lang/String;

    iget v6, v12, Lcom/google/android/gms/internal/mp;->aZt:I

    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/b;->b(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/common/stats/e;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, v12, Lcom/google/android/gms/internal/mp;->aZx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v12, Lcom/google/android/gms/internal/mp;->aZx:I

    :cond_8
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v12, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/mp;->aZz:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mq;

    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/mq;-><init>(Lcom/google/android/gms/internal/mp;)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_2
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v0, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/dc;->aAJ:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/dc;->aAJ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsReceiver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/di;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/dc;->aAJ:Ljava/lang/Boolean;

    goto :goto_0
.end method
