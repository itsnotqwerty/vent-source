.class final Landroid/support/v7/app/q$1;
.super Landroid/support/v4/view/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ph:Landroid/support/v7/app/q;


# direct methods
.method constructor <init>(Landroid/support/v7/app/q;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final ap(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-boolean v0, v0, Landroid/support/v7/app/q;->OW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iput-object v3, v0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v1, v0, Landroid/support/v7/app/q;->OT:Landroid/support/v7/view/b$a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v7/app/q;->OT:Landroid/support/v7/view/b$a;

    iget-object v2, v0, Landroid/support/v7/app/q;->OS:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    iput-object v3, v0, Landroid/support/v7/app/q;->OS:Landroid/support/v7/view/b;

    iput-object v3, v0, Landroid/support/v7/app/q;->OT:Landroid/support/v7/view/b$a;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/q$1;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    :cond_2
    return-void
.end method
