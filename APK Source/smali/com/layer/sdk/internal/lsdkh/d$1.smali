.class final Lcom/layer/sdk/internal/lsdkh/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkh/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/d;-><init>(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Query;Ljava/util/Set;Lcom/layer/sdk/query/ListViewController$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsk:Lcom/layer/sdk/internal/lsdkh/d;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/d;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/d$1;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/sdk/query/Queryable;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$1;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->a(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/ListViewController$PreProcessCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d$1;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-interface {v0, v1, p1}, Lcom/layer/sdk/query/ListViewController$PreProcessCallback;->onCache(Lcom/layer/sdk/query/ListViewController;Lcom/layer/sdk/query/Queryable;)V

    goto :goto_0
.end method
