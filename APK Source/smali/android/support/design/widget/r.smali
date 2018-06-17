.class final Landroid/support/design/widget/r;
.super Ljava/lang/Object;


# instance fields
.field private final mView:Landroid/view/View;

.field qf:I

.field private qg:I

.field qh:I

.field qi:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final cc()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/r;->qf:I

    iget-object v0, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/r;->qg:I

    invoke-virtual {p0}, Landroid/support/design/widget/r;->cd()V

    return-void
.end method

.method final cd()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/r;->qh:I

    iget-object v2, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/r;->qf:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/r;->qi:I

    iget-object v2, p0, Landroid/support/design/widget/r;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/r;->qg:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->n(Landroid/view/View;I)V

    return-void
.end method

.method public final r(I)Z
    .locals 1

    iget v0, p0, Landroid/support/design/widget/r;->qh:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/r;->qh:I

    invoke-virtual {p0}, Landroid/support/design/widget/r;->cd()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
