.class final Landroid/support/v7/widget/d$d$1;
.super Landroid/support/v7/widget/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/d$d;-><init>(Landroid/support/v7/widget/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UB:Landroid/support/v7/widget/d;

.field final synthetic UC:Landroid/support/v7/widget/d$d;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/d$d;Landroid/view/View;Landroid/support/v7/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/d$d$1;->UC:Landroid/support/v7/widget/d$d;

    iput-object p3, p0, Landroid/support/v7/widget/d$d$1;->UB:Landroid/support/v7/widget/d;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/aq;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final eY()Landroid/support/v7/view/menu/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d$d$1;->UC:Landroid/support/v7/widget/d$d;

    iget-object v0, v0, Landroid/support/v7/widget/d$d;->Uy:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Us:Landroid/support/v7/widget/d$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d$d$1;->UC:Landroid/support/v7/widget/d$d;

    iget-object v0, v0, Landroid/support/v7/widget/d$d;->Uy:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Us:Landroid/support/v7/widget/d$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/d$e;->fz()Landroid/support/v7/view/menu/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final eZ()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d$d$1;->UC:Landroid/support/v7/widget/d$d;

    iget-object v0, v0, Landroid/support/v7/widget/d$d;->Uy:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->showOverflowMenu()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final fK()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d$d$1;->UC:Landroid/support/v7/widget/d$d;

    iget-object v0, v0, Landroid/support/v7/widget/d$d;->Uy:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Uu:Landroid/support/v7/widget/d$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d$d$1;->UC:Landroid/support/v7/widget/d$d;

    iget-object v0, v0, Landroid/support/v7/widget/d$d;->Uy:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->hideOverflowMenu()Z

    const/4 v0, 0x1

    goto :goto_0
.end method
