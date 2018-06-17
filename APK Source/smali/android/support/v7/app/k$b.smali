.class final Landroid/support/v7/app/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic NC:Landroid/support/v7/app/k;

.field private NE:Landroid/support/v7/view/b$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/k;Landroid/support/v7/view/b$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/k$b;->NE:Landroid/support/v7/view/b$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NE:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nl:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->Nm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/app/k;->eE()V

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->Nk:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/v;->k(F)Landroid/support/v4/view/v;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->Nn:Landroid/support/v4/view/v;

    new-instance v1, Landroid/support/v7/app/k$b$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/k$b$1;-><init>(Landroid/support/v7/app/k$b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->MG:Landroid/support/v7/app/e;

    iget-object v1, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/app/e;->onSupportActionModeFinished(Landroid/support/v7/view/b;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k$b;->NC:Landroid/support/v7/app/k;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/k;->Nj:Landroid/support/v7/view/b;

    return-void
.end method

.method public final a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NE:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NE:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k$b;->NE:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/b$a;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
