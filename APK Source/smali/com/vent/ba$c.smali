.class final Lcom/vent/ba$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field chH:I

.field final chI:Z

.field final synthetic chs:Lcom/vent/ba;


# direct methods
.method constructor <init>(Lcom/vent/ba;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/vent/ba$c;->chI:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x6

    const/4 v4, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Eq()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->version:I

    iget-object v1, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v1, v1, Lcom/vent/ba;->version:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->state:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chj:I

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vent/ba$c;->chH:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vent/ba$c;->chH:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->state:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iput-boolean v4, v0, Lcom/vent/ba;->chf:Z

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BZ()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chd:I

    if-nez v0, :cond_7

    const/4 v0, 0x5

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chd:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-boolean v3, p0, Lcom/vent/ba$c;->chI:Z

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-nez v3, :cond_5

    :cond_6
    iget-object v3, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v3, v3, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/16 v0, 0xa

    move v1, v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chd:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chd:I

    if-lt v0, v3, :cond_9

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iput-boolean v4, v0, Lcom/vent/ba;->chf:Z

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v4}, Lcom/vent/ba;->aZ(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget v1, v1, Lcom/vent/ba;->chd:I

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_b

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/my/conversations.json?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_4
    const-string v0, "layer_conversation_ids%5b%5d="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vent/ba$c;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->che:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_3

    :cond_a
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/vent/ba$c$1;

    const-string v2, "GET"

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/vent/ba$c$1;-><init>(Lcom/vent/ba$c;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_0
.end method
