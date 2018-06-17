.class final Landroid/support/v7/widget/bp$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/bp;-><init>(Landroid/support/v7/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final akj:Landroid/support/v7/view/menu/a;

.field final synthetic akk:Landroid/support/v7/widget/bp;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bp;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v7/widget/bp$1;->akk:Landroid/support/v7/widget/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/view/menu/a;

    iget-object v1, p0, Landroid/support/v7/widget/bp$1;->akk:Landroid/support/v7/widget/bp;

    iget-object v1, v1, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bp$1;->akk:Landroid/support/v7/widget/bp;

    iget-object v2, v2, Landroid/support/v7/widget/bp;->Ch:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/widget/bp$1;->akj:Landroid/support/v7/view/menu/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/bp$1;->akk:Landroid/support/v7/widget/bp;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->On:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp$1;->akk:Landroid/support/v7/widget/bp;

    iget-boolean v0, v0, Landroid/support/v7/widget/bp;->akf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp$1;->akk:Landroid/support/v7/widget/bp;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->On:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/bp$1;->akj:Landroid/support/v7/view/menu/a;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
