.class final Lcom/vent/f$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/f$a;->a(Lcom/layer/sdk/messaging/Conversation;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZP:Lcom/layer/sdk/messaging/Conversation;

.field final synthetic bZQ:Ljava/lang/String;

.field final synthetic bZR:Lcom/vent/f$a;


# direct methods
.method constructor <init>(Lcom/vent/f$a;Lcom/layer/sdk/messaging/Conversation;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/f$a$1;->bZR:Lcom/vent/f$a;

    iput-object p2, p0, Lcom/vent/f$a$1;->bZP:Lcom/layer/sdk/messaging/Conversation;

    iput-object p3, p0, Lcom/vent/f$a$1;->bZQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/vent/f$a$1;->bZR:Lcom/vent/f$a;

    iget-object v0, v0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vent/f$a$1;->bZP:Lcom/layer/sdk/messaging/Conversation;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "muted_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vent/f$a$1;->bZQ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/messaging/Conversation;->putMetadataAtKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vent/f$a$1;->bZR:Lcom/vent/f$a;

    iget-object v1, v1, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-virtual {v1}, Lcom/vent/f;->Bc()Lcom/vent/ba;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/f$a$1;->bZP:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/bb;->m(Landroid/net/Uri;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/vent/f$a$1;->bZR:Lcom/vent/f$a;

    iget-object v2, v2, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    iget-object v3, p0, Lcom/vent/f$a$1;->bZR:Lcom/vent/f$a;

    iget-object v3, v3, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-virtual {v3}, Lcom/vent/f;->CL()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/vent/f;->notifyItemChanged(I)V

    :cond_1
    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BQ()V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/layer/sdk/exceptions/LayerException;->printStackTrace()V

    goto :goto_0
.end method
