.class final Lcom/google/android/gms/analytics/d$a;
.super Lcom/google/android/gms/internal/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private aAZ:J

.field private aBa:Z

.field private synthetic aBb:Lcom/google/android/gms/analytics/d;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/internal/bd;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/d$a;->aBb:Lcom/google/android/gms/analytics/d;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/d$a;->aAZ:J

    return-void
.end method


# virtual methods
.method protected final mG()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized mH()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d$a;->aBa:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/d$a;->aBa:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
