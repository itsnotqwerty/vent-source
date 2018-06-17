.class public final Lcom/intercom/input/gallery/adapter/a;
.super Landroid/support/v7/widget/RecyclerView$n;


# instance fields
.field private final bmn:Lcom/intercom/input/gallery/adapter/b;

.field public bmo:I

.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Lcom/intercom/input/gallery/adapter/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/intercom/input/gallery/adapter/a;->bmo:I

    iput-object p1, p0, Lcom/intercom/input/gallery/adapter/a;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p2, p0, Lcom/intercom/input/gallery/adapter/a;->bmn:Lcom/intercom/input/gallery/adapter/b;

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$n;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/intercom/input/gallery/adapter/a;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/intercom/input/gallery/adapter/a;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->hq()I

    move-result v2

    sub-int v0, v1, v0

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/intercom/input/gallery/adapter/a;->bmo:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/adapter/a;->bmn:Lcom/intercom/input/gallery/adapter/b;

    invoke-interface {v0}, Lcom/intercom/input/gallery/adapter/b;->onLoadMore()V

    :cond_0
    return-void
.end method
