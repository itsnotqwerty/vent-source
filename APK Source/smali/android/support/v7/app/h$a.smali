.class final Landroid/support/v7/app/h$a;
.super Landroid/support/v7/app/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic MS:Landroid/support/v7/app/h;


# direct methods
.method constructor <init>(Landroid/support/v7/app/h;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/h$a;->MS:Landroid/support/v7/app/h;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/j$a;-><init>(Landroid/support/v7/app/j;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/h$a;->MS:Landroid/support/v7/app/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/h;->aS(I)Landroid/support/v7/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/app/k$d;->NK:Landroid/support/v7/view/menu/h;

    invoke-super {p0, p1, v0, p3}, Landroid/support/v7/app/j$a;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/j$a;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0
.end method
