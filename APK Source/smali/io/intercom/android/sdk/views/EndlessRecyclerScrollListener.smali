.class public Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;
.super Landroid/support/v7/widget/RecyclerView$n;


# instance fields
.field final endlessScrollListener:Lio/intercom/android/sdk/views/EndlessScrollListener;

.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private morePagesAvailable:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Lio/intercom/android/sdk/views/EndlessScrollListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->morePagesAvailable:Z

    iput-object p1, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p2, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->endlessScrollListener:Lio/intercom/android/sdk/views/EndlessScrollListener;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$n;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->endlessScrollListener:Lio/intercom/android/sdk/views/EndlessScrollListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/views/EndlessScrollListener;->setOverScrollColour()V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$n;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->hq()I

    move-result v2

    sub-int v0, v1, v0

    if-gt v0, v2, :cond_0

    iget-boolean v0, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->morePagesAvailable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener$1;-><init>(Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setMorePagesAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->morePagesAvailable:Z

    return-void
.end method
