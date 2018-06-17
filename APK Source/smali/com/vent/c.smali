.class public abstract Lcom/vent/c;
.super Lcom/vent/a;

# interfaces
.implements Lcom/vent/ap;


# instance fields
.field bVe:Landroid/support/v4/view/ViewPager;

.field bWq:Landroid/support/v4/app/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method private ej(I)Landroid/support/v4/app/i;
    .locals 3

    iget-object v0, p0, Lcom/vent/c;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/c;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/c;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vent/c;->bWq:Landroid/support/v4/app/r;

    invoke-static {v0, v1, v2, p1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final ei(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/vent/c;->ej(I)Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/ao;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/ao;

    invoke-interface {v0}, Lcom/vent/ao;->DB()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/c;->bVe:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/c;->bWq:Landroid/support/v4/app/r;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    iget-object v0, p0, Lcom/vent/c;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/c;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vent/c;->ei(I)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/support/v4/app/i;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/c;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vent/c;->ej(I)Landroid/support/v4/app/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
