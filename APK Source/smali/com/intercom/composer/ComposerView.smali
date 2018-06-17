.class public Lcom/intercom/composer/ComposerView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/intercom/composer/a;
.implements Lcom/intercom/composer/b/b/b;
.implements Lcom/intercom/composer/b/b/f;
.implements Lcom/intercom/composer/b/c/a/a;
.implements Lcom/intercom/composer/d/a;


# instance fields
.field bkK:Landroid/support/v7/widget/RecyclerView;

.field bkL:Landroid/widget/LinearLayout;

.field bkM:Landroid/support/v4/view/ViewPager;

.field bkN:Landroid/widget/ImageView;

.field bkO:Landroid/view/View;

.field bkP:Landroid/view/View;

.field bkQ:Landroid/view/View;

.field public bkR:Lcom/intercom/composer/b/b/e;

.field public bkS:Lcom/intercom/composer/c/a;

.field bkT:Lcom/intercom/composer/a/b;

.field private final bkU:Lcom/intercom/composer/c/d;

.field private bkV:Lcom/intercom/composer/b/c/a/a;

.field bkW:Lcom/intercom/composer/f;

.field bkX:Lcom/intercom/composer/a/e;

.field bkY:I

.field final bkZ:Lcom/intercom/composer/d/b;

.field public final inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/intercom/composer/ComposerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/intercom/composer/ComposerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    sget v0, Lcom/intercom/composer/a/a;->ble:I

    iput v0, p0, Lcom/intercom/composer/ComposerView;->bkY:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->setOrientation(I)V

    sget v0, Lcom/intercom/composer/g$f;->intercom_composer_view_layout:I

    invoke-static {p1, v0, p0}, Lcom/intercom/composer/ComposerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/intercom/composer/g$e;->composer_upper_border:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkP:Landroid/view/View;

    sget v0, Lcom/intercom/composer/g$e;->composer_lower_border:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkQ:Landroid/view/View;

    sget v0, Lcom/intercom/composer/g$e;->composer_edit_text_layout:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    sget v0, Lcom/intercom/composer/g$e;->composer_input_icons_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkK:Landroid/support/v7/widget/RecyclerView;

    sget v0, Lcom/intercom/composer/g$e;->composer_view_pager:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkM:Landroid/support/v4/view/ViewPager;

    sget v0, Lcom/intercom/composer/g$e;->send_button:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    sget v0, Lcom/intercom/composer/g$e;->send_button_fading_background:I

    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkO:Landroid/view/View;

    new-instance v0, Lcom/intercom/composer/c/d;

    invoke-direct {v0, p1}, Lcom/intercom/composer/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkU:Lcom/intercom/composer/c/d;

    new-instance v1, Lcom/intercom/composer/c/a;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/intercom/composer/ComposerView;->bkU:Lcom/intercom/composer/c/d;

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/intercom/composer/ComposerView;->bkM:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/intercom/composer/c/a;-><init>(Landroid/app/Activity;Lcom/intercom/composer/c/d;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/intercom/composer/ComposerView;->bkS:Lcom/intercom/composer/c/a;

    new-instance v0, Lcom/intercom/composer/a/b;

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/intercom/composer/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkT:Lcom/intercom/composer/a/b;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkK:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkK:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/intercom/composer/b/b/c;

    invoke-direct {v1, p1}, Lcom/intercom/composer/b/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    new-instance v0, Lcom/intercom/composer/d/b;

    invoke-direct {v0, p0}, Lcom/intercom/composer/d/b;-><init>(Lcom/intercom/composer/d/a;)V

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkZ:Lcom/intercom/composer/d/b;

    return-void
.end method

.method private vU()Z
    .locals 2

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    instance-of v0, v0, Lcom/intercom/composer/b/c/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/intercom/composer/b/b;IZZ)V
    .locals 11

    const/16 v6, 0x20

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/intercom/composer/b/c/b;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/intercom/composer/b/c/b;

    invoke-virtual {v0}, Lcom/intercom/composer/b/c/b;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/intercom/composer/b/c/b;->getOptions()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v5, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    new-instance v5, Lcom/intercom/composer/b/c/a/b;

    invoke-direct {v5, p0, v3}, Lcom/intercom/composer/b/c/a/b;-><init>(Lcom/intercom/composer/b/c/a/a;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkZ:Lcom/intercom/composer/d/b;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/intercom/composer/ComposerView;->aI(Z)V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/c/b/b;

    invoke-virtual {p0}, Lcom/intercom/composer/ComposerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/intercom/composer/g$c;->intercom_composer_editable_text_input_option_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/intercom/composer/ComposerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/intercom/composer/g$c;->intercom_composer_editable_text_input_option_padding_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/intercom/composer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v8, v0, Lcom/intercom/composer/b/c/b/b;->blL:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v7, v5, v5, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v5, Lcom/intercom/composer/b/c/b/a;

    invoke-direct {v5, v0}, Lcom/intercom/composer/b/c/b/a;-><init>(Lcom/intercom/composer/b/c/b/b;)V

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkT:Lcom/intercom/composer/a/b;

    iget v4, v0, Lcom/intercom/composer/a/b;->blj:I

    sget v5, Lcom/intercom/composer/a/a;->bla:I

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget v4, v0, Lcom/intercom/composer/a/b;->blj:I

    sget v5, Lcom/intercom/composer/a/a;->blc:I

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Lcom/intercom/composer/a/b;->blg:Landroid/view/View;

    const-string v5, "layout_marginBottom"

    new-array v6, v9, [F

    iget-object v7, v0, Lcom/intercom/composer/a/b;->blg:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v2

    aput v10, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    iget-object v6, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    if-eqz p4, :cond_6

    const-wide/16 v4, 0x15e

    :goto_2
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/support/v4/view/b/b;

    invoke-direct {v5}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    iget-object v5, v0, Lcom/intercom/composer/a/b;->blm:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    iget-object v5, v0, Lcom/intercom/composer/a/b;->blk:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/intercom/composer/g$a;->intercom_composer_keyboard_takes_full_screen_in_landscape:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkU:Lcom/intercom/composer/c/d;

    invoke-virtual {v0}, Lcom/intercom/composer/c/d;->getOrientation()I

    move-result v0

    if-ne v0, v9, :cond_5

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkS:Lcom/intercom/composer/c/a;

    invoke-virtual {v0}, Lcom/intercom/composer/c/a;->vX()Z

    :cond_5
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    invoke-virtual {p0, v1}, Lcom/intercom/composer/ComposerView;->aI(Z)V

    :goto_4
    invoke-virtual {p1}, Lcom/intercom/composer/b/b;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/intercom/composer/b/b;->getBorderColor()I

    move-result v1

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkK:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkO:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkP:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkQ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkM:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2, v2}, Landroid/support/v4/view/ViewPager;->d(IZ)V

    return-void

    :cond_6
    const-wide/16 v4, 0x0

    goto/16 :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkS:Lcom/intercom/composer/c/a;

    iget-object v3, v0, Lcom/intercom/composer/c/a;->bkU:Lcom/intercom/composer/c/d;

    invoke-virtual {v3}, Lcom/intercom/composer/c/d;->getOrientation()I

    move-result v3

    iget-object v4, v0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    invoke-virtual {v4}, Lcom/intercom/composer/c/b;->vZ()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, v0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    invoke-virtual {v5, v3}, Lcom/intercom/composer/c/b;->dk(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    iget-object v3, v0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v3, v0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    invoke-virtual {v3}, Lcom/intercom/composer/c/b;->vZ()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    iget-object v0, v0, Lcom/intercom/composer/c/a;->blg:Landroid/view/View;

    iget-object v3, v3, Lcom/intercom/composer/c/b;->blQ:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkT:Lcom/intercom/composer/a/b;

    iget v3, v0, Lcom/intercom/composer/a/b;->blj:I

    sget v4, Lcom/intercom/composer/a/a;->blb:I

    if-ne v3, v4, :cond_a

    iget-object v3, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_a
    iget v3, v0, Lcom/intercom/composer/a/b;->blj:I

    sget v4, Lcom/intercom/composer/a/a;->bld:I

    if-ne v3, v4, :cond_b

    iget-object v3, v0, Lcom/intercom/composer/a/b;->blg:Landroid/view/View;

    const-string v4, "layout_marginBottom"

    new-array v5, v9, [F

    aput v10, v5, v2

    iget-object v6, v0, Lcom/intercom/composer/a/b;->blg:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/support/v4/view/b/b;

    invoke-direct {v3}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    iget-object v3, v0, Lcom/intercom/composer/a/b;->blm:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    iget-object v3, v0, Lcom/intercom/composer/a/b;->bll:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/intercom/composer/a/b;->bli:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_b
    invoke-virtual {p0, v2}, Lcom/intercom/composer/ComposerView;->aI(Z)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/intercom/composer/c/a;->vW()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, v0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    invoke-virtual {v5, v3}, Lcom/intercom/composer/c/b;->dk(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v0, Lcom/intercom/composer/c/a;->blO:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    iget-object v0, v0, Lcom/intercom/composer/c/a;->blN:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_5
.end method

.method public final a(Lcom/intercom/composer/b/b;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->bkW:Lcom/intercom/composer/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->bkW:Lcom/intercom/composer/f;

    invoke-interface {v1, p1}, Lcom/intercom/composer/f;->onInputSelected(Lcom/intercom/composer/b/b;)V

    :cond_0
    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    if-ne p1, v2, :cond_4

    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->blH:Landroid/support/v4/app/n;

    invoke-virtual {p1, v2}, Lcom/intercom/composer/b/b;->findFragment(Landroid/support/v4/app/n;)Lcom/intercom/composer/b/c;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/intercom/composer/b/c;->onInputReselected()V

    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    if-eq p1, v2, :cond_1

    iput-object p1, v1, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    invoke-virtual {v1}, Lcom/intercom/composer/b/b/e;->notifyDataSetChanged()V

    iget-object v0, v1, Lcom/intercom/composer/b/b/e;->blD:Lcom/intercom/composer/b/b/f;

    iget-object v1, v1, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/intercom/composer/b/b/f;->a(Lcom/intercom/composer/b/b;IZZ)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    iget-object v3, v1, Lcom/intercom/composer/b/b/e;->blH:Landroid/support/v4/app/n;

    invoke-virtual {v2, v3}, Lcom/intercom/composer/b/b;->findFragment(Landroid/support/v4/app/n;)Lcom/intercom/composer/b/c;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/intercom/composer/b/c;->onInputDeselected()V

    :cond_5
    iget-object v2, v1, Lcom/intercom/composer/b/b/e;->blH:Landroid/support/v4/app/n;

    invoke-virtual {p1, v2}, Lcom/intercom/composer/b/b;->findFragment(Landroid/support/v4/app/n;)Lcom/intercom/composer/b/c;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/intercom/composer/b/c;->onInputSelected()V

    goto :goto_1
.end method

.method public final aI(Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkX:Lcom/intercom/composer/a/e;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/intercom/composer/ComposerView;->bkX:Lcom/intercom/composer/a/e;

    iget v0, p0, Lcom/intercom/composer/ComposerView;->bkY:I

    if-eqz p1, :cond_3

    sget v3, Lcom/intercom/composer/a/a;->bla:I

    if-eq v0, v3, :cond_0

    sget v3, Lcom/intercom/composer/a/a;->blc:I

    if-eq v0, v3, :cond_0

    sget v3, Lcom/intercom/composer/a/a;->ble:I

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    iget-object v5, v4, Lcom/intercom/composer/a/e;->background:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v1, [F

    aput v3, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, v4, Lcom/intercom/composer/a/e;->blu:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v2

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/intercom/composer/a/e;->blr:Landroid/animation/ObjectAnimator;

    :goto_2
    aput-object v0, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    iget-object v0, v4, Lcom/intercom/composer/a/e;->blp:Lcom/intercom/composer/a/g;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v4, Lcom/intercom/composer/a/e;->blt:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_2

    sget v3, Lcom/intercom/composer/a/a;->blb:I

    if-eq v0, v3, :cond_4

    sget v3, Lcom/intercom/composer/a/a;->bld:I

    if-eq v0, v3, :cond_4

    sget v3, Lcom/intercom/composer/a/a;->ble:I

    if-ne v0, v3, :cond_2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, v4, Lcom/intercom/composer/a/e;->bls:Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, v4, Lcom/intercom/composer/a/e;->blq:Lcom/intercom/composer/a/d;

    goto :goto_3
.end method

.method public final di(I)V
    .locals 0

    iput p1, p0, Lcom/intercom/composer/ComposerView;->bkY:I

    return-void
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedInput()Lcom/intercom/composer/b/b;
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    iget-object v0, v0, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    return-object v0
.end method

.method public getTextInputHeight()I
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public final q(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkV:Lcom/intercom/composer/b/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkV:Lcom/intercom/composer/b/c/a/a;

    invoke-interface {v0, p1}, Lcom/intercom/composer/b/c/a/a;->q(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setComposerPagerAdapter(Lcom/intercom/composer/pager/a;)V
    .locals 6

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkM:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkM:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    new-instance v0, Lcom/intercom/composer/a/g;

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    iget-object v4, p0, Lcom/intercom/composer/ComposerView;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/intercom/composer/a/g;-><init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/LinearLayoutManager;Lcom/intercom/composer/a;)V

    new-instance v1, Lcom/intercom/composer/a/d;

    iget-object v2, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/intercom/composer/a/d;-><init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Lcom/intercom/composer/a;)V

    new-instance v2, Lcom/intercom/composer/a/e;

    iget-object v3, p0, Lcom/intercom/composer/ComposerView;->bkO:Landroid/view/View;

    iget-object v4, p0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/intercom/composer/a/e;-><init>(Landroid/view/View;Landroid/widget/ImageView;Lcom/intercom/composer/a/g;Lcom/intercom/composer/a/d;)V

    iput-object v2, p0, Lcom/intercom/composer/ComposerView;->bkX:Lcom/intercom/composer/a/e;

    return-void
.end method

.method public setEditTextLayoutAnimationListener(Lcom/intercom/composer/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkT:Lcom/intercom/composer/a/b;

    iput-object p1, v0, Lcom/intercom/composer/a/b;->blh:Lcom/intercom/composer/a/c;

    return-void
.end method

.method public setFragmentManager(Landroid/support/v4/app/n;)V
    .locals 6

    new-instance v0, Lcom/intercom/composer/b/b/e;

    invoke-virtual {p0}, Lcom/intercom/composer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/intercom/composer/b/b/e;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/intercom/composer/b/b/f;Lcom/intercom/composer/b/b/b;Landroid/support/v4/app/n;)V

    iput-object v0, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkK:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method public setInputSelectedListener(Lcom/intercom/composer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/composer/ComposerView;->bkW:Lcom/intercom/composer/f;

    return-void
.end method

.method public setInputs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/intercom/composer/b/b;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment manager should be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/intercom/composer/ComposerView;->vU()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkO:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkR:Lcom/intercom/composer/b/b/e;

    invoke-virtual {v0}, Lcom/intercom/composer/b/b/e;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkO:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnSendButtonClickListener(Lcom/intercom/composer/b/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/composer/ComposerView;->bkV:Lcom/intercom/composer/b/c/a/a;

    return-void
.end method

.method public setSendButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final z(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/intercom/composer/ComposerView;->inputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    invoke-virtual {p0, v0, v2, v2}, Lcom/intercom/composer/ComposerView;->a(Lcom/intercom/composer/b/b;ZZ)Z

    :cond_0
    return-void
.end method
