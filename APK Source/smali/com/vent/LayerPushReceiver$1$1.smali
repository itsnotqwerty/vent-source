.class final Lcom/vent/LayerPushReceiver$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/LayerClient$ContentAvailableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/LayerPushReceiver$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfT:Landroid/net/Uri;

.field final synthetic cfU:Lcom/layer/sdk/LayerClient;

.field final synthetic cfV:Lcom/vent/LayerPushReceiver$1;


# direct methods
.method constructor <init>(Lcom/vent/LayerPushReceiver$1;Landroid/net/Uri;Lcom/layer/sdk/LayerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/LayerPushReceiver$1$1;->cfV:Lcom/vent/LayerPushReceiver$1;

    iput-object p2, p0, Lcom/vent/LayerPushReceiver$1$1;->cfT:Landroid/net/Uri;

    iput-object p3, p0, Lcom/vent/LayerPushReceiver$1$1;->cfU:Lcom/layer/sdk/LayerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentAvailable(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Queryable;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vent/LayerPushReceiver$1$1$1;

    invoke-direct {v1, p0, p2}, Lcom/vent/LayerPushReceiver$1$1$1;-><init>(Lcom/vent/LayerPushReceiver$1$1;Lcom/layer/sdk/query/Queryable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onContentFailed(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
