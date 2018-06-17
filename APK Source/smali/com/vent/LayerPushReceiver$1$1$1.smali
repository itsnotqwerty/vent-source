.class final Lcom/vent/LayerPushReceiver$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/LayerPushReceiver$1$1;->onContentAvailable(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Queryable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cfW:Ljava/lang/String;

.field final synthetic cfX:Lcom/layer/sdk/query/Queryable;

.field final synthetic cfY:Lcom/vent/LayerPushReceiver$1$1;


# direct methods
.method constructor <init>(Lcom/vent/LayerPushReceiver$1$1;Lcom/layer/sdk/query/Queryable;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iput-object p2, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfX:Lcom/layer/sdk/query/Queryable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    iput-object v1, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfW:Ljava/lang/String;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v1, v1, Lcom/vent/LayerPushReceiver$1$1;->cfT:Landroid/net/Uri;

    invoke-static {v1}, Lcom/vent/bb;->l(Landroid/net/Uri;)Lcom/vent/a/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1$1;->cfU:Lcom/layer/sdk/LayerClient;

    iget-object v2, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/vent/a/f;->a(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/vent/a/f;->EQ()Lcom/vent/a/x;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfW:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1$1;->cfV:Lcom/vent/LayerPushReceiver$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1;->cfR:Lcom/vent/ba;

    iget-object v1, p0, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v1, v1, Lcom/vent/LayerPushReceiver$1$1;->cfT:Landroid/net/Uri;

    new-instance v2, Lcom/vent/LayerPushReceiver$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/vent/LayerPushReceiver$1$1$1$1;-><init>(Lcom/vent/LayerPushReceiver$1$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/vent/ba;->a(Landroid/net/Uri;Lcom/vent/d/c$b;)V

    :cond_1
    return-void
.end method
