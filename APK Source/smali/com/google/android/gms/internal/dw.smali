.class public final Lcom/google/android/gms/internal/dw;
.super Ljava/lang/Object;


# static fields
.field private static aPC:Lcom/google/android/gms/internal/dy;


# direct methods
.method public static declared-synchronized qv()Lcom/google/android/gms/internal/dy;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/dw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/dw;->aPC:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dw;->aPC:Lcom/google/android/gms/internal/dy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/dw;->aPC:Lcom/google/android/gms/internal/dy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
