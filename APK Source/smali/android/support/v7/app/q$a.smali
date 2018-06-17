.class public final Landroid/support/v7/app/q$a;
.super Landroid/support/v7/view/b;

# interfaces
.implements Landroid/support/v7/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic Ph:Landroid/support/v7/app/q;

.field private final Pi:Landroid/content/Context;

.field final Pj:Landroid/support/v7/view/menu/h;

.field private Pk:Landroid/support/v7/view/b$a;

.field private Pl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/q;Landroid/content/Context;Landroid/support/v7/view/b$a;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    invoke-direct {p0}, Landroid/support/v7/view/b;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/q$a;->Pi:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    new-instance v0, Landroid/support/v7/view/menu/h;

    invoke-direct {v0, p2}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/view/menu/h;->Sh:I

    iput-object v0, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/view/menu/h;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/q$a;->invalidate()V

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public final eM()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fj()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->fk()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->fk()V

    throw v0
.end method

.method public final finish()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-boolean v0, v0, Landroid/support/v7/app/q;->OX:Z

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-boolean v1, v1, Landroid/support/v7/app/q;->OY:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/q;->b(ZZZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iput-object p0, v0, Landroid/support/v7/app/q;->OS:Landroid/support/v7/view/b;

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    iput-object v1, v0, Landroid/support/v7/app/q;->OT:Landroid/support/v7/view/b$a;

    :goto_1
    iput-object v3, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/q;->F(Z)V

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarContextView;->Ts:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->fC()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->gy()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-boolean v1, v1, Landroid/support/v7/app/q;->Pd:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iput-object v3, v0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    invoke-interface {v0, p0}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;)V

    goto :goto_1
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pl:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/support/v7/view/g;

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pi:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fj()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pk:Landroid/support/v7/view/b$a;

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/b$a;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fk()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->fk()V

    throw v0
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->Tx:Z

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/q$a;->Pl:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/q$a;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/q$a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/view/b;->setTitleOptionalHint(Z)V

    iget-object v0, p0, Landroid/support/v7/app/q$a;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
