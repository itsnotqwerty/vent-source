.class final Lcom/layer/atlas/AtlasMessagesRecyclerView$2;
.super Landroid/support/v7/widget/RecyclerView$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/AtlasMessagesRecyclerView;->a(Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)Lcom/layer/atlas/AtlasMessagesRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnp:Lcom/layer/atlas/AtlasMessagesRecyclerView;


# direct methods
.method constructor <init>(Lcom/layer/atlas/AtlasMessagesRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView$2;->bnp:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessagesRecyclerView$2;->bnp:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    invoke-virtual {v0}, Lcom/layer/atlas/a/a;->wj()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/a;

    invoke-virtual {v0, p2}, Lcom/layer/atlas/b/a;->bJ(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
