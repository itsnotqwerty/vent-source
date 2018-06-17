.class Landroid/support/v4/view/r$d;
.super Landroid/support/v4/view/r$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/r$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final ag(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
