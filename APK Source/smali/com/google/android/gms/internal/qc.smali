.class public final Lcom/google/android/gms/internal/qc;
.super Ljava/lang/Object;


# static fields
.field public static final AT:Ljava/lang/Object;

.field private static bbY:Lcom/google/android/gms/internal/qc;


# instance fields
.field public bbZ:Lcom/google/android/gms/internal/pk;

.field private bca:Lcom/google/android/gms/ads/reward/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qc;->AT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tF()Lcom/google/android/gms/internal/qc;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/qc;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/qc;->bbY:Lcom/google/android/gms/internal/qc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/qc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qc;->bbY:Lcom/google/android/gms/internal/qc;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/qc;->bbY:Lcom/google/android/gms/internal/qc;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final ak(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/b;
    .locals 4

    sget-object v1, Lcom/google/android/gms/internal/qc;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->bca:Lcom/google/android/gms/ads/reward/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->bca:Lcom/google/android/gms/ads/reward/b;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ti;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/of;->tk()Lcom/google/android/gms/internal/nx;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/od;

    invoke-direct {v3, v2, p1, v0}, Lcom/google/android/gms/internal/od;-><init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;Lcom/google/android/gms/internal/tj;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/nx;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c;

    new-instance v2, Lcom/google/android/gms/internal/p;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/c;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/qc;->bca:Lcom/google/android/gms/ads/reward/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->bca:Lcom/google/android/gms/ads/reward/b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
