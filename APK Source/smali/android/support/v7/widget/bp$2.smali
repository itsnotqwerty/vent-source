.class final Landroid/support/v7/widget/bp$2;
.super Landroid/support/v4/view/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/bp;->b(IJ)Landroid/support/v4/view/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akk:Landroid/support/v7/widget/bp;

.field final synthetic akl:I

.field private tB:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bp;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/bp$2;->akk:Landroid/support/v7/widget/bp;

    iput p2, p0, Landroid/support/v7/widget/bp$2;->akl:I

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bp$2;->tB:Z

    return-void
.end method


# virtual methods
.method public final ao(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bp$2;->akk:Landroid/support/v7/widget/bp;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final ap(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/bp$2;->tB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp$2;->akk:Landroid/support/v7/widget/bp;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/bp$2;->akl:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final aq(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bp$2;->tB:Z

    return-void
.end method
