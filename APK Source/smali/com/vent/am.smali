.class public abstract Lcom/vent/am;
.super Lcom/vent/ah;

# interfaces
.implements Landroid/support/v4/widget/n$b;
.implements Lcom/vent/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vent/l",
        "<TT;>;T:",
        "Lcom/vent/a/a;",
        ">",
        "Lcom/vent/ah;",
        "Landroid/support/v4/widget/n$b;",
        "Lcom/vent/ao;"
    }
.end annotation


# instance fields
.field ceE:Lcom/vent/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field ceF:Z

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final Bg()V
    .locals 3

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-virtual {v2}, Lcom/vent/l;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vent/l;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public By()V
    .locals 2

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    :cond_0
    return-void
.end method

.method public final DB()V
    .locals 0

    invoke-virtual {p0}, Lcom/vent/am;->Du()V

    return-void
.end method

.method public Du()V
    .locals 0

    return-void
.end method

.method Dv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method Dw()V
    .locals 0

    return-void
.end method

.method Dx()I
    .locals 1

    const v0, 0x7f0f00cd

    return v0
.end method

.method public em()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/vent/am;->f(ZZ)V

    return-void
.end method

.method public abstract f(ZZ)V
.end method

.method getLayoutId()I
    .locals 3

    const v0, 0x7f0b006c

    invoke-virtual {p0}, Lcom/vent/am;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "layout"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-virtual {v0}, Lcom/vent/l;->CB()V

    invoke-virtual {p0}, Lcom/vent/am;->Dw()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ah;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    const-string v1, "adapter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/l;->t(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-virtual {v0}, Lcom/vent/l;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vent/am;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    const v0, 0x7f09029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/n;

    iput-object v0, v2, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iget-object v0, v0, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vent/l;->cba:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iget-object v0, v0, Lcom/vent/l;->cba:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iget-object v0, v0, Lcom/vent/l;->cba:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vent/am;->Dx()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vent/am;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-boolean v0, p0, Lcom/vent/am;->ceF:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/vent/views/a;

    invoke-virtual {p0}, Lcom/vent/am;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    :cond_1
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-super {p0}, Lcom/vent/ah;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    :cond_0
    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iget-object v0, v0, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iget-object v0, v0, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iput-object v1, v0, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    :cond_1
    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    iput-object v1, v0, Lcom/vent/l;->cba:Landroid/view/View;

    :cond_2
    invoke-super {p0}, Lcom/vent/ah;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/vent/ah;->onResume()V

    invoke-virtual {p0}, Lcom/vent/am;->getParentFragment()Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v2, v0, Lcom/vent/ap;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/vent/ap;

    invoke-interface {v0, p0}, Lcom/vent/ap;->p(Landroid/support/v4/app/i;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/am;->Du()V

    :cond_0
    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-virtual {v0, v1, v1}, Lcom/vent/l;->g(ZZ)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/vent/am;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/vent/ap;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/vent/ap;

    invoke-interface {v0, p0}, Lcom/vent/ap;->p(Landroid/support/v4/app/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ah;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    const-string v0, "adapter"

    iget-object v1, p0, Lcom/vent/am;->ceE:Lcom/vent/l;

    invoke-virtual {v1}, Lcom/vent/l;->CG()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
