.class final Landroid/support/v7/widget/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aln:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_6

    iget-object v9, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v9, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v0, v9, Landroid/support/v7/widget/a/a;->alm:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_7

    const-wide/16 v4, 0x0

    :goto_0
    iget-object v0, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, v9, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->f(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, v9, Landroid/support/v7/widget/a/a;->akY:F

    iget v2, v9, Landroid/support/v7/widget/a/a;->akW:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    iget-object v3, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    iget v2, v9, Landroid/support/v7/widget/a/a;->akW:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_8

    if-gez v3, :cond_8

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v9, Landroid/support/v7/widget/a/a;->akZ:F

    iget v1, v9, Landroid/support/v7/widget/a/a;->akX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int v7, v1, v2

    iget v1, v9, Landroid/support/v7/widget/a/a;->akX:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_a

    if-gez v7, :cond_a

    :cond_2
    :goto_2
    if-eqz v3, :cond_e

    iget-object v0, v9, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v8, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView;IIJ)I

    move-result v3

    move v8, v3

    :goto_3
    if-eqz v7, :cond_d

    iget-object v0, v9, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView;IIJ)I

    move-result v0

    :goto_4
    if-nez v8, :cond_3

    if-eqz v0, :cond_c

    :cond_3
    iget-wide v2, v9, Landroid/support/v7/widget/a/a;->alm:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_4

    iput-wide v10, v9, Landroid/support/v7/widget/a/a;->alm:J

    :cond_4
    iget-object v1, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->u(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->ale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/a/a$1;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :cond_7
    iget-wide v0, v9, Landroid/support/v7/widget/a/a;->alm:J

    sub-long v4, v10, v0

    goto/16 :goto_0

    :cond_8
    iget v2, v9, Landroid/support/v7/widget/a/a;->akW:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_9

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    iget-object v3, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, v1, v2

    if-gtz v3, :cond_1

    :cond_9
    move v3, v6

    goto/16 :goto_1

    :cond_a
    iget v1, v9, Landroid/support/v7/widget/a/a;->akX:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_b

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->lg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    iget-object v2, v9, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v7, v0, v1

    if-gtz v7, :cond_2

    :cond_b
    move v7, v6

    goto/16 :goto_2

    :cond_c
    iput-wide v12, v9, Landroid/support/v7/widget/a/a;->alm:J

    goto :goto_5

    :cond_d
    move v0, v7

    goto/16 :goto_4

    :cond_e
    move v8, v3

    goto/16 :goto_3
.end method
