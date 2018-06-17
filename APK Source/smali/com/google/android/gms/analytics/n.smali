.class public final Lcom/google/android/gms/analytics/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/n$b;,
        Lcom/google/android/gms/analytics/n$c;,
        Lcom/google/android/gms/analytics/n$a;
    }
.end annotation


# static fields
.field private static volatile aBz:Lcom/google/android/gms/analytics/n;


# instance fields
.field private final aBA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final aBB:Lcom/google/android/gms/analytics/i;

.field public final aBC:Lcom/google/android/gms/analytics/n$a;

.field private volatile aBD:Lcom/google/android/gms/internal/ah;

.field public aBE:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/n;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/analytics/n$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/n$a;-><init>(Lcom/google/android/gms/analytics/n;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/n;->aBC:Lcom/google/android/gms/analytics/n$a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/n;->aBA:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/i;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/n;->aBB:Lcom/google/android/gms/analytics/i;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/n;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBA:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/n;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBE:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/k;)V
    .locals 5

    const-string v0, "deliver should be called from worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bh(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/k;->aBn:Z

    const-string v1, "Measurement must be submitted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->aBv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/q;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/q;->mJ()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/q;->b(Lcom/google/android/gms/analytics/k;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static mN()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/n$c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static u(Landroid/content/Context;)Lcom/google/android/gms/analytics/n;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/n;->aBz:Lcom/google/android/gms/analytics/n;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/analytics/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/n;->aBz:Lcom/google/android/gms/analytics/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/n;->aBz:Lcom/google/android/gms/analytics/n;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/n;->aBz:Lcom/google/android/gms/analytics/n;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/n$c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBC:Lcom/google/android/gms/analytics/n$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/n$a;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBC:Lcom/google/android/gms/analytics/n$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/n$a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final mM()Lcom/google/android/gms/internal/ah;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBD:Lcom/google/android/gms/internal/ah;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBD:Lcom/google/android/gms/internal/ah;

    if-nez v0, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ah;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ah;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/analytics/n;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iput-object v1, v3, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/n;->aBD:Lcom/google/android/gms/internal/ah;

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->aBD:Lcom/google/android/gms/internal/ah;

    return-object v0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "GAv4"

    const-string v5, "Error retrieving package info: appName set to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
