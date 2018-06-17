.class public interface abstract Lcom/layer/sdk/listeners/LayerPolicyListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/listeners/LayerPolicyListener$BackgroundThread;,
        Lcom/layer/sdk/listeners/LayerPolicyListener$Weak;
    }
.end annotation


# virtual methods
.method public abstract onPolicyListUpdate(Lcom/layer/sdk/LayerClient;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/LayerClient;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;)V"
        }
    .end annotation
.end method
