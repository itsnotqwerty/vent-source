.class final Landroid/support/v7/app/k$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/app/k;->eE()V

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/app/k;->eD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/view/v;->k(F)Landroid/support/v4/view/v;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    new-instance v1, Landroid/support/v7/app/k$5$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/k$5$1;-><init>(Landroid/support/v7/app/k$5;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/k$5;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0
.end method
