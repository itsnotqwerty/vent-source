.class final Landroid/support/v7/app/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic Ot:Landroid/support/v7/app/n;


# direct methods
.method constructor <init>(Landroid/support/v7/app/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/n$b;->Ot:Landroid/support/v7/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/view/menu/h;)V
    .locals 4

    const/16 v3, 0x6c

    iget-object v0, p0, Landroid/support/v7/app/n$b;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n$b;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/n$b;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/n$b;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n$b;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method
