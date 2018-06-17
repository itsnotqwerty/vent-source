.class final Landroid/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeU:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Landroid/support/v7/widget/f$b;)V
    .locals 3

    iget v0, p1, Landroid/support/v7/widget/f$b;->wC:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget v1, p1, Landroid/support/v7/widget/f$b;->VF:I

    iget v2, p1, Landroid/support/v7/widget/f$b;->VH:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->I(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget v1, p1, Landroid/support/v7/widget/f$b;->VF:I

    iget v2, p1, Landroid/support/v7/widget/f$b;->VH:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->J(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget v1, p1, Landroid/support/v7/widget/f$b;->VF:I

    iget v2, p1, Landroid/support/v7/widget/f$b;->VH:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->K(II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget v1, p1, Landroid/support/v7/widget/f$b;->VF:I

    iget v2, p1, Landroid/support/v7/widget/f$b;->VH:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->L(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final A(II)V
    .locals 11

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->gw()I

    move-result v8

    if-ge p1, p2, :cond_1

    move v0, v1

    move v3, p2

    move v4, p1

    :goto_0
    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/ai;->bl(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v10, v9, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-lt v10, v4, :cond_0

    iget v10, v9, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-gt v10, v3, :cond_0

    iget v10, v9, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-ne v10, p1, :cond_2

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v6}, Landroid/support/v7/widget/RecyclerView$x;->offsetPosition(IZ)V

    :goto_2
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iput-boolean v2, v9, Landroid/support/v7/widget/RecyclerView$u;->afY:Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    move v3, p1

    move v4, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v9, v0, v6}, Landroid/support/v7/widget/RecyclerView$x;->offsetPosition(IZ)V

    goto :goto_2

    :cond_3
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    if-ge p1, p2, :cond_5

    move v3, p2

    move v4, p1

    :goto_3
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v6

    :goto_4
    if-ge v5, v9, :cond_7

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_4

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-lt v10, v4, :cond_4

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-gt v10, v3, :cond_4

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-ne v10, p1, :cond_6

    sub-int v10, p2, p1

    invoke-virtual {v0, v10, v6}, Landroid/support/v7/widget/RecyclerView$x;->offsetPosition(IZ)V

    :cond_4
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_5
    move v1, v2

    move v3, p1

    move v4, p2

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/RecyclerView$x;->offsetPosition(IZ)V

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->aeH:Z

    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->gw()I

    move-result v3

    add-int v4, p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->bl(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-lt v6, p1, :cond_0

    iget v6, v5, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-ge v6, v4, :cond_0

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    invoke-virtual {v5, p3}, Landroid/support/v7/widget/RecyclerView$x;->addChangePayload(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iput-boolean v7, v0, Landroid/support/v7/widget/RecyclerView$j;->afs:Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    add-int v3, p1, p2

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_2

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-lt v4, p1, :cond_2

    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView$x;->addFlags(I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$p;->bN(I)V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v7, v0, Landroid/support/v7/widget/RecyclerView;->aeI:Z

    return-void
.end method

.method public final bg(I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->gw()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ai;->bl(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-ne v6, p1, :cond_4

    iget-object v1, v4, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ai;->aA(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    if-nez v0, :cond_3

    move-object v0, v2

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ai;->aA(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final d(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->f(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public final e(Landroid/support/v7/widget/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->f(Landroid/support/v7/widget/f$b;)V

    return-void
.end method

.method public final x(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->c(IIZ)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->aeH:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$u;->afV:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$u;->afV:I

    return-void
.end method

.method public final y(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->c(IIZ)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->aeH:Z

    return-void
.end method

.method public final z(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->gw()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ai;->bl(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-lt v5, p1, :cond_0

    invoke-virtual {v4, p2, v0}, Landroid/support/v7/widget/RecyclerView$x;->offsetPosition(IZ)V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iput-boolean v6, v4, Landroid/support/v7/widget/RecyclerView$u;->afY:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, v3, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$p;->afC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_2

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-lt v5, p1, :cond_2

    invoke-virtual {v0, p2, v6}, Landroid/support/v7/widget/RecyclerView$x;->offsetPosition(IZ)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->aeU:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView;->aeH:Z

    return-void
.end method
