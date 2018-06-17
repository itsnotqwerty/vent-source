.class public interface abstract Lcom/layer/sdk/listeners/LayerSyncListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/listeners/LayerSyncListener$BackgroundThread;,
        Lcom/layer/sdk/listeners/LayerSyncListener$Weak;,
        Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;
    }
.end annotation


# virtual methods
.method public abstract onAfterSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
.end method

.method public abstract onBeforeSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
.end method

.method public abstract onSyncError(Lcom/layer/sdk/LayerClient;Ljava/util/List;)V
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
.end method

.method public abstract onSyncProgress(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;I)V
.end method
