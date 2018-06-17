.class public final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/Object;


# instance fields
.field private final aBm:Lcom/google/android/gms/common/util/e;

.field private final aHq:Ljava/lang/String;

.field private final aOQ:J

.field private final aOR:I

.field private aOS:D

.field private aOT:J

.field private final aOU:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->aOU:Ljava/lang/Object;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/google/android/gms/internal/cu;->aOR:I

    iget v0, p0, Lcom/google/android/gms/internal/cu;->aOR:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cu;->aOQ:J

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->aHq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/cu;->aBm:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/e;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cu;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/e;)V

    return-void
.end method


# virtual methods
.method public final qb()Z
    .locals 12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->aOU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    iget v0, p0, Lcom/google/android/gms/internal/cu;->aOR:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/cu;->aOT:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/cu;->aOQ:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/cu;->aOR:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/cu;->aOT:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/internal/cu;->aOS:D

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->aHq:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detected; call ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->bt(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
