.class final Lcom/vent/LayerPushReceiver$1$1$1$1;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/LayerPushReceiver$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfZ:Lcom/vent/LayerPushReceiver$1$1$1;


# direct methods
.method constructor <init>(Lcom/vent/LayerPushReceiver$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/LayerPushReceiver$1$1$1$1;->cfZ:Lcom/vent/LayerPushReceiver$1$1$1;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1$1$1$1;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/vent/bb;->eG(I)V

    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1$1$1$1;->cfZ:Lcom/vent/LayerPushReceiver$1$1$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1$1;->cfV:Lcom/vent/LayerPushReceiver$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/vent/LayerPushReceiver$1$1$1$1;->cfZ:Lcom/vent/LayerPushReceiver$1$1$1;

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v2, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v0, v0, Lcom/vent/LayerPushReceiver$1$1;->cfV:Lcom/vent/LayerPushReceiver$1;

    iget-object v3, v0, Lcom/vent/LayerPushReceiver$1;->val$context:Landroid/content/Context;

    iget-object v0, v2, Lcom/vent/LayerPushReceiver$1$1$1;->cfX:Lcom/layer/sdk/query/Queryable;

    check-cast v0, Lcom/layer/sdk/messaging/Message;

    invoke-static {v3, v0}, Lcom/layer/atlas/util/c;->a(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, v2, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v1, v1, Lcom/vent/LayerPushReceiver$1$1;->cfV:Lcom/vent/LayerPushReceiver$1;

    iget-object v1, v1, Lcom/vent/LayerPushReceiver$1;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/vent/LayerPushReceiver$1$1$1;->cfW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/vent/LayerPushReceiver$1$1$1;->cfY:Lcom/vent/LayerPushReceiver$1$1;

    iget-object v2, v2, Lcom/vent/LayerPushReceiver$1$1;->cfT:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Lcom/vent/LayerPushReceiver;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
