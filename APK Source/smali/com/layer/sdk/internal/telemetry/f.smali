.class Lcom/layer/sdk/internal/telemetry/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/telemetry/f$b;,
        Lcom/layer/sdk/internal/telemetry/f$a;
    }
.end annotation


# instance fields
.field btG:Lcom/layer/sdk/internal/telemetry/f$a;
    .annotation runtime Lcom/google/a/a/c;
        value = "period"
    .end annotation
.end field

.field private btH:Lcom/layer/sdk/internal/telemetry/c;
    .annotation runtime Lcom/google/a/a/c;
        value = "environment"
    .end annotation
.end field

.field private btI:Lcom/layer/sdk/internal/telemetry/b;
    .annotation runtime Lcom/google/a/a/c;
        value = "device"
    .end annotation
.end field

.field btJ:Lcom/layer/sdk/internal/telemetry/e;
    .annotation runtime Lcom/google/a/a/c;
        value = "performance"
    .end annotation
.end field

.field btK:Lcom/layer/sdk/internal/telemetry/h;
    .annotation runtime Lcom/google/a/a/c;
        value = "usage"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/sdk/internal/telemetry/f$a;

    invoke-direct {v0, p2, p3}, Lcom/layer/sdk/internal/telemetry/f$a;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/c;

    invoke-direct {v0, p1, p4, p5, p6}, Lcom/layer/sdk/internal/telemetry/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btH:Lcom/layer/sdk/internal/telemetry/c;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/b;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/telemetry/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btI:Lcom/layer/sdk/internal/telemetry/b;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/e;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/e;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/h;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/h;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btK:Lcom/layer/sdk/internal/telemetry/h;

    return-void
.end method


# virtual methods
.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btH:Lcom/layer/sdk/internal/telemetry/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btI:Lcom/layer/sdk/internal/telemetry/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/f;->btK:Lcom/layer/sdk/internal/telemetry/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Record{mPeriod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/f;->btG:Lcom/layer/sdk/internal/telemetry/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnvironment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/f;->btH:Lcom/layer/sdk/internal/telemetry/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/f;->btI:Lcom/layer/sdk/internal/telemetry/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPerformance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/f;->btJ:Lcom/layer/sdk/internal/telemetry/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/f;->btK:Lcom/layer/sdk/internal/telemetry/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
