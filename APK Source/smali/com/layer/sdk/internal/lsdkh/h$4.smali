.class final Lcom/layer/sdk/internal/lsdkh/h$4;
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

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->h(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->i(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkh/h;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/h$4;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-interface {v0, v2}, Lcom/layer/sdk/query/RecyclerViewController$Callback;->onQueryDataSetChanged(Lcom/layer/sdk/query/RecyclerViewController;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
