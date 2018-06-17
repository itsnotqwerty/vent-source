.class public Landroid/support/v4/widget/n;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/h;
.implements Landroid/support/v4/view/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/n$a;,
        Landroid/support/v4/widget/n$b;
    }
.end annotation


# static fields
.field private static final Gf:[I

.field private static final JS:Ljava/lang/String;


# instance fields
.field private GL:F

.field private HL:Landroid/view/View;

.field JT:Landroid/support/v4/widget/n$b;

.field JU:Z

.field private JV:F

.field private JW:F

.field private final JX:Landroid/support/v4/view/j;

.field private final JY:[I

.field private final JZ:[I

.field private Ka:Z

.field private Kb:I

.field Kc:I

.field private Kd:F

.field Ke:Z

.field private Kf:Z

.field private final Kg:Landroid/view/animation/DecelerateInterpolator;

.field Kh:Landroid/support/v4/widget/c;

.field private Ki:I

.field protected Kj:I

.field Kk:F

.field protected Kl:I

.field Km:I

.field Kn:Landroid/support/v4/widget/d;

.field private Ko:Landroid/view/animation/Animation;

.field private Kp:Landroid/view/animation/Animation;

.field private Kq:Landroid/view/animation/Animation;

.field private Kr:Landroid/view/animation/Animation;

.field private Ks:Landroid/view/animation/Animation;

.field Kt:Z

.field private Ku:I

.field Kv:Z

.field private Kw:Landroid/support/v4/widget/n$a;

.field private Kx:Landroid/view/animation/Animation$AnimationListener;

.field private final Ky:Landroid/view/animation/Animation;

.field private final Kz:Landroid/view/animation/Animation;

.field private jK:I

.field private final lR:Landroid/support/v4/view/m;

.field private na:Z

.field private nc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/support/v4/widget/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/n;->JS:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/n;->Gf:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Landroid/support/v4/widget/n;->JU:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/n;->JV:F

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v4/widget/n;->JY:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v4/widget/n;->JZ:[I

    iput v1, p0, Landroid/support/v4/widget/n;->jK:I

    iput v1, p0, Landroid/support/v4/widget/n;->Ki:I

    new-instance v0, Landroid/support/v4/widget/n$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$1;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->Kx:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/n$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$6;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->Ky:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/n$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$7;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->Kz:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->nc:I

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->Kb:I

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/n;->setWillNotDraw(Z)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->Kg:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/n;->Ku:I

    new-instance v1, Landroid/support/v4/widget/c;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    new-instance v1, Landroid/support/v4/widget/d;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/d;->aE(I)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/c;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/n;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/n;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/n;->Km:I

    iget v0, p0, Landroid/support/v4/widget/n;->Km:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/n;->JV:F

    new-instance v0, Landroid/support/v4/view/m;

    invoke-direct {v0, p0}, Landroid/support/v4/view/m;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->lR:Landroid/support/v4/view/m;

    new-instance v0, Landroid/support/v4/view/j;

    invoke-direct {v0, p0}, Landroid/support/v4/view/j;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/n;->setNestedScrollingEnabled(Z)V

    iget v0, p0, Landroid/support/v4/widget/n;->Ku:I

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/n;->Kc:I

    iput v0, p0, Landroid/support/v4/widget/n;->Kl:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->r(F)V

    sget-object v0, Landroid/support/v4/widget/n;->Gf:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/n;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/n;->jK:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->jK:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(ZZ)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->JU:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Landroid/support/v4/widget/n;->Kt:Z

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ej()V

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->JU:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->JU:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/n;->Kc:I

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kx:Landroid/view/animation/Animation$AnimationListener;

    iput v0, p0, Landroid/support/v4/widget/n;->Kj:I

    iget-object v0, p0, Landroid/support/v4/widget/n;->Ky:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Ky:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Ky:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kg:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iput-object v1, v0, Landroid/support/v4/widget/c;->In:Landroid/view/animation/Animation$AnimationListener;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Ky:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kx:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private ej()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ek()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kw:Landroid/support/v4/widget/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kw:Landroid/support/v4/widget/n$a;

    invoke-interface {v0}, Landroid/support/v4/widget/n$a;->el()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gtz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method private o(F)V
    .locals 14

    const/16 v13, 0x4c

    const/high16 v6, 0x40800000    # 4.0f

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->x(Z)V

    iget v0, p0, Landroid/support/v4/widget/n;->JV:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/n;->JV:F

    sub-float v3, v0, v3

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->Kv:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v4/widget/n;->Km:I

    iget v4, p0, Landroid/support/v4/widget/n;->Kl:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    :goto_0
    const/4 v4, 0x0

    mul-float v5, v0, v11

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    iget v5, p0, Landroid/support/v4/widget/n;->Kl:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/c;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/n;->Ke:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1, v10}, Landroid/support/v4/widget/c;->setScaleX(F)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1, v10}, Landroid/support/v4/widget/c;->setScaleY(F)V

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/widget/n;->Ke:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/widget/n;->JV:F

    div-float v1, p1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    :cond_2
    iget v1, p0, Landroid/support/v4/widget/n;->JV:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result v1

    if-le v1, v13, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kq:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/n;->b(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result v1

    invoke-direct {p0, v1, v13}, Landroid/support/v4/widget/n;->s(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/n;->Kq:Landroid/view/animation/Animation;

    :cond_3
    :goto_1
    mul-float v1, v2, v12

    iget-object v4, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/support/v4/widget/d;->n(F)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/d;->m(F)V

    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    iget-object v3, v2, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iput v1, v3, Landroid/support/v4/widget/d$a;->ke:F

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->invalidateSelf()V

    iget v1, p0, Landroid/support/v4/widget/n;->Kc:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    return-void

    :cond_4
    iget v0, p0, Landroid/support/v4/widget/n;->Km:I

    int-to-float v0, v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kr:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/n;->b(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    invoke-direct {p0, v1, v4}, Landroid/support/v4/widget/n;->s(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/n;->Kr:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method private p(F)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v4/widget/n;->JV:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, v1, v1}, Landroid/support/v4/widget/n;->c(ZZ)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/n;->JU:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->n(F)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/n;->Ke:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/n$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$5;-><init>(Landroid/support/v4/widget/n;)V

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/n;->Kc:I

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Ke:Z

    if-eqz v2, :cond_3

    iput v1, p0, Landroid/support/v4/widget/n;->Kj:I

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->getScaleX()F

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/n;->Kk:F

    new-instance v1, Landroid/support/v4/widget/n$8;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/n$8;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->Ks:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Ks:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iput-object v0, v1, Landroid/support/v4/widget/c;->In:Landroid/view/animation/Animation$AnimationListener;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Ks:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/d;->x(Z)V

    goto :goto_0

    :cond_3
    iput v1, p0, Landroid/support/v4/widget/n;->Kj:I

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kz:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kz:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kz:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kg:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iput-object v0, v1, Landroid/support/v4/widget/c;->In:Landroid/view/animation/Animation$AnimationListener;

    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kz:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private q(F)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/n;->Kd:F

    sub-float v0, p1, v0

    iget v1, p0, Landroid/support/v4/widget/n;->nc:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/n;->Kd:F

    iget v1, p0, Landroid/support/v4/widget/n;->nc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/n;->GL:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private s(II)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Landroid/support/v4/widget/n$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/n$4;-><init>(Landroid/support/v4/widget/n;II)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/widget/c;->In:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    new-instance v0, Landroid/support/v4/widget/n$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$3;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->Kp:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kp:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iput-object p1, v0, Landroid/support/v4/widget/c;->In:Landroid/view/animation/Animation$AnimationListener;

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/j;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/j;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/j;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/j;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->Ki:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroid/support/v4/widget/n;->Ki:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/n;->Ki:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->lR:Landroid/support/v4/view/m;

    iget v0, v0, Landroid/support/v4/view/m;->FM:I

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->Ku:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->Km:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/n;->Kl:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/j;->at(I)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    iget-boolean v0, v0, Landroid/support/v4/view/j;->FJ:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ej()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Kf:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->Kf:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Kf:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ek()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->JU:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Ka:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/n;->Kl:I

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v2}, Landroid/support/v4/widget/c;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/n;->jK:I

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    iget v1, p0, Landroid/support/v4/widget/n;->jK:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->Kd:F

    goto :goto_1

    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/n;->jK:I

    if-ne v1, v3, :cond_3

    sget-object v1, Landroid/support/v4/widget/n;->JS:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/v4/widget/n;->jK:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/n;->q(F)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    iput v3, p0, Landroid/support/v4/widget/n;->jK:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ej()V

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v2}, Landroid/support/v4/widget/c;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/n;->Kc:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/n;->Kc:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/c;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ej()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget v1, p0, Landroid/support/v4/widget/n;->Ku:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/n;->Ku:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/c;->measure(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/n;->Ki:I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    if-ne v1, v2, :cond_3

    iput v0, p0, Landroid/support/v4/widget/n;->Ki:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/n;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/n;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-lez p3, :cond_0

    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/n;->JW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    iput v2, p0, Landroid/support/v4/widget/n;->JW:F

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/n;->o(F)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/n;->Kv:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    aget v0, p4, v4

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->JY:[I

    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/n;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/n;->JW:F

    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    iget-object v5, p0, Landroid/support/v4/widget/n;->JZ:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/n;->dispatchNestedScroll(IIII[I)Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->JZ:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    if-gez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ek()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/n;->JW:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/n;->JW:F

    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/n;->o(F)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->lR:Landroid/support/v4/view/m;

    iput p3, v0, Landroid/support/v4/view/m;->FM:I

    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->startNestedScroll(I)Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/n;->JW:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->Ka:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->Kf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->JU:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/n;->lR:Landroid/support/v4/view/m;

    iput v2, v0, Landroid/support/v4/view/m;->FM:I

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->Ka:Z

    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/n;->JW:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/n;->p(F)V

    iput v1, p0, Landroid/support/v4/widget/n;->JW:F

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Kf:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->Kf:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Kf:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ek()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->JU:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->Ka:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :cond_2
    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/n;->jK:I

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    goto :goto_1

    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/n;->jK:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_4

    sget-object v1, Landroid/support/v4/widget/n;->JS:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/n;->q(F)V

    iget-boolean v2, p0, Landroid/support/v4/widget/n;->na:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v4/widget/n;->GL:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/n;->o(F)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-gez v1, :cond_5

    sget-object v1, Landroid/support/v4/widget/n;->JS:Ljava/lang/String;

    const-string v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->jK:I

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_6
    iget v1, p0, Landroid/support/v4/widget/n;->jK:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    sget-object v1, Landroid/support/v4/widget/n;->JS:Ljava/lang/String;

    const-string v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Landroid/support/v4/widget/n;->na:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/n;->GL:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput-boolean v0, p0, Landroid/support/v4/widget/n;->na:Z

    invoke-direct {p0, v1}, Landroid/support/v4/widget/n;->p(F)V

    :cond_7
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/n;->jK:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final r(F)V
    .locals 3

    iget v0, p0, Landroid/support/v4/widget/n;->Kj:I

    iget v1, p0, Landroid/support/v4/widget/n;->Kl:I

    iget v2, p0, Landroid/support/v4/widget/n;->Kj:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/n;->HL:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->ac(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return-void
.end method

.method final reset()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->stop()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/n;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->Ke:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->Kc:I

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/n;->Kl:I

    iget v1, p0, Landroid/support/v4/widget/n;->Kc:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    goto :goto_0
.end method

.method setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->setScaleX(F)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/widget/n;->ej()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    iget-object v1, v0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/d$a;->setColors([I)V

    iget-object v1, v0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d$a;->aF(I)V

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget v3, p1, v0

    invoke-static {v1, v3}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/n;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/n;->JV:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->reset()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/j;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/n$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n;->Kw:Landroid/support/v4/widget/n$a;

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/n$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n;->JT:Landroid/support/v4/widget/n$b;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/n;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/c;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->JU:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroid/support/v4/widget/n;->JU:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/n;->Kv:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/n;->Km:I

    iget v1, p0, Landroid/support/v4/widget/n;->Kl:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Landroid/support/v4/widget/n;->Kc:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/n;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v2, p0, Landroid/support/v4/widget/n;->Kt:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kx:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/c;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setAlpha(I)V

    new-instance v1, Landroid/support/v4/widget/n$2;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/n$2;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v1, p0, Landroid/support/v4/widget/n;->Ko:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Ko:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v4/widget/n;->Kb:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iput-object v0, v1, Landroid/support/v4/widget/c;->In:Landroid/view/animation/Animation$AnimationListener;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Ko:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v4/widget/n;->Km:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/n;->c(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/n;->Ku:I

    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->aE(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    iget-object v1, p0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/n;->Ku:I

    goto :goto_1
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->bringToFront()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-static {v0, p1}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v0}, Landroid/support/v4/widget/c;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/n;->Kc:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/j;->p(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->JX:Landroid/support/v4/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/j;->au(I)V

    return-void
.end method
