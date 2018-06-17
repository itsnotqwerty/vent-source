.class Landroid/support/v4/view/r$g;
.super Landroid/support/v4/view/r$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/r$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public final n(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public final o(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method
