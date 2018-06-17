.class public Lcom/vent/an;
.super Lcom/vent/ah;

# interfaces
.implements Lcom/vent/ap;


# instance fields
.field bVe:Landroid/support/v4/view/ViewPager;

.field ceG:Landroid/support/v4/app/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ah;-><init>()V

    return-void
.end method

.method private eC(I)Landroid/support/v4/app/i;
    .locals 3

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/an;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v1, v2, p1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DB()V
    .locals 1

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vent/an;->ei(I)V

    :cond_0
    return-void
.end method

.method public DC()V
    .locals 5

    iget-object v0, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->getCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/vent/an;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v3, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v3, v4, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final DD()V
    .locals 2

    iget-object v0, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/an;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    :cond_0
    return-void
.end method

.method public final DE()V
    .locals 5

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->getCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/vent/an;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v3, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v3, v4, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->invalidate()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public be(Z)V
    .locals 2

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/an;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/am;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/am;

    iget-object v1, v0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vent/am;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->hr()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/vent/am;->By()V

    goto :goto_0
.end method

.method public final eD(I)V
    .locals 3

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/an;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v1, v2, p1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->invalidate()V

    :cond_0
    return-void
.end method

.method final ei(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/vent/an;->eC(I)Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/ao;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/ao;

    invoke-interface {v0}, Lcom/vent/ao;->DB()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/an;->ceG:Landroid/support/v4/app/r;

    invoke-super {p0}, Lcom/vent/ah;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iput-object v1, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    :cond_0
    invoke-super {p0}, Lcom/vent/ah;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/ah;->onResume()V

    invoke-virtual {p0}, Lcom/vent/an;->getParentFragment()Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/ap;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vent/ap;

    invoke-interface {v0, p0}, Lcom/vent/ap;->p(Landroid/support/v4/app/i;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/an;->DB()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/vent/an;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/ap;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/vent/ap;

    invoke-interface {v0, p0}, Lcom/vent/ap;->p(Landroid/support/v4/app/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p(Landroid/support/v4/app/i;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/an;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vent/an;->eC(I)Landroid/support/v4/app/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
