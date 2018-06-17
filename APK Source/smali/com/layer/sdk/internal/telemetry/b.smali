.class final Lcom/layer/sdk/internal/telemetry/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/telemetry/b$a;
    }
.end annotation


# instance fields
.field private bth:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "model"
    .end annotation
.end field

.field private bti:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "processor"
    .end annotation
.end field

.field private btj:Lcom/layer/sdk/internal/telemetry/b$a;
    .annotation runtime Lcom/google/a/a/c;
        value = "screen"
    .end annotation
.end field

.field private btk:I
    .annotation runtime Lcom/google/a/a/c;
        value = "total_storage_in_gb"
    .end annotation
.end field

.field private btl:J
    .annotation runtime Lcom/google/a/a/c;
        value = "total_memory_in_mb"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/32 v4, 0x40000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/b;->bth:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/b;->bti:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/layer/sdk/internal/telemetry/b$a;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/telemetry/b$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/b;->btj:Lcom/layer/sdk/internal/telemetry/b$a;

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/layer/sdk/internal/telemetry/b;->btk:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/layer/sdk/internal/telemetry/b;->btl:J

    return-void

    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/b;->bti:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2
.end method
