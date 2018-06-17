.class public final Lcom/google/android/gms/internal/dd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/internal/dg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static aPm:Ljava/lang/Boolean;


# instance fields
.field public final aPl:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static ad(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/dd;->aPm:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/dd;->aPm:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/di;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/dd;->aPm:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;I)I
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/dc;->AT:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v7, Lcom/google/android/gms/internal/dc;->aPk:Lcom/google/android/gms/internal/mp;

    if-eqz v7, :cond_4

    iget-object v0, v7, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/google/android/gms/internal/mp;->aZy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mp;->TAG:Ljava/lang/String;

    const-string v3, "release without a matched acquire!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mp;->sG()Ljava/lang/String;

    move-result-object v3

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, v7, Lcom/google/android/gms/internal/mp;->aZv:Z

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, v7, Lcom/google/android/gms/internal/mp;->aZv:Z

    if-nez v0, :cond_3

    iget v0, v7, Lcom/google/android/gms/internal/mp;->aZx:I

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/stats/e;->oA()Lcom/google/android/gms/common/stats/e;

    iget-object v0, v7, Lcom/google/android/gms/internal/mp;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/stats/c;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/internal/mp;->aIO:Ljava/lang/String;

    iget v4, v7, Lcom/google/android/gms/internal/mp;->aZt:I

    iget-object v5, v7, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    invoke-static {v5}, Lcom/google/android/gms/common/util/b;->b(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/common/stats/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, v7, Lcom/google/android/gms/internal/mp;->aZx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lcom/google/android/gms/internal/mp;->aZx:I

    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mp;->sF()V

    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    if-nez p1, :cond_8

    const-string v1, "AnalyticsService started with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return v8

    :cond_6
    const/4 v4, 0x0

    :try_start_4
    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_7

    iget-object v0, v7, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local AnalyticsService called. startId, action"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ba;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/de;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/de;-><init>(Lcom/google/android/gms/internal/dd;Ljava/lang/Integer;Lcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/cw;Landroid/app/job/JobParameters;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/ck;)V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "Local AnalyticsService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "Local AnalyticsService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    return-void
.end method
