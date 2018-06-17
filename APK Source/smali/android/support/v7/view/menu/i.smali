.class final Landroid/support/v7/view/menu/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/view/menu/o$a;


# instance fields
.field Pj:Landroid/support/v7/view/menu/h;

.field private Ru:Landroid/support/v7/view/menu/o$a;

.field Sv:Landroid/support/v7/app/c;

.field Sw:Landroid/support/v7/view/menu/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->dismiss()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Ru:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_2
    return-void
.end method

.method public final d(Landroid/support/v7/view/menu/h;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Ru:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->d(Landroid/support/v7/view/menu/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Sw:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/f;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Sw:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/h;Z)V

    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    invoke-virtual {v1}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/i;->Sv:Landroid/support/v7/app/c;

    invoke-virtual {v1}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/menu/h;->I(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/i;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
