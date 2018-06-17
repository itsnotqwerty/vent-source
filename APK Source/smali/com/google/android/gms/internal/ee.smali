.class public final Lcom/google/android/gms/internal/ee;
.super Ljava/lang/Object;


# static fields
.field private static aPJ:Lcom/google/android/gms/internal/ee;


# instance fields
.field private aPI:Lcom/google/android/gms/internal/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ee;->aPJ:Lcom/google/android/gms/internal/ee;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->aPI:Lcom/google/android/gms/internal/ed;

    return-void
.end method

.method private final declared-synchronized af(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->aPI:Lcom/google/android/gms/internal/ed;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ed;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ed;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->aPI:Lcom/google/android/gms/internal/ed;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->aPI:Lcom/google/android/gms/internal/ed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ee;->aPJ:Lcom/google/android/gms/internal/ee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ee;->af(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    return-object v0
.end method
