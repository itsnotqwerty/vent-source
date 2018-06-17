.class final Lcom/layer/sdk/internal/telemetry/e;
.super Ljava/lang/Object;


# instance fields
.field btB:Lcom/layer/sdk/internal/telemetry/d;
    .annotation runtime Lcom/google/a/a/c;
        value = "push_to_sync_time"
    .end annotation
.end field

.field btC:Lcom/layer/sdk/internal/telemetry/d;
    .annotation runtime Lcom/google/a/a/c;
        value = "auth_time"
    .end annotation
.end field

.field btD:Lcom/layer/sdk/internal/telemetry/d;
    .annotation runtime Lcom/google/a/a/c;
        value = "deauth_time"
    .end annotation
.end field

.field btE:Lcom/layer/sdk/internal/telemetry/d;
    .annotation runtime Lcom/google/a/a/c;
        value = "historic_sync_time"
    .end annotation
.end field

.field btF:Lcom/layer/sdk/internal/telemetry/d;
    .annotation runtime Lcom/google/a/a/c;
        value = "sdk_storage"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/sdk/internal/telemetry/d;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/d;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/e;->btB:Lcom/layer/sdk/internal/telemetry/d;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/d;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/d;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/e;->btC:Lcom/layer/sdk/internal/telemetry/d;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/d;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/d;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/e;->btD:Lcom/layer/sdk/internal/telemetry/d;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/d;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/d;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/e;->btE:Lcom/layer/sdk/internal/telemetry/d;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/d;

    invoke-direct {v0}, Lcom/layer/sdk/internal/telemetry/d;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/e;->btF:Lcom/layer/sdk/internal/telemetry/d;

    return-void
.end method
