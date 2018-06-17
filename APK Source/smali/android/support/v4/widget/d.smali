.class public final Landroid/support/v4/widget/d;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/d$a;
    }
.end annotation


# static fields
.field private static final Is:Landroid/view/animation/Interpolator;

.field private static final It:[I

.field private static final iA:Landroid/view/animation/Interpolator;


# instance fields
.field final Iu:Landroid/support/v4/widget/d$a;

.field private Iv:F

.field private Iw:Z

.field private ke:F

.field private mResources:Landroid/content/res/Resources;

.field private wV:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/d;->iA:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/b/b;

    invoke-direct {v0}, Landroid/support/v4/view/b/b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/d;->Is:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/d;->It:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-static {p1}, Landroid/support/v4/g/l;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/d;->mResources:Landroid/content/res/Resources;

    new-instance v0, Landroid/support/v4/widget/d$a;

    invoke-direct {v0}, Landroid/support/v4/widget/d$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    sget-object v1, Landroid/support/v4/widget/d;->It:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->setColors([I)V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/support/v4/widget/d$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/d$1;-><init>(Landroid/support/v4/widget/d;Landroid/support/v4/widget/d$a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    sget-object v2, Landroid/support/v4/widget/d;->iA:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/support/v4/widget/d$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/d$2;-><init>(Landroid/support/v4/widget/d;Landroid/support/v4/widget/d$a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Landroid/support/v4/widget/d;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/d;->Iv:F

    return p1
.end method

.method private static a(FLandroid/support/v4/widget/d$a;)V
    .locals 9

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    sub-float v0, p0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v4/widget/d$a;->eb()I

    move-result v1

    iget-object v2, p1, Landroid/support/v4/widget/d$a;->IF:[I

    invoke-virtual {p1}, Landroid/support/v4/widget/d$a;->ea()I

    move-result v3

    aget v2, v2, v3

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x18

    sub-int v6, v7, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    sub-int v4, v8, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    or-int/2addr v0, v3

    iput v0, p1, Landroid/support/v4/widget/d$a;->BX:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/widget/d$a;->eb()I

    move-result v0

    iput v0, p1, Landroid/support/v4/widget/d$a;->BX:I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/d;FLandroid/support/v4/widget/d$a;Z)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f4a3d71    # 0.79f

    const v4, 0x3c23d70a    # 0.01f

    const/high16 v1, 0x3f000000    # 0.5f

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->Iw:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroid/support/v4/widget/d;->a(FLandroid/support/v4/widget/d$a;)V

    iget v0, p2, Landroid/support/v4/widget/d$a;->IJ:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p2, Landroid/support/v4/widget/d$a;->IH:F

    iget v2, p2, Landroid/support/v4/widget/d$a;->II:F

    sub-float/2addr v2, v4

    iget v3, p2, Landroid/support/v4/widget/d$a;->IH:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Landroid/support/v4/widget/d$a;->IC:F

    iget v1, p2, Landroid/support/v4/widget/d$a;->II:F

    iput v1, p2, Landroid/support/v4/widget/d$a;->IE:F

    iget v1, p2, Landroid/support/v4/widget/d$a;->IJ:F

    iget v2, p2, Landroid/support/v4/widget/d$a;->IJ:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/support/v4/widget/d$a;->ke:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v0, p1, v6

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    iget v2, p2, Landroid/support/v4/widget/d$a;->IJ:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    div-float v0, p1, v1

    iget v1, p2, Landroid/support/v4/widget/d$a;->IH:F

    sget-object v3, Landroid/support/v4/widget/d;->Is:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    :goto_1
    const v3, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    const/high16 v3, 0x43580000    # 216.0f

    iget v4, p0, Landroid/support/v4/widget/d;->Iv:F

    add-float/2addr v4, p1

    mul-float/2addr v3, v4

    iput v1, p2, Landroid/support/v4/widget/d$a;->IC:F

    iput v0, p2, Landroid/support/v4/widget/d$a;->IE:F

    iput v2, p2, Landroid/support/v4/widget/d$a;->ke:F

    iput v3, p0, Landroid/support/v4/widget/d;->ke:F

    goto :goto_0

    :cond_3
    sub-float v0, p1, v1

    div-float v1, v0, v1

    iget v0, p2, Landroid/support/v4/widget/d$a;->IH:F

    add-float/2addr v0, v5

    sget-object v3, Landroid/support/v4/widget/d;->Is:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v6, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    sub-float v1, v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/widget/d;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/d;->Iw:Z

    return v0
.end method

.method private b(FFFF)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget-object v1, p0, Landroid/support/v4/widget/d;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, p2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/d$a;->setStrokeWidth(F)V

    mul-float v2, p1, v1

    iput v2, v0, Landroid/support/v4/widget/d$a;->IO:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/d$a;->aF(I)V

    mul-float v2, p3, v1

    mul-float/2addr v1, p4

    float-to-int v2, v2

    iput v2, v0, Landroid/support/v4/widget/d$a;->IP:I

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v4/widget/d$a;->IQ:I

    return-void
.end method

.method static synthetic b(FLandroid/support/v4/widget/d$a;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/widget/d;->a(FLandroid/support/v4/widget/d$a;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v4/widget/d;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/d;->Iw:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v4/widget/d;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/d;->Iv:F

    return v0
.end method


# virtual methods
.method public final aE(I)V
    .locals 4

    if-nez p1, :cond_0

    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/d;->b(FFFF)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void

    :cond_0
    const/high16 v0, 0x40f00000    # 7.5f

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/d;->b(FFFF)V

    goto :goto_0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/support/v4/widget/d;->ke:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v6, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget-object v1, v6, Landroid/support/v4/widget/d$a;->Iz:Landroid/graphics/RectF;

    iget v0, v6, Landroid/support/v4/widget/d$a;->IO:F

    iget v3, v6, Landroid/support/v4/widget/d$a;->ra:F

    div-float/2addr v3, v10

    add-float/2addr v0, v3

    iget v3, v6, Landroid/support/v4/widget/d$a;->IO:F

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    iget v3, v6, Landroid/support/v4/widget/d$a;->IP:I

    int-to-float v3, v3

    iget v4, v6, Landroid/support/v4/widget/d$a;->IM:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    iget v4, v6, Landroid/support/v4/widget/d$a;->ra:F

    div-float/2addr v4, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v0, v3

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, v6, Landroid/support/v4/widget/d$a;->IC:F

    iget v2, v6, Landroid/support/v4/widget/d$a;->ke:F

    add-float/2addr v0, v2

    mul-float v2, v0, v7

    iget v0, v6, Landroid/support/v4/widget/d$a;->IE:F

    iget v3, v6, Landroid/support/v4/widget/d$a;->ke:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v7

    sub-float v3, v0, v2

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    iget v4, v6, Landroid/support/v4/widget/d$a;->BX:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    iget v4, v6, Landroid/support/v4/widget/d$a;->IR:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v6, Landroid/support/v4/widget/d$a;->ra:F

    div-float/2addr v0, v10

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v10

    iget-object v8, v6, Landroid/support/v4/widget/d$a;->IB:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v4, v0

    neg-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v4, 0x0

    iget-object v5, v6, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, v6, Landroid/support/v4/widget/d$a;->IK:Z

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v10

    iget v4, v6, Landroid/support/v4/widget/d$a;->IP:I

    int-to-float v4, v4

    iget v5, v6, Landroid/support/v4/widget/d$a;->IM:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    iget-object v5, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    invoke-virtual {v5, v9, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    iget v7, v6, Landroid/support/v4/widget/d$a;->IP:I

    int-to-float v7, v7

    iget v8, v6, Landroid/support/v4/widget/d$a;->IM:F

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    iget v7, v6, Landroid/support/v4/widget/d$a;->IP:I

    int-to-float v7, v7

    iget v8, v6, Landroid/support/v4/widget/d$a;->IM:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, v6, Landroid/support/v4/widget/d$a;->IQ:I

    int-to-float v8, v8

    iget v9, v6, Landroid/support/v4/widget/d$a;->IM:F

    mul-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v0, v7

    sub-float/2addr v0, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v7, v6, Landroid/support/v4/widget/d$a;->ra:F

    div-float/2addr v7, v10

    add-float/2addr v4, v7

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IA:Landroid/graphics/Paint;

    iget v4, v6, Landroid/support/v4/widget/d$a;->BX:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IA:Landroid/graphics/Paint;

    iget v4, v6, Landroid/support/v4/widget/d$a;->IR:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float v0, v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    iget-object v1, v6, Landroid/support/v4/widget/d$a;->IA:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    iget-object v0, v6, Landroid/support/v4/widget/d$a;->IL:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget v0, v0, Landroid/support/v4/widget/d$a;->IR:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final m(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget v1, v0, Landroid/support/v4/widget/d$a;->IM:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/v4/widget/d$a;->IM:F

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method

.method public final n(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/d$a;->IC:F

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iput p1, v0, Landroid/support/v4/widget/d$a;->IE:F

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iput p1, v0, Landroid/support/v4/widget/d$a;->IR:I

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget-object v0, v0, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/d$a;->ec()V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget v0, v0, Landroid/support/v4/widget/d$a;->IE:F

    iget-object v1, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    iget v1, v1, Landroid/support/v4/widget/d$a;->IC:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/d;->Iw:Z

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->aF(I)V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/d$a;->ed()V

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/d;->wV:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/d;->ke:F

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->y(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->aF(I)V

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/d$a;->ed()V

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method

.method public final x(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/d;->Iu:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d$a;->y(Z)V

    invoke-virtual {p0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method
