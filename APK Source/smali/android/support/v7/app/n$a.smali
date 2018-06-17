.class final Landroid/support/v7/app/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private Nt:Z

.field final synthetic Ot:Landroid/support/v7/app/n;


# direct methods
.method constructor <init>(Landroid/support/v7/app/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/n$a;->Ot:Landroid/support/v7/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/n$a;->Nt:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/n$a;->Nt:Z

    iget-object v0, p0, Landroid/support/v7/app/n$a;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->dismissPopupMenus()V

    iget-object v0, p0, Landroid/support/v7/app/n$a;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/n$a;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/n$a;->Nt:Z

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/view/menu/h;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/n$a;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n$a;->Ot:Landroid/support/v7/app/n;

    iget-object v0, v0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
