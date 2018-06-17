.class Landroid/support/design/widget/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/g$a;,
        Landroid/support/design/widget/g$b;,
        Landroid/support/design/widget/g$d;,
        Landroid/support/design/widget/g$e;,
        Landroid/support/design/widget/g$c;
    }
.end annotation


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final mC:Landroid/view/animation/Interpolator;

.field static final mM:[I


# instance fields
.field ke:F

.field private final lg:Landroid/graphics/Rect;

.field mD:I

.field private final mE:Landroid/support/design/widget/n;

.field mF:Landroid/support/design/widget/k;

.field mG:Landroid/graphics/drawable/Drawable;

.field mH:Landroid/graphics/drawable/Drawable;

.field mI:Landroid/support/design/widget/c;

.field mJ:Landroid/graphics/drawable/Drawable;

.field mK:F

.field mL:F

.field final mN:Landroid/support/design/widget/u;

.field final mO:Landroid/support/design/widget/l;

.field mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Landroid/support/design/widget/a;->iC:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/support/design/widget/g;->mC:Landroid/view/animation/Interpolator;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/g;->PRESSED_ENABLED_STATE_SET:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/g;->mM:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/g;->ENABLED_STATE_SET:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/g;->EMPTY_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/u;Landroid/support/design/widget/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/g;->mD:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/g;->lg:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    iput-object p2, p0, Landroid/support/design/widget/g;->mO:Landroid/support/design/widget/l;

    new-instance v0, Landroid/support/design/widget/n;

    invoke-direct {v0}, Landroid/support/design/widget/n;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    iget-object v0, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    sget-object v1, Landroid/support/design/widget/g;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/g$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/g$b;-><init>(Landroid/support/design/widget/g;)V

    invoke-static {v2}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g$e;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/n;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    sget-object v1, Landroid/support/design/widget/g;->mM:[I

    new-instance v2, Landroid/support/design/widget/g$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/g$b;-><init>(Landroid/support/design/widget/g;)V

    invoke-static {v2}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g$e;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/n;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    sget-object v1, Landroid/support/design/widget/g;->ENABLED_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/g$d;

    invoke-direct {v2, p0}, Landroid/support/design/widget/g$d;-><init>(Landroid/support/design/widget/g;)V

    invoke-static {v2}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g$e;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/n;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    sget-object v1, Landroid/support/design/widget/g;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/support/design/widget/g$a;

    invoke-direct {v2, p0}, Landroid/support/design/widget/g$a;-><init>(Landroid/support/design/widget/g;)V

    invoke-static {v2}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g$e;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/n;->a([ILandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/g;->ke:F

    return-void
.end method

.method private static J(I)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [[I

    new-array v1, v1, [I

    sget-object v2, Landroid/support/design/widget/g;->mM:[I

    aput-object v2, v0, v3

    aput p0, v1, v3

    sget-object v2, Landroid/support/design/widget/g;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v4

    aput p0, v1, v4

    new-array v2, v3, [I

    aput-object v2, v0, v5

    aput v3, v1, v5

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static a(Landroid/support/design/widget/g$e;)Landroid/animation/ValueAnimator;
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Landroid/support/design/widget/g;->mC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method final a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/c;
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/g;->bH()Landroid/support/design/widget/c;

    move-result-object v1

    sget v2, Landroid/support/design/a$c;->design_fab_stroke_top_outer_color:I

    invoke-static {v0, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/a$c;->design_fab_stroke_top_inner_color:I

    invoke-static {v0, v3}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/a$c;->design_fab_stroke_end_inner_color:I

    invoke-static {v0, v4}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/a$c;->design_fab_stroke_end_outer_color:I

    invoke-static {v0, v5}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    iput v2, v1, Landroid/support/design/widget/c;->jX:I

    iput v3, v1, Landroid/support/design/widget/c;->jY:I

    iput v4, v1, Landroid/support/design/widget/c;->jZ:I

    iput v0, v1, Landroid/support/design/widget/c;->ka:I

    int-to-float v0, p1

    iget v2, v1, Landroid/support/design/widget/c;->jW:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    iput v0, v1, Landroid/support/design/widget/c;->jW:F

    iget-object v2, v1, Landroid/support/design/widget/c;->jT:Landroid/graphics/Paint;

    const v3, 0x3faaa993    # 1.3333f

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/design/widget/c;->kd:Z

    invoke-virtual {v1}, Landroid/support/design/widget/c;->invalidateSelf()V

    :cond_0
    invoke-virtual {v1, p2}, Landroid/support/design/widget/c;->a(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/g;->bI()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/g;->bI()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->mH:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/g;->mH:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/design/widget/g;->J(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-lez p4, :cond_1

    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/g;->a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/g;->mH:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    :goto_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/design/widget/g;->mJ:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/support/design/widget/k;

    iget-object v1, p0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/g;->mJ:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/widget/g;->mO:Landroid/support/design/widget/l;

    invoke-interface {v3}, Landroid/support/design/widget/l;->getRadius()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/g;->mK:F

    iget v5, p0, Landroid/support/design/widget/g;->mK:F

    iget v6, p0, Landroid/support/design/widget/g;->mL:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/k;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iget-object v0, p0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iput-boolean v7, v0, Landroid/support/design/widget/k;->ny:Z

    invoke-virtual {v0}, Landroid/support/design/widget/k;->invalidateSelf()V

    iget-object v0, p0, Landroid/support/design/widget/g;->mO:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    invoke-interface {v0, v1}, Landroid/support/design/widget/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/g;->mH:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method a([I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    iget-object v0, v3, Landroid/support/design/widget/n;->nI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Landroid/support/design/widget/n;->nI:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n$a;

    iget-object v5, v0, Landroid/support/design/widget/n$a;->nN:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    iget-object v2, v3, Landroid/support/design/widget/n;->nJ:Landroid/support/design/widget/n$a;

    if-eq v0, v2, :cond_1

    iget-object v2, v3, Landroid/support/design/widget/n;->nJ:Landroid/support/design/widget/n$a;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, v3, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    :cond_0
    iput-object v0, v3, Landroid/support/design/widget/n;->nJ:Landroid/support/design/widget/n$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/design/widget/n$a;->nO:Landroid/animation/ValueAnimator;

    iput-object v0, v3, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    iget-object v0, v3, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method b(FF)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iget v1, p0, Landroid/support/design/widget/g;->mL:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/k;->c(FF)V

    invoke-virtual {p0}, Landroid/support/design/widget/g;->bF()V

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/k;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method bD()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/g;->mE:Landroid/support/design/widget/n;

    iget-object v1, v0, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method bE()V
    .locals 0

    return-void
.end method

.method final bF()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/g;->lg:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/g;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/g;->c(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/design/widget/g;->mO:Landroid/support/design/widget/l;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/l;->c(IIII)V

    return-void
.end method

.method bG()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method bH()Landroid/support/design/widget/c;
    .locals 1

    new-instance v0, Landroid/support/design/widget/c;

    invoke-direct {v0}, Landroid/support/design/widget/c;-><init>()V

    return-object v0
.end method

.method final bI()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/g;->bJ()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method bJ()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method final bK()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-static {v0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method getElevation()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/g;->mK:F

    return v0
.end method

.method final setElevation(F)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/g;->mK:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/g;->mK:F

    iget v0, p0, Landroid/support/design/widget/g;->mL:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/g;->b(FF)V

    :cond_0
    return-void
.end method

.method setRippleColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/g;->mH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->mH:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/g;->J(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
