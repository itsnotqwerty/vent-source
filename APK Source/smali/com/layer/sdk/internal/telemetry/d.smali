.class Lcom/layer/sdk/internal/telemetry/d;
.super Ljava/lang/Object;


# instance fields
.field private btA:J
    .annotation runtime Lcom/google/a/a/c;
        value = "count"
    .end annotation
.end field

.field bty:J
    .annotation runtime Lcom/google/a/a/c;
        value = "max"
    .end annotation
.end field

.field private btz:J
    .annotation runtime Lcom/google/a/a/c;
        value = "total"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final J(J)V
    .locals 5

    iget-wide v0, p0, Lcom/layer/sdk/internal/telemetry/d;->btA:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/layer/sdk/internal/telemetry/d;->btA:J

    iget-wide v0, p0, Lcom/layer/sdk/internal/telemetry/d;->btz:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/layer/sdk/internal/telemetry/d;->btz:J

    iget-wide v0, p0, Lcom/layer/sdk/internal/telemetry/d;->bty:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lcom/layer/sdk/internal/telemetry/d;->bty:J

    return-void

    :cond_0
    iget-wide p1, p0, Lcom/layer/sdk/internal/telemetry/d;->bty:J

    goto :goto_0
.end method

.method final wG()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/layer/sdk/internal/telemetry/d;->btA:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/layer/sdk/internal/telemetry/d;->btz:J

    iget-wide v2, p0, Lcom/layer/sdk/internal/telemetry/d;->btA:J

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method
