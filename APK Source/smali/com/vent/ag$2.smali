.class final Lcom/vent/ag$2;
.super Landroid/support/v7/widget/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ag;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdX:Lcom/vent/ag;


# direct methods
.method constructor <init>(Lcom/vent/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ag$2;->cdX:Lcom/vent/ag;

    invoke-direct {p0}, Landroid/support/v7/widget/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;FFIZ)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 2

    check-cast p1, Lcom/vent/ag$a$a;

    iget-object v1, p1, Lcom/vent/ag$a$a;->bZN:Landroid/view/View;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ag$2;->cdX:Lcom/vent/ag;

    iget-object v0, v0, Lcom/vent/ag;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/vent/ag$2;->cdX:Lcom/vent/ag;

    iget-object v1, v1, Lcom/vent/ag;->cdW:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->g(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/vent/ag$2;->cdX:Lcom/vent/ag;

    iget-object v0, v0, Lcom/vent/ag;->cdV:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Lcom/vent/ag$2;->cdX:Lcom/vent/ag;

    iget-object v1, v1, Lcom/vent/ag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->g(Landroid/support/v7/widget/RecyclerView;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final jh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v(Landroid/support/v7/widget/RecyclerView$x;)I
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/vent/ag$2;->ck(I)I

    move-result v0

    return v0
.end method

.method public final y(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 0

    return-void
.end method
