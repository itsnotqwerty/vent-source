.class final Landroid/support/v7/app/k$c;
.super Landroid/support/v7/widget/ContentFrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic NC:Landroid/support/v7/app/k;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/k$c;->NC:Landroid/support/v7/app/k;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k$c;->NC:Landroid/support/v7/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/k;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-lt v1, v3, :cond_0

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/k$c;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/k$c;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-le v2, v1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/k$c;->NC:Landroid/support/v7/app/k;

    invoke-virtual {v1}, Landroid/support/v7/app/k;->eF()V

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k$c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/k$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
