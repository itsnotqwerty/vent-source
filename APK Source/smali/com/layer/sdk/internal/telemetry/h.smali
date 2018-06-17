.class final Lcom/layer/sdk/internal/telemetry/h;
.super Ljava/lang/Object;


# instance fields
.field btT:J
    .annotation runtime Lcom/google/a/a/c;
        value = "sync_errors"
    .end annotation
.end field

.field btU:J
    .annotation runtime Lcom/google/a/a/c;
        value = "auths"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/layer/sdk/internal/telemetry/h;->btT:J

    iput-wide v0, p0, Lcom/layer/sdk/internal/telemetry/h;->btU:J

    return-void
.end method
