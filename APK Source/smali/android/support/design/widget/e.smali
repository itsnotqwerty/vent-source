.class final Landroid/support/design/widget/e;
.super Ljava/lang/Object;


# static fields
.field private static final kf:Z

.field private static final kg:Landroid/graphics/Paint;


# instance fields
.field private hm:Z

.field private kA:Landroid/graphics/Typeface;

.field kB:Ljava/lang/CharSequence;

.field private kC:Ljava/lang/CharSequence;

.field private kD:Z

.field private kE:Landroid/graphics/Bitmap;

.field private kF:Landroid/graphics/Paint;

.field private kG:F

.field private kH:F

.field private kI:F

.field private kJ:F

.field private kK:[I

.field private kL:Z

.field private final kM:Landroid/text/TextPaint;

.field kN:Landroid/view/animation/Interpolator;

.field private kO:Landroid/view/animation/Interpolator;

.field private kP:F

.field private kQ:F

.field private kR:F

.field private kS:I

.field private kT:F

.field private kU:F

.field private kV:F

.field private kW:I

.field private kh:Z

.field ki:F

.field private final kj:Landroid/graphics/Rect;

.field private final kk:Landroid/graphics/Rect;

.field private final kl:Landroid/graphics/RectF;

.field km:I

.field kn:I

.field ko:F

.field kp:F

.field private kq:Landroid/content/res/ColorStateList;

.field kr:Landroid/content/res/ColorStateList;

.field private ks:F

.field private kt:F

.field private ku:F

.field private kv:F

.field private kw:F

.field private kx:F

.field ky:Landroid/graphics/Typeface;

.field kz:Landroid/graphics/Typeface;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/e;->kf:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/e;->kg:Landroid/graphics/Paint;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/design/widget/e;->km:I

    iput v1, p0, Landroid/support/design/widget/e;->kn:I

    iput v0, p0, Landroid/support/design/widget/e;->ko:F

    iput v0, p0, Landroid/support/design/widget/e;->kp:F

    iput-object p1, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/e;->kl:Landroid/graphics/RectF;

    return-void
.end method

.method private D(I)Landroid/graphics/Typeface;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10103ac

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private static a(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private bp()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/e;->kh:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private br()V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/e;->ki:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->c(F)V

    return-void
.end method

.method private bs()I
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/e;->kK:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/e;->kK:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method private bu()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/design/widget/e;->kl:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kl:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/e;->ks:F

    iget v2, p0, Landroid/support/design/widget/e;->kt:F

    iget-object v3, p0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kl:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kl:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/support/design/widget/e;->ku:F

    iget v1, p0, Landroid/support/design/widget/e;->kv:F

    iget-object v2, p0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->kw:F

    iget v0, p0, Landroid/support/design/widget/e;->ks:F

    iget v1, p0, Landroid/support/design/widget/e;->kt:F

    iget-object v2, p0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->kx:F

    iget v0, p0, Landroid/support/design/widget/e;->ko:F

    iget v1, p0, Landroid/support/design/widget/e;->kp:F

    iget-object v2, p0, Landroid/support/design/widget/e;->kO:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->d(F)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget-object v0, p0, Landroid/support/design/widget/e;->kK:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/design/widget/e;->kK:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/e;->bs()I

    move-result v2

    invoke-static {v0, v2, p1}, Landroid/support/design/widget/e;->b(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/e;->kT:F

    iget v2, p0, Landroid/support/design/widget/e;->kP:F

    invoke-static {v1, v2, p1, v5}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/e;->kU:F

    iget v3, p0, Landroid/support/design/widget/e;->kQ:F

    invoke-static {v2, v3, p1, v5}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/e;->kV:F

    iget v4, p0, Landroid/support/design/widget/e;->kR:F

    invoke-static {v3, v4, p1, v5}, Landroid/support/design/widget/e;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/e;->kW:I

    iget v5, p0, Landroid/support/design/widget/e;->kS:I

    invoke-static {v4, v5, p1}, Landroid/support/design/widget/e;->b(IIF)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/support/design/widget/e;->bs()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1
.end method

.method private d(F)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/support/design/widget/e;->e(F)V

    sget-boolean v0, Landroid/support/design/widget/e;->kf:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/e;->kI:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/e;->kD:Z

    iget-boolean v0, p0, Landroid/support/design/widget/e;->kD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Landroid/support/design/widget/e;->c(F)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->kG:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e;->kH:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/e;->kH:F

    iget v3, p0, Landroid/support/design/widget/e;->kG:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-lez v0, :cond_0

    if-lez v5, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kF:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/e;->kF:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method private e(F)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/design/widget/e;->kB:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Landroid/support/design/widget/e;->kp:F

    invoke-static {p1, v0}, Landroid/support/design/widget/e;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v3, p0, Landroid/support/design/widget/e;->kp:F

    iput v8, p0, Landroid/support/design/widget/e;->kI:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kA:Landroid/graphics/Typeface;

    iget-object v5, p0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    invoke-static {v0, v5}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/widget/e;->kA:Landroid/graphics/Typeface;

    move v0, v1

    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    iget v5, p0, Landroid/support/design/widget/e;->kJ:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/support/design/widget/e;->kL:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_8

    :cond_2
    move v0, v1

    :goto_2
    iput v3, p0, Landroid/support/design/widget/e;->kJ:F

    iput-boolean v2, p0, Landroid/support/design/widget/e;->kL:Z

    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/e;->kJ:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/widget/e;->kA:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget v0, p0, Landroid/support/design/widget/e;->kI:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kB:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_a

    :goto_4
    if-eqz v1, :cond_b

    sget-object v0, Landroid/support/v4/f/c;->Ea:Landroid/support/v4/f/b;

    :goto_5
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/support/v4/f/b;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/e;->hm:Z

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Landroid/support/design/widget/e;->ko:F

    iget-object v0, p0, Landroid/support/design/widget/e;->kA:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    invoke-static {v0, v6}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/widget/e;->kA:Landroid/graphics/Typeface;

    move v0, v1

    :goto_6
    iget v6, p0, Landroid/support/design/widget/e;->ko:F

    invoke-static {p1, v6}, Landroid/support/design/widget/e;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_6

    iput v8, p0, Landroid/support/design/widget/e;->kI:F

    :goto_7
    iget v6, p0, Landroid/support/design/widget/e;->kp:F

    iget v7, p0, Landroid/support/design/widget/e;->ko:F

    div-float/2addr v6, v7

    mul-float v7, v5, v6

    cmpl-float v7, v7, v4

    if-lez v7, :cond_7

    div-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto/16 :goto_1

    :cond_6
    iget v6, p0, Landroid/support/design/widget/e;->ko:F

    div-float v6, p1, v6

    iput v6, p0, Landroid/support/design/widget/e;->kI:F

    goto :goto_7

    :cond_7
    move v4, v5

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    sget-object v0, Landroid/support/v4/f/c;->DZ:Landroid/support/v4/f/b;

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method final A(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/e;->kn:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/e;->kn:I

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method

.method final B(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/bo;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/e;->kp:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/e;->kp:F

    :cond_1
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kS:I

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kQ:F

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kR:F

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kP:F

    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/support/design/widget/e;->D(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    return-void
.end method

.method final C(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/bo;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/e;->ko:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/e;->ko:F

    :cond_1
    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kW:I

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kU:F

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kV:F

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/e;->kT:F

    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/support/design/widget/e;->D(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    return-void
.end method

.method final a(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/e;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/e;->kL:Z

    invoke-direct {p0}, Landroid/support/design/widget/e;->bp()V

    :cond_0
    return-void
.end method

.method final a(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    return-void
.end method

.method final a(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/e;->kO:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    return-void
.end method

.method final b(F)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    move p1, v0

    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/design/widget/e;->ki:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/support/design/widget/e;->ki:F

    invoke-direct {p0}, Landroid/support/design/widget/e;->br()V

    :cond_1
    return-void

    :cond_2
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method final b(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/e;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/e;->kL:Z

    invoke-direct {p0}, Landroid/support/design/widget/e;->bp()V

    :cond_0
    return-void
.end method

.method final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method

.method final bq()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public final bt()V
    .locals 10

    const v9, 0x800007

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget v5, p0, Landroid/support/design/widget/e;->kJ:F

    iget v0, p0, Landroid/support/design/widget/e;->kp:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->e(F)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    :goto_0
    iget v6, p0, Landroid/support/design/widget/e;->kn:I

    iget-boolean v2, p0, Landroid/support/design/widget/e;->hm:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v6, v2}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v6, v2, 0x70

    sparse-switch v6, :sswitch_data_0

    iget-object v6, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    iget-object v7, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/e;->kt:F

    :goto_2
    and-int/2addr v2, v9

    sparse-switch v2, :sswitch_data_1

    iget-object v0, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/e;->kv:F

    :goto_3
    iget v0, p0, Landroid/support/design/widget/e;->ko:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/e;->e(F)V

    iget-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    :cond_0
    iget v0, p0, Landroid/support/design/widget/e;->km:I

    iget-boolean v2, p0, Landroid/support/design/widget/e;->hm:Z

    if-eqz v2, :cond_4

    :goto_4
    invoke-static {v0, v3}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_2

    iget-object v2, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    iget-object v3, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/e;->ks:F

    :goto_5
    and-int/2addr v0, v9

    sparse-switch v0, :sswitch_data_3

    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/e;->ku:F

    :goto_6
    invoke-direct {p0}, Landroid/support/design/widget/e;->bu()V

    invoke-direct {p0, v5}, Landroid/support/design/widget/e;->d(F)V

    invoke-direct {p0}, Landroid/support/design/widget/e;->br()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto/16 :goto_1

    :sswitch_0
    iget-object v6, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/e;->kt:F

    goto :goto_2

    :sswitch_1
    iget-object v6, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/e;->kt:F

    goto/16 :goto_2

    :sswitch_2
    iget-object v2, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v8

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/e;->kv:F

    goto/16 :goto_3

    :sswitch_3
    iget-object v2, p0, Landroid/support/design/widget/e;->kk:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/e;->kv:F

    goto/16 :goto_3

    :cond_4
    move v3, v4

    goto :goto_4

    :sswitch_4
    iget-object v2, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/e;->ks:F

    goto :goto_5

    :sswitch_5
    iget-object v2, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/e;->ks:F

    goto :goto_5

    :sswitch_6
    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/e;->ku:F

    goto :goto_6

    :sswitch_7
    iget-object v0, p0, Landroid/support/design/widget/e;->kj:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/e;->ku:F

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method final c(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/e;->kh:Z

    if-eqz v0, :cond_2

    iget v4, p0, Landroid/support/design/widget/e;->kw:F

    iget v5, p0, Landroid/support/design/widget/e;->kx:F

    iget-boolean v0, p0, Landroid/support/design/widget/e;->kD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    iget v0, p0, Landroid/support/design/widget/e;->kG:F

    iget v3, p0, Landroid/support/design/widget/e;->kI:F

    mul-float/2addr v0, v3

    :goto_1
    if-eqz v1, :cond_0

    add-float/2addr v5, v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/e;->kI:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/e;->kI:F

    iget v3, p0, Landroid/support/design/widget/e;->kI:F

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/e;->kE:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/e;->kF:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/e;->kM:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method final setState([I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/e;->kK:[I

    iget-object v2, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/e;->kq:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e;->kB:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/e;->kB:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/e;->kC:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/design/widget/e;->bu()V

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    :cond_1
    return-void
.end method

.method final z(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/e;->km:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/e;->km:I

    invoke-virtual {p0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method
