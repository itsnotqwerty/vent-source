.class public Landroid/support/v7/view/menu/n;
.super Ljava/lang/Object;


# instance fields
.field private final Pj:Landroid/support/v7/view/menu/h;

.field private final Rc:I

.field private final Rd:I

.field private final Re:Z

.field public Rm:I

.field private Rt:Z

.field private Ru:Landroid/support/v7/view/menu/o$a;

.field public Rw:Landroid/widget/PopupWindow$OnDismissListener;

.field private SS:Landroid/support/v7/view/menu/m;

.field private final ST:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mContext:Landroid/content/Context;

.field protected mc:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Landroid/support/v7/view/menu/n;->Rm:I

    new-instance v0, Landroid/support/v7/view/menu/n$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/n$1;-><init>(Landroid/support/v7/view/menu/n;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/n;->ST:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Landroid/support/v7/view/menu/n;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/menu/n;->Pj:Landroid/support/v7/view/menu/h;

    iput-object p3, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    iput-boolean p4, p0, Landroid/support/v7/view/menu/n;->Re:Z

    iput p5, p0, Landroid/support/v7/view/menu/n;->Rc:I

    iput p6, p0, Landroid/support/v7/view/menu/n;->Rd:I

    return-void
.end method


# virtual methods
.method final a(IIZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->fz()Landroid/support/v7/view/menu/m;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v7/view/menu/m;->H(Z)V

    if-eqz p3, :cond_1

    iget v1, p0, Landroid/support/v7/view/menu/n;->Rm:I

    iget-object v2, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/m;->setHorizontalOffset(I)V

    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/m;->setVerticalOffset(I)V

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p1, v1

    sub-int v4, p2, v1

    add-int v5, p1, v1

    add-int/2addr v1, p2

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Landroid/support/v7/view/menu/m;->SR:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->show()V

    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/o$a;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/view/menu/n;->Ru:Landroid/support/v7/view/menu/o$a;

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/m;->a(Landroid/support/v7/view/menu/o$a;)V

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->dismiss()V

    :cond_0
    return-void
.end method

.method public final fA()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/view/menu/n;->a(IIZZ)V

    goto :goto_0
.end method

.method public final fz()Landroid/support/v7/view/menu/m;
    .locals 7

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$d;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v7/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/view/menu/n;->Rc:I

    iget v4, p0, Landroid/support/v7/view/menu/n;->Rd:I

    iget-boolean v5, p0, Landroid/support/v7/view/menu/n;->Re:Z

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/n;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->f(Landroid/support/v7/view/menu/h;)V

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->ST:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->a(Landroid/support/v7/view/menu/o$a;)V

    iget-boolean v1, p0, Landroid/support/v7/view/menu/n;->Rt:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->setForceShowIcon(Z)V

    iget v1, p0, Landroid/support/v7/view/menu/n;->Rm:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/m;->setGravity(I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/support/v7/view/menu/t;

    iget-object v1, p0, Landroid/support/v7/view/menu/n;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/n;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    iget v4, p0, Landroid/support/v7/view/menu/n;->Rc:I

    iget v5, p0, Landroid/support/v7/view/menu/n;->Rd:I

    iget-boolean v6, p0, Landroid/support/v7/view/menu/n;->Re:Z

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/t;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;IIZ)V

    goto :goto_2
.end method

.method public final isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/m;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final setForceShowIcon(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/n;->Rt:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/n;->SS:Landroid/support/v7/view/menu/m;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/m;->setForceShowIcon(Z)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->fA()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
