.class Landroid/support/v4/view/r$h;
.super Landroid/support/v4/view/r$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/r$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/p;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/support/v4/view/p;->FP:Ljava/lang/Object;

    :goto_0
    check-cast v0, Landroid/view/PointerIcon;

    check-cast v0, Landroid/view/PointerIcon;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
