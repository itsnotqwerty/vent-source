.class public final Lcom/layer/atlas/util/imagepopup/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/a/c;


# static fields
.field private static bpt:Lcom/layer/sdk/LayerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/layer/sdk/LayerClient;)V
    .locals 0

    sput-object p0, Lcom/layer/atlas/util/imagepopup/a;->bpt:Lcom/layer/sdk/LayerClient;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x6

    sget-object v0, Lcom/layer/atlas/util/imagepopup/a;->bpt:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, p2}, Lcom/layer/sdk/LayerClient;->get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No message part with ID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/messaging/Message;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v3}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Message part is deleted: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2}, Lcom/layer/atlas/util/c;->a(Lcom/layer/sdk/messaging/MessagePart;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v3}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Timed out while downloading: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
