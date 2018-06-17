.class public interface abstract Lcom/layer/sdk/LayerClient$ContentAvailableCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/LayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentAvailableCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/LayerClient$ContentAvailableCallback$BackgroundThread;
    }
.end annotation


# virtual methods
.method public abstract onContentAvailable(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Queryable;)V
.end method

.method public abstract onContentFailed(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;Ljava/lang/Exception;)V
.end method
