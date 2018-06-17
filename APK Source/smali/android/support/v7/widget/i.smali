.class public final Landroid/support/v7/widget/i;
.super Landroid/widget/Button;

# interfaces
.implements Landroid/support/v4/view/q;
.implements Landroid/support/v4/widget/b;


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/h;

.field private final mTextHelper:Landroid/support/v7/widget/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/bl;->n(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/v7/widget/h;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/h;->a(Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Landroid/support/v7/widget/aa;->d(Landroid/widget/TextView;)Landroid/support/v7/widget/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/aa;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->gl()V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->ge()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->gl()V

    :cond_1
    return-void
.end method

.method public final getAutoSizeMaxTextSize()I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v0, v0, Landroid/support/v7/widget/ac;->Xf:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getAutoSizeMinTextSize()I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v0, v0, Landroid/support/v7/widget/ac;->Xe:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getAutoSizeStepGranularity()I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v0, v0, Landroid/support/v7/widget/ac;->Xd:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget-object v0, v0, Landroid/support/v7/widget/ac;->Xg:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public final getAutoSizeTextType()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v2, :cond_1

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v0, v0, Landroid/support/v7/widget/ac;->Xb:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->gm()V

    :cond_0
    return-void
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gp()V

    :cond_0
    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/aa;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0
.end method

.method public final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/aa;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0
.end method

.method public final setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aa;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->gd()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/h;->bh(I)V

    :cond_0
    return-void
.end method

.method public final setSupportAllCaps(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aa;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/h;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mBackgroundTintHelper:Landroid/support/v7/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/h;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/aa;->j(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/i;->Im:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/i;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/aa;->setTextSize(IF)V

    goto :goto_0
.end method
