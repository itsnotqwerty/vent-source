.class public final Lcom/google/android/gms/internal/mp;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field static TAG:Ljava/lang/String;

.field private static aZq:Ljava/lang/String;

.field static aZz:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field final aIO:Ljava/lang/String;

.field private final aIQ:Ljava/lang/String;

.field final aZr:Landroid/os/PowerManager$WakeLock;

.field aZs:Landroid/os/WorkSource;

.field final aZt:I

.field private final aZu:Ljava/lang/String;

.field aZv:Z

.field final aZw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field aZx:I

.field aZy:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/internal/mp;->TAG:Ljava/lang/String;

    const-string v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/internal/mp;->aZq:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/mp;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/mp;->aZv:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->aZw:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->aZy:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Wake lock name can NOT be empty"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ae;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/mp;->aZt:I

    iput-object v2, p0, Lcom/google/android/gms/internal/mp;->aZu:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/mp;->aIQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->mContext:Landroid/content/Context;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/mp;->aZq:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->aIO:Ljava/lang/String;

    :goto_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, v3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/b;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/google/android/gms/common/util/n;->bj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-static {p1, p3}, Lcom/google/android/gms/common/util/b;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/b;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    invoke-virtual {v1, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/mp;->aZz:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/dw;->qv()Lcom/google/android/gms/internal/dy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/dy;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mp;->aZz:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/google/android/gms/internal/mp;->aIO:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/google/android/gms/internal/mp;->aZs:Landroid/os/WorkSource;

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/mp;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gms/internal/mp;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mp;->sF()V

    return-void
.end method


# virtual methods
.method final sF()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->aZr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mp;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mp;->aIO:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "was already released!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    throw v0
.end method

.method final sG()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mp;->aZv:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->aZu:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mp;->aZu:Ljava/lang/String;

    goto :goto_0
.end method
