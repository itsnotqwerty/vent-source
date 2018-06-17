.class Landroid/support/design/widget/q;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private qc:Landroid/support/design/widget/r;

.field private qd:I

.field private qe:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    iput v0, p0, Landroid/support/design/widget/q;->qd:I

    iput v0, p0, Landroid/support/design/widget/q;->qe:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Landroid/support/design/widget/q;->qd:I

    iput v0, p0, Landroid/support/design/widget/q;->qe:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/q;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/r;

    invoke-direct {v0, p2}, Landroid/support/design/widget/r;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    invoke-virtual {v0}, Landroid/support/design/widget/r;->cc()V

    iget v0, p0, Landroid/support/design/widget/q;->qd:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    iget v1, p0, Landroid/support/design/widget/q;->qd:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/r;->r(I)Z

    iput v3, p0, Landroid/support/design/widget/q;->qd:I

    :cond_1
    iget v0, p0, Landroid/support/design/widget/q;->qe:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    iget v1, p0, Landroid/support/design/widget/q;->qe:I

    iget v2, v0, Landroid/support/design/widget/r;->qi:I

    if-eq v2, v1, :cond_2

    iput v1, v0, Landroid/support/design/widget/r;->qi:I

    invoke-virtual {v0}, Landroid/support/design/widget/r;->cd()V

    :cond_2
    iput v3, p0, Landroid/support/design/widget/q;->qe:I

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public be()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    iget v0, v0, Landroid/support/design/widget/r;->qh:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->e(Landroid/view/View;I)V

    return-void
.end method

.method public r(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/q;->qc:Landroid/support/design/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/r;->r(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Landroid/support/design/widget/q;->qd:I

    const/4 v0, 0x0

    goto :goto_0
.end method
