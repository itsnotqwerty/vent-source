.class final Lcom/vent/ai$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ai;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final BX()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->Du()V

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->BZ()V

    return-void
.end method

.method public final BY()V
    .locals 0

    return-void
.end method

.method public final BZ()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->BZ()V

    return-void
.end method

.method public final Ca()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->BZ()V

    return-void
.end method

.method public final aZ(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0, p1}, Lcom/vent/f;->bb(Z)V

    return-void
.end method

.method public final done()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->unregister()V

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->BZ()V

    return-void
.end method

.method public final en(I)V
    .locals 3

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->CL()I

    move-result v0

    add-int v1, p1, v0

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0, v1, v2}, Lcom/vent/f;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public final eo(I)V
    .locals 3

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->CL()I

    move-result v0

    add-int v1, p1, v0

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0, v1, v2}, Lcom/vent/f;->notifyItemRangeChanged(II)V

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    :cond_0
    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ai$2;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->notifyDataSetChanged()V

    return-void
.end method
