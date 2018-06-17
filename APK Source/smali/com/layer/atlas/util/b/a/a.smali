.class public final Lcom/layer/atlas/util/b/a/a;
.super Lcom/c/a/y;


# instance fields
.field private final bmU:Lcom/layer/sdk/LayerClient;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/LayerClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/y;-><init>()V

    iput-object p1, p0, Lcom/layer/atlas/util/b/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/atlas/util/b/a/a;->bmU:Lcom/layer/sdk/LayerClient;

    iget-object v2, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/LayerClient;->get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;

    move-result-object v0

    instance-of v2, v0, Lcom/layer/sdk/messaging/MessagePart;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->isContentReady()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/c/a/y$a;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    invoke-direct {v1, v0, v2}, Lcom/c/a/y$a;-><init>(Ljava/io/InputStream;Lcom/c/a/t$d;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2}, Lcom/layer/atlas/util/c;->a(Lcom/layer/sdk/messaging/MessagePart;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/c/a/y$a;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lcom/c/a/t$d;->bOp:Lcom/c/a/t$d;

    invoke-direct {v1, v0, v2}, Lcom/c/a/y$a;-><init>(Ljava/io/InputStream;Lcom/c/a/t$d;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    const-string v2, "layer"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "parts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
