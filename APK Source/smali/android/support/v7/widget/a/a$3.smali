.class final Landroid/support/v7/widget/a/a$3;
.super Landroid/support/v7/widget/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aln:Landroid/support/v7/widget/a/a;

.field final synthetic alo:I

.field final synthetic alp:Landroid/support/v7/widget/RecyclerView$x;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/RecyclerView$x;IIFFFFILandroid/support/v7/widget/RecyclerView$x;)V
    .locals 9

    iput-object p1, p0, Landroid/support/v7/widget/a/a$3;->aln:Landroid/support/v7/widget/a/a;

    move/from16 v0, p9

    iput v0, p0, Landroid/support/v7/widget/a/a$3;->alo:I

    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/support/v7/widget/a/a$3;->alp:Landroid/support/v7/widget/RecyclerView$x;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Landroid/support/v7/widget/a/a$c;-><init>(Landroid/support/v7/widget/RecyclerView$x;IIFFFF)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/a/a$c;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/a/a$3;->alG:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/a/a$3;->alo:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a$3;->alp:Landroid/support/v7/widget/RecyclerView$x;

    invoke-static {v0}, Landroid/support/v7/widget/a/a$a;->x(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a$3;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->alh:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$3;->alp:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a$3;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$3;->alp:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/a;->bl(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a$3;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->akP:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$3;->alp:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/a/a$3;->alD:Z

    iget v0, p0, Landroid/support/v7/widget/a/a$3;->alo:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a$3;->aln:Landroid/support/v7/widget/a/a;

    iget v1, p0, Landroid/support/v7/widget/a/a$3;->alo:I

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/a/a$4;

    invoke-direct {v3, v0, p0, v1}, Landroid/support/v7/widget/a/a$4;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/a$c;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
