.class final Landroid/support/v7/app/k$6;
.super Landroid/support/v4/view/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/k;->b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NC:Landroid/support/v7/app/k;


# direct methods
.method constructor <init>(Landroid/support/v7/app/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final ao(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final ap(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    iget-object v0, p0, Landroid/support/v7/app/k$6;->NC:Landroid/support/v7/app/k;

    iput-object v2, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    return-void
.end method