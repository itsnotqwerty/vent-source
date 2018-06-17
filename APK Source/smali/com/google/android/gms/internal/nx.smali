.class public Lcom/google/android/gms/internal/nx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/nx$a;
    }
.end annotation


# instance fields
.field private baZ:Lcom/google/android/gms/internal/pe;

.field private final bba:Lcom/google/android/gms/internal/nq;

.field private final bbb:Lcom/google/android/gms/internal/np;

.field private final bbc:Lcom/google/android/gms/internal/qe;

.field private final bbd:Lcom/google/android/gms/internal/tb;

.field private final bbe:Lcom/google/android/gms/internal/l;

.field private final bbf:Lcom/google/android/gms/internal/uo;

.field private final bbg:Lcom/google/android/gms/internal/tc;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/qe;Lcom/google/android/gms/internal/tb;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/uo;Lcom/google/android/gms/internal/tc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nx;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/nx;->bba:Lcom/google/android/gms/internal/nq;

    iput-object p2, p0, Lcom/google/android/gms/internal/nx;->bbb:Lcom/google/android/gms/internal/np;

    iput-object p3, p0, Lcom/google/android/gms/internal/nx;->bbc:Lcom/google/android/gms/internal/qe;

    iput-object p4, p0, Lcom/google/android/gms/internal/nx;->bbd:Lcom/google/android/gms/internal/tb;

    iput-object p5, p0, Lcom/google/android/gms/internal/nx;->bbe:Lcom/google/android/gms/internal/l;

    iput-object p6, p0, Lcom/google/android/gms/internal/nx;->bbf:Lcom/google/android/gms/internal/uo;

    iput-object p7, p0, Lcom/google/android/gms/internal/nx;->bbg:Lcom/google/android/gms/internal/tc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/pe;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/nx;->te()Lcom/google/android/gms/internal/pe;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/nx$a",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static {p0}, Lcom/google/android/gms/internal/w;->V(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "Google Play Services is not available"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static {p0}, Lcom/google/android/gms/internal/w;->X(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static {p0}, Lcom/google/android/gms/internal/w;->W(Landroid/content/Context;)I

    move-result v3

    if-le v2, v3, :cond_4

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nx$a;->tg()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nx$a;->th()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/nx$a;->th()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nx$a;->tg()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/nq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->bba:Lcom/google/android/gms/internal/nq;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/np;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->bbb:Lcom/google/android/gms/internal/np;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/qe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->bbc:Lcom/google/android/gms/internal/qe;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->bbe:Lcom/google/android/gms/internal/l;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/uo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->bbf:Lcom/google/android/gms/internal/uo;

    return-object v0
.end method

.method static synthetic q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "no_ads_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flow"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    const-string v1, "gmob-apps"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static td()Lcom/google/android/gms/internal/pe;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/nx;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v0, "ClientApi class is not an instance of IBinder"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private final te()Lcom/google/android/gms/internal/pe;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/nx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->baZ:Lcom/google/android/gms/internal/pe;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/nx;->td()Lcom/google/android/gms/internal/pe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/nx;->baZ:Lcom/google/android/gms/internal/pe;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->baZ:Lcom/google/android/gms/internal/pe;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
