.class final Lcom/layer/sdk/internal/telemetry/TelemetryManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerSyncListener$BackgroundThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/telemetry/TelemetryManager;->registerSyncListener(Lcom/layer/sdk/LayerClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private btR:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAfterSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
    .locals 4

    sget-object v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->HISTORIC:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    if-ne p2, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$1;->btR:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_HISTORIC_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    invoke-static {v2, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    :cond_0
    return-void
.end method

.method public final onBeforeSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
    .locals 2

    sget-object v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->HISTORIC:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    if-ne p2, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$1;->btR:J

    :cond_0
    return-void
.end method

.method public final onSyncError(Lcom/layer/sdk/LayerClient;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/LayerClient;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/exceptions/LayerException;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->SYNC_ERROR:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    return-void
.end method

.method public final onSyncProgress(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;I)V
    .locals 0

    return-void
.end method
