.class public final Lcom/vent/views/FixedSwipeRefreshLayout;
.super Landroid/support/v4/widget/n;


# instance fields
.field private coh:Z

.field private coi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coh:Z

    iput-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coi:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coh:Z

    iput-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coi:Z

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/n;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coh:Z

    iget-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coi:Z

    invoke-virtual {p0, v0}, Lcom/vent/views/FixedSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coh:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/widget/n;->setRefreshing(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/vent/views/FixedSwipeRefreshLayout;->coi:Z

    goto :goto_0
.end method
