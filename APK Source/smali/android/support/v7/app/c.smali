.class public final Landroid/support/v7/app/c;
.super Landroid/support/v7/app/l;

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/c$a;
    }
.end annotation


# instance fields
.field final My:Landroid/support/v7/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1, p2}, Landroid/support/v7/app/c;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/l;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/support/v7/app/AlertController;

    invoke-virtual {p0}, Landroid/support/v7/app/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroid/support/v7/app/l;Landroid/view/Window;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    return-void
.end method

.method static d(Landroid/content/Context;I)I
    .locals 4

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public final getButton(I)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, v0, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/support/v7/app/l;->onCreate(Landroid/os/Bundle;)V

    iget-object v6, p0, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    iget v0, v6, Landroid/support/v7/app/AlertController;->LH:I

    if-eqz v0, :cond_11

    iget v0, v6, Landroid/support/v7/app/AlertController;->LN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, v6, Landroid/support/v7/app/AlertController;->LH:I

    :goto_0
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ld:Landroid/support/v7/app/l;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/l;->setContentView(I)V

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v1, Landroid/support/v7/a/a$f;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$f;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v1, Landroid/support/v7/a/a$f;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v1, Landroid/support/v7/a/a$f;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v1, Landroid/support/v7/a/a$f;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/support/v7/app/AlertController;->at(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    const/high16 v8, 0x20000

    const/high16 v9, 0x20000

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    if-eqz v1, :cond_15

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v7, Landroid/support/v7/a/a$f;->custom:I

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, v6, Landroid/support/v7/app/AlertController;->Ln:Z

    if-eqz v2, :cond_2

    iget v2, v6, Landroid/support/v7/app/AlertController;->Lj:I

    iget v7, v6, Landroid/support/v7/app/AlertController;->Lk:I

    iget v8, v6, Landroid/support/v7/app/AlertController;->Ll:I

    iget v9, v6, Landroid/support/v7/app/AlertController;->Lm:I

    invoke-virtual {v1, v2, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_2
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/at$a;

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/at$a;->weight:F

    :cond_3
    :goto_3
    sget v1, Landroid/support/v7/a/a$f;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$f;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v7, Landroid/support/v7/a/a$f;->buttonPanel:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v1, v3}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-static {v2, v4}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-static {v7, v5}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->scrollView:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/NestedScrollView;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v1, 0x102000b

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lg:Ljava/lang/CharSequence;

    if-eqz v1, :cond_16

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_4
    const/4 v2, 0x0

    const v1, 0x1020019

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->LO:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lp:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_18

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5
    const v1, 0x102001a

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->LO:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lt:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lv:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1a

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6
    const v1, 0x102001b

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->LO:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lx:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lz:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_7
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v5, Landroid/support/v7/a/a$a;->alertDialogCenterButtons:I

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v4, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1f

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    :cond_5
    :goto_9
    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :goto_a
    if-nez v1, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LD:Landroid/view/View;

    if-eqz v1, :cond_22

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->LD:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->title_template:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    const/4 v0, 0x1

    move v5, v0

    :goto_c
    if-eqz v8, :cond_28

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_28

    const/4 v0, 0x1

    move v4, v0

    :goto_d
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_29

    const/4 v0, 0x1

    move v3, v0

    :goto_e
    if-nez v3, :cond_7

    if-eqz v9, :cond_7

    sget v0, Landroid/support/v7/a/a$f;->textSpacerNoButtons:I

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v4, :cond_2a

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_8

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_8
    const/4 v0, 0x0

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lg:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    if-eqz v1, :cond_a

    :cond_9
    sget v0, Landroid/support/v7/a/a$f;->titleDividerNoCustom:I

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_f
    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    instance-of v0, v0, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v0, :cond_d

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    check-cast v0, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v3, :cond_c

    if-nez v4, :cond_d

    :cond_c
    invoke-virtual {v0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v7

    if-eqz v4, :cond_2b

    invoke-virtual {v0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v1

    :goto_10
    invoke-virtual {v0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v8

    if-eqz v3, :cond_2c

    invoke-virtual {v0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v2

    :goto_11
    invoke-virtual {v0, v7, v1, v8, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setPadding(IIII)V

    :cond_d
    if-nez v5, :cond_f

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    if-eqz v0, :cond_2d

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    move-object v2, v0

    :goto_12
    if-eqz v2, :cond_f

    if-eqz v4, :cond_2e

    const/4 v0, 0x1

    move v1, v0

    :goto_13
    if-eqz v3, :cond_2f

    const/4 v0, 0x2

    :goto_14
    or-int v3, v1, v0

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v1, Landroid/support/v7/a/a$f;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v4, Landroid/support/v7/a/a$f;->scrollIndicatorDown:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_30

    invoke-static {v2, v3}, Landroid/support/v4/view/r;->o(Landroid/view/View;I)V

    if-eqz v1, :cond_e

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    :goto_15
    iget-object v0, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    if-eqz v0, :cond_10

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LE:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_10

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LE:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v6, Landroid/support/v7/app/AlertController;->LF:I

    if-ltz v1, :cond_10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void

    :cond_11
    iget v0, v6, Landroid/support/v7/app/AlertController;->LG:I

    goto/16 :goto_0

    :cond_12
    iget v1, v6, Landroid/support/v7/app/AlertController;->Li:I

    if-eqz v1, :cond_13

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, v6, Landroid/support/v7/app/AlertController;->Li:I

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    :cond_13
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_1

    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_15
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_16
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    if-eqz v1, :cond_17

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v10, -0x1

    invoke-direct {v5, v7, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_17
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    :cond_18
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lp:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, v6, Landroid/support/v7/app/AlertController;->Lf:I

    iget v7, v6, Landroid/support/v7/app/AlertController;->Lf:I

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_19
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x1

    move v2, v1

    goto/16 :goto_5

    :cond_1a
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->Lt:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lv:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1b

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lv:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, v6, Landroid/support/v7/app/AlertController;->Lf:I

    iget v10, v6, Landroid/support/v7/app/AlertController;->Lf:I

    invoke-virtual {v1, v4, v5, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->Lv:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v5, v7, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_6

    :cond_1c
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->Lx:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1d

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, v6, Landroid/support/v7/app/AlertController;->Lf:I

    iget v10, v6, Landroid/support/v7/app/AlertController;->Lf:I

    invoke-virtual {v1, v4, v5, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lo:Landroid/widget/Button;

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v5, v7, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_7

    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_1f
    const/4 v1, 0x2

    if-ne v2, v1, :cond_20

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ls:Landroid/widget/Button;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_9

    :cond_20
    const/4 v1, 0x4

    if-ne v2, v1, :cond_5

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Lw:Landroid/widget/Button;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_9

    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_22
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Ch:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    :goto_16
    if-eqz v1, :cond_26

    iget-boolean v1, v6, Landroid/support/v7/app/AlertController;->LM:Z

    if-eqz v1, :cond_26

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->alertTitle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Landroid/support/v7/app/AlertController;->LC:Landroid/widget/TextView;

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LC:Landroid/widget/TextView;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Ch:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v6, Landroid/support/v7/app/AlertController;->LB:I

    if-eqz v1, :cond_24

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    iget v2, v6, Landroid/support/v7/app/AlertController;->LB:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    :cond_23
    const/4 v1, 0x0

    goto :goto_16

    :cond_24
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->oa:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->oa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_25
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->LC:Landroid/widget/TextView;

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v4, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v7, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_26
    iget-object v1, v6, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    sget v2, Landroid/support/v7/a/a$f;->title_template:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v6, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_b

    :cond_27
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_c

    :cond_28
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_d

    :cond_29
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_e

    :cond_2a
    if-eqz v9, :cond_b

    sget v0, Landroid/support/v7/a/a$f;->textSpacerNoTitle:I

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_2b
    iget v1, v0, Landroid/support/v7/app/AlertController$RecycleListView;->Mw:I

    goto/16 :goto_10

    :cond_2c
    iget v2, v0, Landroid/support/v7/app/AlertController$RecycleListView;->Mx:I

    goto/16 :goto_11

    :cond_2d
    iget-object v0, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    move-object v2, v0

    goto/16 :goto_12

    :cond_2e
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_13

    :cond_2f
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_30
    if-eqz v1, :cond_31

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_31

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_31
    if-eqz v0, :cond_32

    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_32

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    :cond_32
    if-nez v1, :cond_33

    if-eqz v0, :cond_f

    :cond_33
    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lg:Ljava/lang/CharSequence;

    if-eqz v2, :cond_34

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/AlertController$2;

    invoke-direct {v3, v6, v1, v0}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/AlertController$3;

    invoke-direct {v3, v6, v1, v0}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_15

    :cond_34
    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    if-eqz v2, :cond_35

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/AlertController$4;

    invoke-direct {v3, v6, v1, v0}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v2, v6, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/AlertController$5;

    invoke-direct {v3, v6, v1, v0}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_15

    :cond_35
    if-eqz v1, :cond_36

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_36
    if-eqz v0, :cond_f

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_15
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    iget-object v2, v1, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    iget-object v2, v1, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->LA:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/l;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/l;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
