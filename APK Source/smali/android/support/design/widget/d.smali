.class final Landroid/support/design/widget/d;
.super Landroid/support/design/widget/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/d;->jU:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/d;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/design/widget/d;->jU:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void
.end method