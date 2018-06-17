.class final Lcom/c/a/t$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v2

    :goto_0
    if-ge v6, v7, :cond_6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/c;

    iget-object v8, v1, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-object v9, v1, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    iget-object v10, v1, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v5, v4

    :goto_1
    if-nez v9, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    iget-object v3, v3, Lcom/c/a/w;->uri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    iget-object v11, v1, Lcom/c/a/c;->bNd:Landroid/graphics/Bitmap;

    iget-object v12, v1, Lcom/c/a/c;->bNf:Lcom/c/a/t$d;

    if-eqz v9, :cond_1

    invoke-virtual {v8, v11, v12, v9}, Lcom/c/a/t;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V

    :cond_1
    if-eqz v5, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_4

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/a;

    invoke-virtual {v8, v11, v12, v1}, Lcom/c/a/t;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/c/a/a;

    iget-object v1, v0, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iget-boolean v1, v1, Lcom/c/a/t;->bOj:Z

    if-eqz v1, :cond_5

    const-string v1, "Main"

    const-string v2, "canceled"

    iget-object v3, v0, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v3}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v3

    const-string v4, "target got garbage collected"

    invoke-static {v1, v2, v3, v4}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, v0, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    invoke-virtual {v0}, Lcom/c/a/a;->getTarget()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/c/a/t;->a(Lcom/c/a/t;Ljava/lang/Object;)V

    :cond_6
    return-void

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/a;

    iget-object v5, v1, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    const/4 v2, 0x0

    iget v6, v1, Lcom/c/a/a;->bMJ:I

    invoke-static {v6}, Lcom/c/a/p;->dY(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v2, v1, Lcom/c/a/a;->key:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/c/a/t;->dP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_9

    sget-object v6, Lcom/c/a/t$d;->bOn:Lcom/c/a/t$d;

    invoke-virtual {v5, v2, v6, v1}, Lcom/c/a/t;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V

    iget-boolean v2, v5, Lcom/c/a/t;->bOj:Z

    if-eqz v2, :cond_8

    const-string v2, "Main"

    const-string v5, "completed"

    iget-object v1, v1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v1}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/c/a/t$d;->bOn:Lcom/c/a/t$d;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v1, v6}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :cond_9
    invoke-virtual {v5, v1}, Lcom/c/a/t;->c(Lcom/c/a/a;)V

    iget-boolean v2, v5, Lcom/c/a/t;->bOj:Z

    if-eqz v2, :cond_8

    const-string v2, "Main"

    const-string v5, "resumed"

    iget-object v1, v1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v1}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method
