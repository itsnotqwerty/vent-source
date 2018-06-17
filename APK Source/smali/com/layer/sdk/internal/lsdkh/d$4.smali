.class final Lcom/layer/sdk/internal/lsdkh/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic bsl:Lcom/layer/sdk/internal/lsdkh/d;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->bsl:Lcom/layer/sdk/internal/lsdkh/d;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->bsl:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->g(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->bsl:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->h(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->a:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->bsl:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->i(Lcom/layer/sdk/internal/lsdkh/d;)Lcom/layer/sdk/query/ListViewController$Callback;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/d$4;->bsl:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-interface {v0, v2}, Lcom/layer/sdk/query/ListViewController$Callback;->onQueryDataSetChanged(Lcom/layer/sdk/query/ListViewController;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
