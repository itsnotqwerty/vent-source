.class public final Landroid/support/v7/widget/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ak;


# instance fields
.field Ch:Ljava/lang/CharSequence;

.field private Ci:Ljava/lang/CharSequence;

.field On:Landroid/view/Window$Callback;

.field private Tf:Landroid/support/v7/widget/d;

.field private ajZ:I

.field private aka:Landroid/view/View;

.field private akb:Landroid/graphics/drawable/Drawable;

.field private akc:Landroid/graphics/drawable/Drawable;

.field private akd:Z

.field private ake:Ljava/lang/CharSequence;

.field akf:Z

.field private akg:I

.field private akh:I

.field private aki:Landroid/graphics/drawable/Drawable;

.field kZ:Landroid/support/v7/widget/Toolbar;

.field private oZ:Landroid/view/View;

.field private oa:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$h;->abc_action_bar_up_description:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/bp;-><init>(Landroid/support/v7/widget/Toolbar;ZI)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZI)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/v7/widget/bp;->akg:I

    iput v1, p0, Landroid/support/v7/widget/bp;->akh:I

    iput-object p1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bp;->Ch:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bp;->Ci:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->Ch:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/bp;->akd:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bp;->akc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/a/a$j;->ActionBar:[I

    sget v4, Landroid/support/v7/a/a$a;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v3

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bp;->aki:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_10

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_title:I

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_subtitle:I

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v0, p0, Landroid/support/v7/widget/bp;->Ci:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_logo:I

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bp;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_icon:I

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bp;->akc:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bp;->aki:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bp;->aki:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/widget/bp;->akc:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->iZ()V

    :cond_4
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_displayOptions:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->setDisplayOptions(I)V

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_customNavigationLayout:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v0, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->setDisplayOptions(I)V

    :cond_7
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_height:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/bo;->getLayoutDimension(II)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_contentInsetStart:I

    invoke-virtual {v3, v0, v6}, Landroid/support/v7/widget/bo;->getDimensionPixelOffset(II)I

    move-result v0

    sget v4, Landroid/support/v7/a/a$j;->ActionBar_contentInsetEnd:I

    invoke-virtual {v3, v4, v6}, Landroid/support/v7/widget/bo;->getDimensionPixelOffset(II)I

    move-result v4

    if-gez v0, :cond_9

    if-ltz v4, :cond_a

    :cond_9
    iget-object v5, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_a
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_titleTextStyle:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_b
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v4, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :cond_c
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_popupTheme:I

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    :cond_d
    :goto_1
    iget-object v0, v3, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroid/support/v7/widget/bp;->akh:I

    if-eq p3, v0, :cond_e

    iput p3, p0, Landroid/support/v7/widget/bp;->akh:I

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/bp;->akh:I

    if-nez v0, :cond_12

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Landroid/support/v7/widget/bp;->ake:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->ja()V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bp;->ake:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/widget/bp$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bp$1;-><init>(Landroid/support/v7/widget/bp;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0xb

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 v0, 0xf

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/bp;->aki:Landroid/graphics/drawable/Drawable;

    :cond_11
    iput v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    goto :goto_1

    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private iY()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bp;->akb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->akb:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bp;->oa:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bp;->oa:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private iZ()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->akc:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->akc:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bp;->aki:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private ja()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->ake:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/bp;->akh:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->ake:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private o(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/bp;->Ch:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bp;->akb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->iY()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/bh;)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Landroid/support/v7/widget/bp;->aka:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->aka:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->aka:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/bp;->aka:Landroid/view/View;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bp;->akg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->aka:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v7/widget/bp;->aka:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    iput v3, v0, Landroid/support/v7/widget/Toolbar$b;->width:I

    iput v3, v0, Landroid/support/v7/widget/Toolbar$b;->height:I

    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->gravity:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bh;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bp;->Tf:Landroid/support/v7/widget/d;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/d;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/bp;->Tf:Landroid/support/v7/widget/d;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->Tf:Landroid/support/v7/widget/d;

    sget v1, Landroid/support/v7/a/a$f;->action_menu_presenter:I

    iput v1, v0, Landroid/support/v7/view/menu/b;->yo:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bp;->Tf:Landroid/support/v7/widget/d;

    iput-object p2, v0, Landroid/support/v7/view/menu/b;->QU:Landroid/support/v7/view/menu/o$a;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->Tf:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/view/menu/h;Landroid/support/v7/widget/d;)V

    return-void
.end method

.method public final b(IJ)Landroid/support/v4/view/v;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/v;->k(F)Landroid/support/v4/view/v;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/v;->e(J)Landroid/support/v4/view/v;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/bp$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/bp$2;-><init>(Landroid/support/v7/widget/bp;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canShowOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final collapseActionView()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    return-void
.end method

.method public final dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    return-void
.end method

.method public final fF()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bp;->akf:Z

    return-void
.end method

.method public final gA()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayOptions()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    return v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getNavigationMode()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bp;->akg:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final gy()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final gz()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final hasExpandedActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public final hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public final isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public final setCollapsible(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final setDisplayOptions(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/widget/bp;->ajZ:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroid/support/v7/widget/bp;->ajZ:I

    if-eqz v0, :cond_4

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->ja()V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/bp;->iZ()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->iY()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/bp;->Ch:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/bp;->Ci:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    if-eqz v0, :cond_4

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->oZ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bp;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bp;->oa:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->iY()V

    return-void
.end method

.method public final setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/bp;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMenuCallbacks(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->setMenuCallbacks(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bp;->akd:Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bp;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bp;->On:Landroid/view/Window$Callback;

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bp;->akd:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bp;->o(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bp;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
