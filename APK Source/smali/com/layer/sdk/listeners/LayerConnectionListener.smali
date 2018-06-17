.class public interface abstract Lcom/layer/sdk/listeners/LayerConnectionListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/listeners/LayerConnectionListener$BackgroundThread;,
        Lcom/layer/sdk/listeners/LayerConnectionListener$Weak;
    }
.end annotation


# virtual methods
.method public abstract onConnectionConnected(Lcom/layer/sdk/LayerClient;)V
.end method

.method public abstract onConnectionDisconnected(Lcom/layer/sdk/LayerClient;)V
.end method

.method public abstract onConnectionError(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/exceptions/LayerException;)V
.end method
