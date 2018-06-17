.class final Lcom/layer/sdk/internal/lsdkh/h$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/h;->a(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic bso:Lcom/layer/sdk/internal/lsdkh/h;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->h(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->i(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkh/h$f;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkh/h$f;->a(Ljava/util/List;)V

    instance-of v4, v1, Lcom/layer/sdk/internal/lsdkh/h$i;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/layer/sdk/internal/lsdkh/h$i;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$i;->b()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$i;->a()I

    move-result v1

    invoke-interface {v4, v5, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemRemoved(Lcom/layer/sdk/query/RecyclerViewController;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$i;->b()I

    move-result v4

    if-le v4, v7, :cond_0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$i;->a()I

    move-result v6

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$i;->b()I

    move-result v1

    invoke-interface {v4, v5, v6, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemRangeRemoved(Lcom/layer/sdk/query/RecyclerViewController;II)V

    goto :goto_0

    :cond_2
    instance-of v4, v1, Lcom/layer/sdk/internal/lsdkh/h$h;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/layer/sdk/internal/lsdkh/h$h;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$h;->a()I

    move-result v6

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$h;->b()I

    move-result v1

    invoke-interface {v4, v5, v6, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemMoved(Lcom/layer/sdk/query/RecyclerViewController;II)V

    goto :goto_0

    :cond_3
    instance-of v4, v1, Lcom/layer/sdk/internal/lsdkh/h$g;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/layer/sdk/internal/lsdkh/h$g;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$g;->b()I

    move-result v4

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$g;->a()I

    move-result v1

    invoke-interface {v4, v5, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemInserted(Lcom/layer/sdk/query/RecyclerViewController;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$g;->b()I

    move-result v4

    if-le v4, v7, :cond_0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$g;->a()I

    move-result v6

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$g;->b()I

    move-result v1

    invoke-interface {v4, v5, v6, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemRangeInserted(Lcom/layer/sdk/query/RecyclerViewController;II)V

    goto/16 :goto_0

    :cond_5
    instance-of v4, v1, Lcom/layer/sdk/internal/lsdkh/h$c;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/layer/sdk/internal/lsdkh/h$c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$c;->b()I

    move-result v4

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$c;->a()I

    move-result v1

    invoke-interface {v4, v5, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemChanged(Lcom/layer/sdk/query/RecyclerViewController;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$c;->b()I

    move-result v4

    if-le v4, v7, :cond_0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/h$5;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$c;->a()I

    move-result v6

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$c;->b()I

    move-result v1

    invoke-interface {v4, v5, v6, v1}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryItemRangeChanged(Lcom/layer/sdk/query/RecyclerViewController;II)V

    goto/16 :goto_0

    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
