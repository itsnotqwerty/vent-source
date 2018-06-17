.class final Landroid/support/design/widget/h;
.super Landroid/support/design/widget/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/h$a;
    }
.end annotation


# instance fields
.field private mX:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/u;Landroid/support/design/widget/l;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/g;-><init>(Landroid/support/design/widget/u;Landroid/support/design/widget/l;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/h;->bI()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->mG:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->mG:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->mG:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    if-lez p4, :cond_1

    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/h;->a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->mI:Landroid/support/design/widget/c;

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/h;->mI:Landroid/support/design/widget/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/widget/h;->mG:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/design/widget/h;->mJ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iput-object v4, p0, Landroid/support/design/widget/h;->mI:Landroid/support/design/widget/c;

    iget-object v0, p0, Landroid/support/design/widget/h;->mG:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method final a([I)V
    .locals 0

    return-void
.end method

.method final b(FF)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/u;->setElevation(F)V

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/u;->setTranslationZ(F)V

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    invoke-interface {v0}, Landroid/support/design/widget/l;->bC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/h;->bF()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setTranslationZ(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setElevation(F)V

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setTranslationZ(F)V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const-string v3, "elevation"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/support/design/widget/h;->mC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/support/design/widget/h;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const-string v3, "elevation"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/support/design/widget/h;->mC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/support/design/widget/h;->mM:[I

    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const-string v4, "elevation"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-gt v3, v4, :cond_5

    iget-object v3, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v7}, Landroid/support/design/widget/u;->getTranslationZ()F

    move-result v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object v0, Landroid/support/design/widget/h;->mC:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Landroid/support/design/widget/h;->ENABLED_STATE_SET:[I

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    const-string v3, "elevation"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/support/design/widget/h;->mC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/support/design/widget/h;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/u;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_0
.end method

.method final b(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    invoke-interface {v0}, Landroid/support/design/widget/l;->bC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    invoke-interface {v0}, Landroid/support/design/widget/l;->getRadius()F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getElevation()F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/h;->mL:F

    add-float/2addr v1, v2

    invoke-static {v1, v0, v4}, Landroid/support/design/widget/k;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v0, v4}, Landroid/support/design/widget/k;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method final bD()V
    .locals 0

    return-void
.end method

.method final bE()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/widget/h;->bF()V

    return-void
.end method

.method final bG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final bH()Landroid/support/design/widget/c;
    .locals 1

    new-instance v0, Landroid/support/design/widget/d;

    invoke-direct {v0}, Landroid/support/design/widget/d;-><init>()V

    return-object v0
.end method

.method final bJ()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/support/design/widget/h$a;

    invoke-direct {v0}, Landroid/support/design/widget/h$a;-><init>()V

    return-object v0
.end method

.method final c(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    invoke-interface {v0}, Landroid/support/design/widget/l;->bC()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/h;->mX:Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/h;->mX:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->mO:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final getElevation()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getElevation()F

    move-result v0

    return v0
.end method

.method final setRippleColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->mH:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/g;->setRippleColor(I)V

    goto :goto_0
.end method
