.class public final Landroid/support/v7/widget/RecyclerView$p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field final synthetic aeU:Landroid/support/v7/widget/RecyclerView;

.field final afA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field afB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field final afC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field final afD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field afE:I

.field afF:I

.field afG:Landroid/support/v7/widget/RecyclerView$o;

.field afH:Landroid/support/v7/widget/RecyclerView$v;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v1, 0x2

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afD:Ljava/util/List;

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$p;->afE:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$p;->afF:I

    return-void
.end method

.method private a(JI)Landroid/support/v7/widget/RecyclerView$x;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$x;->setFlags(II)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->be(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->bN(I)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private bO(I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/f;->w(II)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v6

    :goto_2
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getItemId()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private bP(I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    iget-object v0, v4, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_4

    iget-object v0, v4, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, v4, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/ai$b;->aB(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    iget-object v2, v1, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/ai$b;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    iget-object v4, v1, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ai$a;->get(I)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v4, v1, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ai$a;->clear(I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ai;->az(Landroid/view/View;)Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ai;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->detachViewFromParent(I)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$p;->bf(Landroid/view/View;)V

    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private d(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$p;->d(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView$x;Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x4000

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView$x;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$x;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->setFlags(II)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adR:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adR:Landroid/support/v7/widget/RecyclerView$q;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bv;->t(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_3
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->bK(I)Landroid/support/v7/widget/RecyclerView$o$a;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$o$a;->afw:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$o;->afu:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$o$a;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afx:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->resetInternal()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final bL(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_2

    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->bf(I)I

    move-result p1

    goto :goto_0
.end method

.method public final bM(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->c(IJ)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    return-object v0
.end method

.method final bN(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final bd(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->unScrap()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->o(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method final be(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->access$1002(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$p;)Landroid/support/v7/widget/RecyclerView$p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->access$1102(Landroid/support/v7/widget/RecyclerView$x;Z)Z

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->clearReturnedFromScrapFlag()V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->o(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method

.method final bf(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v3

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$x;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$x;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p0, v1}, Landroid/support/v7/widget/RecyclerView$x;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$p;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    :cond_5
    invoke-virtual {v3, p0, v2}, Landroid/support/v7/widget/RecyclerView$x;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$p;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method final c(IJ)Landroid/support/v7/widget/RecyclerView$x;
    .locals 10

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->bO(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->bP(I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    :goto_1
    if-nez v1, :cond_d

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->unScrap()V

    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->o(Landroid/support/v7/widget/RecyclerView$x;)V

    const/4 v2, 0x0

    :cond_4
    :goto_3
    if-nez v2, :cond_26

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/f;->bf(I)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-lt v1, v3, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid item position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    iget v1, v2, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-ltz v1, :cond_8

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-lt v1, v3, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v3

    if-eq v1, v3, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->getItemId()J

    move-result-wide v4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->clearReturnedFromScrapFlag()V

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_25

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Landroid/support/v7/widget/RecyclerView$p;->a(JI)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-eqz v2, :cond_25

    iput v1, v2, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    if-nez v2, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afH:Landroid/support/v7/widget/RecyclerView$v;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afH:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$v;->ir()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->aB(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-nez v2, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$o;->afu:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$o$a;

    if-eqz v0, :cond_13

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->resetInternal()V

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->adz:Z

    if-eqz v0, :cond_11

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView$p;->d(Landroid/view/ViewGroup;Z)V

    :cond_11
    if-nez v2, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, p2, v6

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$o;->bK(I)Landroid/support/v7/widget/RecyclerView$o$a;

    move-result-object v0

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afy:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_12

    add-long/2addr v6, v4

    cmp-long v0, v6, p2

    if-gez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_13
    const/4 v2, 0x0

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    goto :goto_6

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$a;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ig()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->aR(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v2, Landroid/support/v7/widget/RecyclerView$x;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    sub-long v4, v6, v4

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$o;->bK(I)Landroid/support/v7/widget/RecyclerView$o$a;

    move-result-object v0

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afy:J

    invoke-static {v6, v7, v4, v5}, Landroid/support/v7/widget/RecyclerView$o;->b(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afy:J

    :cond_17
    move v3, v1

    :goto_8
    if-eqz v3, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_18

    const/16 v0, 0x2000

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$x;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->setFlags(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$u;->agc:Z

    if-eqz v0, :cond_18

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$f;->j(Landroid/support/v7/widget/RecyclerView$x;)I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->getUnmodifiedPayloads()Ljava/util/List;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$f$b;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$f$b;->n(Landroid/support/v7/widget/RecyclerView$x;)Landroid/support/v7/widget/RecyclerView$f$b;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;)V

    :cond_18
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-eqz v1, :cond_19

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isBound()Z

    move-result v1

    if-eqz v1, :cond_19

    iput p1, v2, Landroid/support/v7/widget/RecyclerView$x;->mPreLayoutPosition:I

    move v1, v0

    :goto_9
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v3, :cond_23

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->aft:Z

    move-object v0, v2

    goto/16 :goto_7

    :cond_19
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->bf(I)I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, v2, Landroid/support/v7/widget/RecyclerView$x;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, p2, v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$o;->bK(I)Landroid/support/v7/widget/RecyclerView$o$a;

    move-result-object v0

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$o$a;->afz:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1b

    add-long/2addr v6, v4

    cmp-long v0, v6, p2

    if-gez v0, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_d
    move v1, v0

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$a;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v7

    sub-long/2addr v0, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$o;->bK(I)Landroid/support/v7/widget/RecyclerView$o$a;

    move-result-object v4

    iget-wide v6, v4, Landroid/support/v7/widget/RecyclerView$o$a;->afz:J

    invoke-static {v6, v7, v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->b(JJ)J

    move-result-wide v0

    iput-wide v0, v4, Landroid/support/v7/widget/RecyclerView$o$a;->afz:J

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hR()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->J(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->l(Landroid/view/View;I)V

    :cond_1e
    invoke-static {v0}, Landroid/support/v4/view/r;->G(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/16 v1, 0x4000

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeL:Landroid/support/v7/widget/bb;

    iget-object v1, v1, Landroid/support/v7/widget/bb;->agn:Landroid/support/v4/view/b;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-eqz v0, :cond_20

    iput p1, v2, Landroid/support/v7/widget/RecyclerView$x;->mPreLayoutPosition:I

    :cond_20
    const/4 v0, 0x1

    goto :goto_d

    :cond_21
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    :cond_22
    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    goto/16 :goto_a

    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_24
    move v1, v0

    goto/16 :goto_9

    :cond_25
    move v1, v0

    goto/16 :goto_4

    :cond_26
    move v3, v0

    goto/16 :goto_8
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->ip()V

    return-void
.end method

.method final getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$o;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/RecyclerView$o;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afG:Landroid/support/v7/widget/RecyclerView$o;

    return-object v0
.end method

.method final io()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->afk:I

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$p;->afE:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afF:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$p;->afF:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->bN(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final ip()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$p;->bN(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ig()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar$a;->gI()V

    :cond_1
    return-void
.end method

.method final o(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->isScrap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->isScrap()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$x;->access$900(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->isRecyclable()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afF:I

    if-lez v0, :cond_c

    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$x;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$p;->afF:I

    if-lt v0, v3, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$p;->bN(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_6
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ig()Z

    move-result v3

    if-eqz v3, :cond_9

    if-lez v0, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/ar$a;->bp(I)Z

    move-result v3

    if-nez v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ar$a;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v3, 0x1

    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    :goto_3
    if-nez v0, :cond_b

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;Z)V

    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$p;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/bv;->t(Landroid/support/v7/widget/RecyclerView$x;)V

    if-nez v0, :cond_a

    if-nez v1, :cond_a

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    :cond_a
    return-void

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    move v1, v2

    move v0, v2

    goto :goto_4
.end method

.method final p(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$x;->access$1100(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$x;->access$1002(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$p;)Landroid/support/v7/widget/RecyclerView$p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$x;->access$1102(Landroid/support/v7/widget/RecyclerView$x;Z)Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->clearReturnedFromScrapFlag()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
