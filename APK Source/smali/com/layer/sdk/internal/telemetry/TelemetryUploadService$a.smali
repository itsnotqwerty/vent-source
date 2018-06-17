.class final Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/r",
        "<",
        "Lcom/layer/sdk/internal/telemetry/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/a/q;)Lcom/google/a/k;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    check-cast p1, Lcom/layer/sdk/internal/telemetry/d;

    new-instance v2, Lcom/google/a/n;

    invoke-direct {v2}, Lcom/google/a/n;-><init>()V

    const-string v3, "mean"

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/d;->wG()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/telemetry/d;->wG()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/a/q;->ac(Ljava/lang/Object;)Lcom/google/a/k;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/a/n;->a(Ljava/lang/String;Lcom/google/a/k;)V

    const-string v0, "max"

    iget-wide v4, p1, Lcom/layer/sdk/internal/telemetry/d;->bty:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p1, Lcom/layer/sdk/internal/telemetry/d;->bty:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/a/q;->ac(Ljava/lang/Object;)Lcom/google/a/k;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/google/a/n;->a(Ljava/lang/String;Lcom/google/a/k;)V

    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
