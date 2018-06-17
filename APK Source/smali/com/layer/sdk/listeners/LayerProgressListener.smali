.class public interface abstract Lcom/layer/sdk/listeners/LayerProgressListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/listeners/LayerProgressListener$BackgroundThread;,
        Lcom/layer/sdk/listeners/LayerProgressListener$Weak;,
        Lcom/layer/sdk/listeners/LayerProgressListener$Operation;
    }
.end annotation


# virtual methods
.method public abstract onProgressComplete(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V
.end method

.method public abstract onProgressError(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V
.end method

.method public abstract onProgressStart(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V
.end method

.method public abstract onProgressUpdate(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;J)V
.end method
