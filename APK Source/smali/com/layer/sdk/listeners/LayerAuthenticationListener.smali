.class public interface abstract Lcom/layer/sdk/listeners/LayerAuthenticationListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/listeners/LayerAuthenticationListener$BackgroundThread;,
        Lcom/layer/sdk/listeners/LayerAuthenticationListener$Weak;
    }
.end annotation


# virtual methods
.method public abstract onAuthenticated(Lcom/layer/sdk/LayerClient;Ljava/lang/String;)V
.end method

.method public abstract onAuthenticationChallenge(Lcom/layer/sdk/LayerClient;Ljava/lang/String;)V
.end method

.method public abstract onAuthenticationError(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/exceptions/LayerException;)V
.end method

.method public abstract onDeauthenticated(Lcom/layer/sdk/LayerClient;)V
.end method
