.class final Landroid/support/v7/app/k$b$1;
.super Landroid/support/v4/view/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/k$b;->a(Landroid/support/v7/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NF:Landroid/support/v7/app/k$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/k$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final ap(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iput-object v2, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->NF:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    goto :goto_0
.end method
