.class final Lcom/vent/ba$8;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba;->a(Landroid/net/Uri;Lcom/vent/d/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field cgZ:Lcom/layer/sdk/LayerClient;

.field chA:Landroid/net/Uri;

.field final synthetic chB:Landroid/net/Uri;

.field final synthetic chC:Lcom/vent/d/c$b;

.field final synthetic chs:Lcom/vent/ba;

.field chw:J

.field chx:I

.field chy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field chz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/ba;Landroid/net/Uri;Lcom/vent/d/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$8;->chs:Lcom/vent/ba;

    iput-object p2, p0, Lcom/vent/ba$8;->chB:Landroid/net/Uri;

    iput-object p3, p0, Lcom/vent/ba$8;->chC:Lcom/vent/d/c$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/vent/ba$8;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-static {v1, v0}, Lcom/vent/a/f;->a(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vent/ba$8;->chA:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/ba$8;->chA:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/vent/ba$8;->chx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/ba$8;->chx:I

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vent/ba$8;->chz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/vent/ba$8;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/vent/ba$8;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v3, v0}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/ba$8;->chz:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vent/ba$8;->chx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/ba$8;->chx:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/ba$8;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/ba$8;->chz:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v0

    iget-object v1, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-object v1, v0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    iget-object v3, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vent/ba$8;->chz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ba$8;->chC:Lcom/vent/d/c$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ba$8;->chC:Lcom/vent/d/c$b;

    iget v1, p0, Lcom/vent/ba$8;->chx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/d/c$b;->cmT:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ba$8;->chC:Lcom/vent/d/c$b;

    invoke-virtual {v0}, Lcom/vent/d/c$b;->run()V

    :cond_2
    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/ba$8;->chw:J

    iget-object v0, p0, Lcom/vent/ba$8;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iput-object v0, p0, Lcom/vent/ba$8;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v0, p0, Lcom/vent/ba$8;->chB:Landroid/net/Uri;

    iput-object v0, p0, Lcom/vent/ba$8;->chA:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba$8;->chx:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ba$8;->chz:Ljava/util/List;

    iget-object v0, p0, Lcom/vent/ba$8;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->state:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vent/ba$8;->chs:Lcom/vent/ba;

    iget-boolean v0, v0, Lcom/vent/ba;->chk:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-object v2, p0, Lcom/vent/ba$8;->chy:Ljava/util/List;

    iget-object v3, v0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/vent/ba$8;->chz:Ljava/util/List;

    iget-object v0, v0, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
