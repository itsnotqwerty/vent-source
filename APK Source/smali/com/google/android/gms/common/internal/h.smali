.class public abstract Lcom/google/android/gms/common/internal/h;
.super Ljava/lang/Object;


# static fields
.field private static final aHo:Ljava/lang/Object;

.field private static aHp:Lcom/google/android/gms/common/internal/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/h;->aHo:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Lcom/google/android/gms/common/internal/h;
    .locals 3

    sget-object v1, Lcom/google/android/gms/common/internal/h;->aHo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/internal/h;->aHp:Lcom/google/android/gms/common/internal/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/internal/h;->aHp:Lcom/google/android/gms/common/internal/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/internal/h;->aHp:Lcom/google/android/gms/common/internal/h;

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
.method public final a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p4}, Lcom/google/android/gms/common/internal/h;->b(Lcom/google/android/gms/common/internal/i;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/i;Landroid/content/ServiceConnection;)Z
.end method

.method protected abstract b(Lcom/google/android/gms/common/internal/i;Landroid/content/ServiceConnection;)V
.end method
