.class final Landroid/support/design/widget/TabLayout$g;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic oI:Landroid/support/design/widget/TabLayout;

.field private oZ:Landroid/view/View;

.field private pf:Landroid/support/design/widget/TabLayout$e;

.field private pg:Landroid/widget/TextView;

.field private ph:Landroid/widget/ImageView;

.field private pi:Landroid/widget/TextView;

.field private pj:Landroid/widget/ImageView;

.field private pk:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$g;->pk:I

    iget v0, p1, Landroid/support/design/widget/TabLayout;->op:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/design/widget/TabLayout;->op:I

    invoke-static {p2, v0}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v0, p1, Landroid/support/design/widget/TabLayout;->og:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->oh:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->oi:I

    iget v3, p1, Landroid/support/design/widget/TabLayout;->oj:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/r;->c(Landroid/view/View;IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$g;->setGravity(I)V

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$g;->setOrientation(I)V

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$g;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/support/v4/view/p;

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/p;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/p;)V

    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/view/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/p;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$e;->oa:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$e;->kB:Ljava/lang/CharSequence;

    :goto_1
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$e;->oY:Ljava/lang/CharSequence;

    :goto_2
    if-eqz p2, :cond_0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$g;->setVisibility(I)V

    :goto_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    move v5, v0

    :goto_4
    if-eqz p1, :cond_1

    if-eqz v5, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$g;->setVisibility(I)V

    :goto_5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_a

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v6}, Landroid/support/design/widget/TabLayout;->L(I)I

    move-result v2

    :goto_6
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    if-eqz v5, :cond_9

    :goto_7
    invoke-static {p0, v1}, Landroid/support/v7/widget/bq;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v4, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    move v5, v3

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    move-object v1, v4

    goto :goto_7

    :cond_a
    move v2, v3

    goto :goto_6
.end method


# virtual methods
.method final c(Landroid/support/design/widget/TabLayout$e;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->update()V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v2, :cond_0

    if-le v0, v4, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->oq:I

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getResources()Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget v2, v0, Landroid/support/design/widget/TabLayout;->om:F

    iget v0, p0, Landroid/support/design/widget/TabLayout$g;->pk:I

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    move v0, v1

    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;)I

    move-result v6

    cmpl-float v7, v2, v4

    if-nez v7, :cond_3

    if-ltz v6, :cond_6

    if-eq v0, v6, :cond_6

    :cond_3
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget v6, v6, Landroid/support/design/widget/TabLayout;->ow:I

    if-ne v6, v1, :cond_5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    if-ne v5, v1, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    div-float v4, v2, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->oo:F

    goto :goto_0
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$g;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->select()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$g;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$g;->pf:Landroid/support/design/widget/TabLayout$e;

    if-eqz v5, :cond_9

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$e;->oZ:Landroid/view/View;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$g;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v0, 0x1020014

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pi:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pi:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pi:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$g;->pk:I

    :cond_4
    const v0, 0x1020006

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pj:Landroid/widget/ImageView;

    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/design/a$h;->design_layout_tab_icon:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/support/design/widget/TabLayout$g;->addView(Landroid/view/View;I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/design/a$h;->design_layout_tab_text:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$g;->addView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$g;->pk:I

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget v3, v3, Landroid/support/design/widget/TabLayout;->ok:I

    invoke-static {v0, v3}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$g;->oI:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pg:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$g;->ph:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout$g;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_8
    :goto_2
    if-eqz v5, :cond_10

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v3, v4

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$g;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/design/widget/TabLayout$g;->oZ:Landroid/view/View;

    :cond_b
    iput-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pi:Landroid/widget/TextView;

    iput-object v4, p0, Landroid/support/design/widget/TabLayout$g;->pj:Landroid/widget/ImageView;

    goto :goto_1

    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pi:Landroid/widget/TextView;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pj:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$g;->pi:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$g;->pj:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout$g;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_e
    iget-object v0, v5, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v3, v5, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    if-ne v0, v3, :cond_f

    move v0, v1

    :goto_3
    if-eqz v0, :cond_10

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$g;->setSelected(Z)V

    return-void

    :cond_f
    move v0, v2

    goto :goto_3

    :cond_10
    move v0, v2

    goto :goto_4
.end method
