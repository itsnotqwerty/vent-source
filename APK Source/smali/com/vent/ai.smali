.class public final Lcom/vent/ai;
.super Lcom/vent/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/am",
        "<",
        "Lcom/vent/f;",
        "Lcom/vent/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field cdV:Landroid/support/v7/widget/a/a;

.field cdW:Landroid/support/v7/widget/RecyclerView;

.field private cek:Lcom/vent/ba$a;

.field cel:Lcom/vent/ba;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/am;-><init>()V

    return-void
.end method


# virtual methods
.method final BZ()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ai;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ai$4;

    invoke-direct {v1, p0}, Lcom/vent/ai$4;-><init>(Lcom/vent/ai;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final Bc()Lcom/vent/ba;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/a;

    invoke-virtual {v0}, Lcom/vent/a;->Bc()Lcom/vent/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Dt()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ai;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    iget-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    iget-object v1, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ai;->cek:Lcom/vent/ba$a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Du()V
    .locals 4

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/vent/bb;->ciM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vent/ai;->f(ZZ)V

    :cond_1
    return-void
.end method

.method public final f(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ai;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ai;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/ba;->bv(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/ai;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vent/ba;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/vent/ai$1;

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/ai$1;-><init>(Lcom/vent/ai;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    new-instance v0, Lcom/vent/ai$2;

    invoke-direct {v0, p0}, Lcom/vent/ai$2;-><init>(Lcom/vent/ai;)V

    iput-object v0, p0, Lcom/vent/ai;->cek:Lcom/vent/ba$a;

    invoke-virtual {p0}, Lcom/vent/ai;->Dt()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v0, 0x7f0b0068

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    const v0, 0x7f060079

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    const v1, 0x7f09029d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/n;

    iput-object v1, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    const v1, 0x1020004

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/f;->cba:Landroid/view/View;

    :cond_1
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/vent/views/a;

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vent/ai;->cdW:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/vent/ai$3;

    invoke-direct {v0, p0}, Lcom/vent/ai$3;-><init>(Lcom/vent/ai;)V

    new-instance v1, Landroid/support/v7/widget/a/a;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/a/a;-><init>(Landroid/support/v7/widget/a/a$a;)V

    iput-object v1, p0, Lcom/vent/ai;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v0, p0, Lcom/vent/ai;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->g(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    invoke-virtual {p0}, Lcom/vent/ai;->BZ()V

    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vent/ai;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f00c7

    new-array v4, v7, [I

    const v5, 0x7f0800c4

    aput v5, v4, v6

    invoke-static {v1, v3, v4, v7}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public final onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/vent/ai;->unregister()V

    invoke-super {p0}, Lcom/vent/am;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ai;->cdW:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0}, Lcom/vent/am;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/vent/am;->onResume()V

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v3, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fg()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v4/widget/n;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ai;->Dt()V

    invoke-virtual {p0}, Lcom/vent/ai;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vent/ba;->El()V

    :cond_2
    invoke-virtual {p0}, Lcom/vent/ai;->Du()V

    invoke-virtual {p0}, Lcom/vent/ai;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/vent/ActMain;->BM()V

    iget-object v3, v0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    iget-object v3, v0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    sget-object v4, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/vent/ActMain;->BQ()V

    :cond_4
    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->notifyDataSetChanged()V

    :cond_5
    invoke-virtual {p0}, Lcom/vent/ai;->BZ()V

    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method final unregister()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    iget-object v1, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ai;->cek:Lcom/vent/ba$a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ai;->cel:Lcom/vent/ba;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
