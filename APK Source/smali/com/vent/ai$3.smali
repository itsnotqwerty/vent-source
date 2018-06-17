.class final Lcom/vent/ai$3;
.super Landroid/support/v7/widget/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ai;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cem:Lcom/vent/ai;


# direct methods
.method constructor <init>(Lcom/vent/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ai$3;->cem:Lcom/vent/ai;

    invoke-direct {p0}, Landroid/support/v7/widget/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;FFIZ)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/vent/f$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vent/f$a;

    iget-object v3, p1, Lcom/vent/f$a;->bZM:Landroid/widget/TextView;

    if-ne p2, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/vent/f$a;->bZN:Landroid/view/View;

    if-ne p2, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ai$3;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/vent/ai$3;->cem:Lcom/vent/ai;

    iget-object v1, v1, Lcom/vent/ai;->cdW:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->g(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/vent/ai$3;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/vent/ai$3;->cem:Lcom/vent/ai;

    iget-object v1, v1, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->g(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final jh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v(Landroid/support/v7/widget/RecyclerView$x;)I
    .locals 1

    instance-of v0, p1, Lcom/vent/f$a;

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/vent/ai$3;->ck(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/ai$3;->ck(I)I

    move-result v0

    goto :goto_0
.end method

.method public final y(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 0

    return-void
.end method
