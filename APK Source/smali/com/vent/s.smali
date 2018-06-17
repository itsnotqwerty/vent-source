.class public abstract Lcom/vent/s;
.super Lcom/vent/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/s$f;,
        Lcom/vent/s$e;,
        Lcom/vent/s$c;,
        Lcom/vent/s$b;,
        Lcom/vent/s$g;,
        Lcom/vent/s$d;,
        Lcom/vent/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<",
        "Lcom/vent/a/z;",
        ">;"
    }
.end annotation


# static fields
.field private static final Ub:[I

.field private static cbE:Z

.field private static cbF:Landroid/graphics/drawable/Drawable;

.field private static cbG:Landroid/graphics/drawable/Drawable;

.field private static cbH:Landroid/graphics/drawable/Drawable;

.field private static cbI:Landroid/graphics/drawable/Drawable;

.field static cbJ:I

.field static cbK:Ljava/lang/String;

.field static cbL:Ljava/lang/String;

.field private static cbM:Ljava/lang/String;

.field private static cbN:Ljava/lang/String;

.field private static cbO:Ljava/lang/String;

.field private static cbP:Ljava/lang/String;

.field static final cbU:[I

.field private static cbV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/s$f;",
            ">;>;"
        }
    .end annotation
.end field

.field static cbW:I

.field private static cbX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/s$f;",
            ">;"
        }
    .end annotation
.end field

.field static cbY:Landroid/os/Handler;

.field private static cca:Z

.field static selectableItemBackground:I


# instance fields
.field private cbQ:Lcom/vent/s$d;

.field cbR:Lcom/vent/a/m;

.field cbS:Lcom/vent/a/m;

.field cbT:Lcom/vent/s$a;

.field cbZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/s$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x7f0401b6

    aput v1, v0, v2

    sput-object v0, Lcom/vent/s;->Ub:[I

    new-array v0, v3, [I

    const v1, 0x7f0f01a6

    aput v1, v0, v2

    sput-object v0, Lcom/vent/s;->cbU:[I

    return-void
.end method

.method constructor <init>(Lcom/vent/a;Lcom/vent/am;Lcom/vent/a/m;Lcom/vent/a/m;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/vent/l;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    iput-object p3, p0, Lcom/vent/s;->cbR:Lcom/vent/a/m;

    iput-object p4, p0, Lcom/vent/s;->cbS:Lcom/vent/a/m;

    sget-boolean v0, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method static CV()V
    .locals 3

    sget-boolean v0, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_0

    sget-object v1, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vent/s;->cbX:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vent/s;->cbY:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method static CW()V
    .locals 4

    sget-object v0, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/s$f;

    invoke-virtual {v1}, Lcom/vent/s$f;->CY()V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Lcom/vent/s$g;Lcom/vent/a/h;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/s$g;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v10

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/vent/a/h;->bn(Z)I

    move-result v1

    move v3, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-virtual/range {p0 .. p0}, Lcom/vent/s$g;->Da()V

    if-nez v11, :cond_2

    const/4 v4, 0x0

    :cond_0
    :goto_1
    const/4 v1, 0x6

    if-ge v4, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/s$g;->ccz:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const v1, -0x7f7f80

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/vent/a/z;->Fl()Z

    move-result v12

    iget-object v1, v11, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    const/4 v1, 0x0

    move v8, v1

    :goto_3
    if-ge v8, v4, :cond_0

    iget-object v1, v11, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/n;

    iget-object v2, v1, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    sget-object v5, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    iget-object v5, v5, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v2, v5}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v13

    iget-object v2, v1, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/a/o;->e(Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v2, v5, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-virtual {v11, v2}, Lcom/vent/a/z;->f(Lcom/vent/a/m;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v7, v2

    :goto_4
    if-nez v13, :cond_3

    iget-object v2, v1, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    sget-object v6, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    iget-object v6, v6, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v2, v6}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/s$g;->ccA:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vent/s$g;->ccA:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object v6, v2

    :goto_5
    if-eqz v13, :cond_c

    if-nez v7, :cond_b

    const v2, 0x7f08007a

    :goto_6
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    sget v5, Lcom/vent/MyApplication;->cgs:I

    const/4 v14, 0x0

    sget v15, Lcom/vent/MyApplication;->cgs:I

    invoke-virtual {v6, v2, v5, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v2, Lcom/vent/s;->cbO:Ljava/lang/String;

    :goto_7
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v5, v2

    :goto_8
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    sget v15, Lcom/vent/s;->cbJ:I

    if-nez v13, :cond_11

    const/4 v2, -0x1

    :goto_9
    invoke-direct {v14, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v8, :cond_4

    sget v2, Lcom/vent/MyApplication;->cge:I

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_4
    invoke-virtual {v6, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f090194

    add-int/2addr v2, v8

    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    if-nez v13, :cond_12

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    if-nez v13, :cond_13

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    if-eqz v13, :cond_14

    invoke-static {v10, v3, v3, v7}, Lcom/vent/d/a;->c(ZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_c
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v13, :cond_5

    if-eqz v12, :cond_15

    :cond_5
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/s$g;->ccy:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/s$g;->ccz:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/vent/s;->cbJ:I

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v8, :cond_6

    sget v6, Lcom/vent/MyApplication;->cge:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_6
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v1, v1, Lcom/vent/a/n;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v13, :cond_16

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez v13, :cond_17

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    if-nez v13, :cond_18

    sget v1, Lcom/vent/s;->selectableItemBackground:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_10
    if-eqz v13, :cond_7

    if-eqz v12, :cond_19

    :cond_7
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_3

    :cond_8
    iget-object v1, v11, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v4, v1

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_4

    :cond_a
    new-instance v6, Landroid/support/v7/widget/r;

    invoke-direct {v6, v9}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_b
    const v2, 0x7f08007b

    goto/16 :goto_6

    :cond_c
    if-nez v7, :cond_d

    const v2, 0x7f0800a7

    :goto_12
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v2, v5, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v2, Lcom/vent/s;->cbP:Ljava/lang/String;

    goto/16 :goto_7

    :cond_d
    const v2, 0x7f0800a8

    goto :goto_12

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/s$g;->ccB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vent/s$g;->ccB:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :goto_13
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/vent/a/o;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_14
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v2

    goto/16 :goto_8

    :cond_f
    new-instance v2, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v2, v9}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x0

    sget v14, Lcom/vent/MyApplication;->cgr:I

    int-to-float v14, v14

    invoke-virtual {v2, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13

    :cond_10
    const-string v5, "???"

    goto :goto_14

    :cond_11
    const/4 v2, -0x2

    goto/16 :goto_9

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_14
    invoke-static {v10, v3, v3, v7}, Lcom/vent/d/a;->a(ZIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    goto/16 :goto_c

    :cond_15
    const/4 v2, 0x4

    goto/16 :goto_d

    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    :cond_19
    const/4 v1, 0x4

    goto/16 :goto_11

    :cond_1a
    return-void
.end method

.method static a(Lcom/vent/s$g;Lcom/vent/a/z;ZLcom/vent/a/m;Lcom/vent/a/m;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-nez p1, :cond_b

    const/4 v2, 0x0

    move-object v7, v2

    :goto_0
    if-nez v7, :cond_c

    const/4 v2, 0x0

    move-object v13, v2

    :goto_1
    if-eqz v7, :cond_0

    if-nez v13, :cond_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/vent/bb;->ciS:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/vent/bb;->ciS:J

    :cond_1
    iget-object v2, p0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/d;

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/vent/ActMain;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/vent/ActMain;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vent/ActMain;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_2
    iget-object v2, p0, Lcom/vent/s$g;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object p1, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-static {v8}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v9

    if-eqz v13, :cond_d

    invoke-virtual {v13, v9}, Lcom/vent/a/h;->bm(Z)I

    move-result v2

    move v5, v2

    :goto_2
    if-eqz v13, :cond_e

    invoke-virtual {v13, v9}, Lcom/vent/a/h;->bn(Z)I

    move-result v6

    :goto_3
    if-eqz p1, :cond_f

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v2}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v4, 0x1

    :goto_4
    if-eqz p1, :cond_3

    if-nez v4, :cond_3

    iget v2, p1, Lcom/vent/a/z;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-nez v2, :cond_11

    :cond_3
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_7
    iget-object v2, p0, Lcom/vent/s$g;->ccs:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-nez v2, :cond_19

    :cond_4
    const/4 v2, 0x0

    :goto_8
    iget-object v3, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    sget v10, Lcom/vent/MyApplication;->cgm:I

    sget v11, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v2, v3, v10, v11}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v3, p0, Lcom/vent/s$g;->bZI:Landroid/widget/TextView;

    if-eqz p1, :cond_1a

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v2, :cond_1a

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v2, v2, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v2, v2, Lcom/vent/a/x;->username:Ljava/lang/String;

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_5

    if-eqz p1, :cond_1b

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v2, :cond_1b

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_5
    const/4 v2, 0x1

    :goto_a
    iget-object v3, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v3, v2}, Lcom/vent/CachedImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/vent/s$g;->cct:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v10, p0, Lcom/vent/s$g;->cct:Landroid/view/View;

    if-eqz v2, :cond_1c

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/vent/s$g;->bZI:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setClickable(Z)V

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_c
    iget-object v3, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    if-eqz v13, :cond_1e

    invoke-virtual {v13, v9}, Lcom/vent/a/h;->bo(Z)I

    move-result v3

    :goto_d
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v7, :cond_1f

    const/4 v3, 0x1

    :goto_e
    iget-object v5, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v5, p0, Lcom/vent/s$g;->ccu:Landroid/view/View;

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/vent/s$g;->ccu:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v5, p0, Lcom/vent/s$g;->ccu:Landroid/view/View;

    if-eqz v3, :cond_20

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_21

    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Lcom/vent/d/e;->m(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u2022  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_9

    iget-object v3, p1, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u2022  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    iget-object v3, p0, Lcom/vent/s$g;->ccv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_22

    const/4 v2, 0x0

    :goto_11
    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_12
    const/4 v5, 0x0

    sget-object v3, Lcom/vent/s;->cbF:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez p1, :cond_23

    const/4 v7, 0x0

    :goto_13
    packed-switch v7, :pswitch_data_0

    :cond_a
    :goto_14
    iget-object v4, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setClickable(Z)V

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/vent/a/z;->Fm()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/vent/s$g;->ccx:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    const v3, 0x7f0f0131

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_15
    invoke-static {p0, v13}, Lcom/vent/s;->a(Lcom/vent/s$g;Lcom/vent/a/h;)V

    return-void

    :cond_b
    iget-object v2, p1, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_0

    :cond_c
    iget-object v2, v7, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/d/c;->h(Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v2

    move-object v13, v2

    goto/16 :goto_1

    :cond_d
    const v2, -0x7f7f80

    move v5, v2

    goto/16 :goto_2

    :cond_e
    const v6, -0x7f7f80

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_11
    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget v2, v2, Lcom/vent/a/x;->flags:I

    if-eqz v2, :cond_16

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v2}, Lcom/vent/a/x;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_12

    const v2, 0x7f0800b5

    goto/16 :goto_6

    :cond_12
    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v2}, Lcom/vent/a/x;->EZ()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f0800bb

    goto/16 :goto_6

    :cond_13
    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v2}, Lcom/vent/a/x;->Fh()Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f08005a

    goto/16 :goto_6

    :cond_14
    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v2}, Lcom/vent/a/x;->Fj()Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f080079

    goto/16 :goto_6

    :cond_15
    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v2}, Lcom/vent/a/x;->Ff()Z

    move-result v2

    if-nez v2, :cond_16

    const v2, 0x7f08012a

    goto/16 :goto_6

    :cond_16
    const v2, 0x7f0800ab

    goto/16 :goto_6

    :cond_17
    iget-object v3, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v2}, Lcom/vent/a/x;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    :goto_16
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_18
    const/4 v2, 0x0

    goto :goto_16

    :cond_19
    iget-object v2, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    goto/16 :goto_8

    :cond_1a
    sget-object v2, Lcom/vent/s;->cbM:Ljava/lang/String;

    goto/16 :goto_9

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1c
    const/16 v3, 0x8

    goto/16 :goto_b

    :cond_1d
    sget-object v2, Lcom/vent/s;->cbN:Ljava/lang/String;

    goto/16 :goto_c

    :cond_1e
    const/4 v3, -0x1

    goto/16 :goto_d

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_20
    const/16 v2, 0x8

    goto/16 :goto_f

    :cond_21
    iget-object v2, p1, Lcom/vent/a/z;->cjA:Ljava/util/Date;

    goto/16 :goto_10

    :cond_22
    iget v2, p1, Lcom/vent/a/z;->flags:I

    shr-int/lit8 v2, v2, 0x18

    goto/16 :goto_11

    :sswitch_0
    iget-object v2, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0008

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  \u2022  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_12

    :sswitch_1
    iget-object v2, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f00b5

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  \u2022  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_12

    :cond_23
    iget v7, p1, Lcom/vent/a/z;->clc:I

    goto/16 :goto_13

    :pswitch_0
    iget-object v4, p1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v4, :cond_a

    iget-object v2, p1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-virtual {v2}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v3, Lcom/vent/s;->cbI:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_24

    iget-object v2, p1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    const/4 v2, 0x1

    :goto_17
    move-object v5, v4

    goto/16 :goto_14

    :cond_25
    const/4 v2, 0x0

    goto :goto_17

    :pswitch_1
    sget-object v5, Lcom/vent/s;->cbK:Ljava/lang/String;

    sget-object v3, Lcom/vent/s;->cbG:Landroid/graphics/drawable/Drawable;

    move v2, v4

    goto/16 :goto_14

    :pswitch_2
    sget-object v5, Lcom/vent/s;->cbL:Ljava/lang/String;

    sget-object v3, Lcom/vent/s;->cbH:Landroid/graphics/drawable/Drawable;

    move v2, v4

    goto/16 :goto_14

    :cond_26
    iget-object v2, p0, Lcom/vent/s$g;->ccx:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v2, Lcom/vent/bb;->cie:Z

    if-eqz v2, :cond_27

    if-eqz p1, :cond_27

    iget-object v2, p1, Lcom/vent/a/z;->body:Ljava/lang/String;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    move v12, v2

    :goto_18
    iget-object v2, p0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_28

    const/4 v4, 0x0

    :goto_19
    if-nez p2, :cond_29

    const v5, 0x7fffffff

    :goto_1a
    if-nez p1, :cond_2a

    const/4 v7, 0x0

    :goto_1b
    if-nez p1, :cond_2b

    const/4 v8, 0x0

    :goto_1c
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2d

    const/4 v3, 0x1

    new-array v3, v3, [Z

    invoke-static {v2, v12, v3}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;I[Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    const v4, 0x7f0f0037

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1d
    iget-object v3, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    :cond_27
    const/4 v2, 0x5

    move v12, v2

    goto :goto_18

    :cond_28
    iget-object v4, p1, Lcom/vent/a/z;->body:Ljava/lang/String;

    goto :goto_19

    :cond_29
    sget v5, Lcom/vent/d/e;->cng:I

    mul-int/2addr v5, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_2a
    iget-object v7, p1, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    goto :goto_1b

    :cond_2b
    iget-object v8, p1, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    goto :goto_1c

    :cond_2c
    iget-object v3, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    :cond_2d
    iget-object v3, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static p(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/vent/s;->cbE:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/s;->cbE:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v2, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    sget v2, Lcom/vent/MyApplication;->cge:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x7

    sput v1, Lcom/vent/s;->cbJ:I

    sget v2, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v2, v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/vent/s;->cbJ:I

    sget-object v1, Lcom/vent/s;->Ub:[I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/vent/s;->selectableItemBackground:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f080130

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/vent/s;->cbI:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f080133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/vent/s;->cbF:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f080131

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/vent/s;->cbG:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f080132

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbH:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbK:Ljava/lang/String;

    const v0, 0x7f0f00be

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbL:Ljava/lang/String;

    const v0, 0x7f0f014c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbM:Ljava/lang/String;

    const v0, 0x7f0f005d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbN:Ljava/lang/String;

    const v0, 0x7f0f002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbO:Ljava/lang/String;

    const v0, 0x7f0f006c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/s;->cbP:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static q(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/vent/s;->cbX:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v1

    sget v2, Lcom/vent/s;->cbW:I

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/vent/s;->cca:Z

    if-eq v1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/vent/s;->cbX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$f;

    invoke-virtual {v0}, Lcom/vent/s$f;->CY()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vent/s;->CW()V

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/s;->cbE:Z

    invoke-static {p0}, Lcom/vent/s;->p(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public final CB()V
    .locals 4

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/s$a;->bZY:J

    return-void
.end method

.method public final CC()V
    .locals 2

    invoke-super {p0}, Lcom/vent/l;->CC()V

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    return-void
.end method

.method final CD()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-boolean v0, v0, Lcom/vent/s$a;->bZH:Z

    return v0
.end method

.method public final CG()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vent/s;->CU()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v2, v2, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const v3, 0xa000

    if-ge v2, v3, :cond_1

    :cond_0
    const-string v2, "vents"

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "needmore"

    iget-object v3, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-boolean v3, v3, Lcom/vent/s$a;->bZH:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "age"

    iget-object v3, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-wide v4, v3, Lcom/vent/s$a;->bZY:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "vents_per_ad"

    iget-object v3, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v3, v3, Lcom/vent/s$a;->ccc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ad_offset"

    iget-object v3, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v3, v3, Lcom/vent/s$a;->ccd:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic CH()V
    .locals 0

    invoke-super {p0}, Lcom/vent/l;->CH()V

    return-void
.end method

.method final CT()Lcom/vent/a/z;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/s;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v1, v1, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    goto :goto_0
.end method

.method final CU()I
    .locals 1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Cw()I
    .locals 3

    invoke-virtual {p0}, Lcom/vent/s;->CU()I

    move-result v1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccd:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccd:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccc:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final aZ(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iput-boolean p1, v0, Lcom/vent/s$a;->bZH:Z

    return-void
.end method

.method final ey(I)I
    .locals 3

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    iget-object v1, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, v1, Lcom/vent/s$a;->ccd:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccd:I

    if-lez v0, :cond_0

    add-int/2addr p1, v1

    :cond_0
    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    div-int v0, p1, v0

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccc:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccc:I

    rem-int v2, p1, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccd:I

    if-lez v2, :cond_1

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method final ez(I)I
    .locals 4

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    iget-object v1, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, v1, Lcom/vent/s$a;->ccd:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccd:I

    if-lez v0, :cond_0

    add-int/2addr p1, v1

    :cond_0
    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    add-int/lit8 v0, v0, 0x1

    div-int v2, p1, v0

    iget-object v3, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v3, v3, Lcom/vent/s$a;->ccc:I

    mul-int/2addr v2, v3

    rem-int v0, p1, v0

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccd:I

    if-lez v2, :cond_1

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public final bridge synthetic g(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/vent/l;->g(ZZ)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vent/s;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :pswitch_1
    const-wide/16 v0, -0x2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vent/s;->ez(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccd:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, v1, Lcom/vent/s$a;->ccc:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, -0x3

    int-to-long v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/vent/s;->Cw()I

    move-result v1

    if-lt p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, v1, Lcom/vent/s$a;->ccc:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, v1, Lcom/vent/s$a;->ccc:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccd:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccc:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v2, v2, Lcom/vent/s$a;->ccc:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/s;->AZ()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-boolean v0, v0, Lcom/vent/s$a;->bZH:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/s;->getItemCount()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/s;->cbd:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sub-int v0, v2, v0

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/s;->AZ()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/vent/s;->ez(I)I

    move-result v0

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v2, v2, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v2, v2, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v2, v2, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    :goto_2
    check-cast p1, Lcom/vent/s$g;

    iget-object v2, p0, Lcom/vent/s;->cbR:Lcom/vent/a/m;

    iget-object v3, p0, Lcom/vent/s;->cbS:Lcom/vent/a/m;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/vent/s;->a(Lcom/vent/s$g;Lcom/vent/a/z;ZLcom/vent/a/m;Lcom/vent/a/m;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vent/s;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast p1, Lcom/vent/l$b;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/vent/b/a;->Fp()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/vent/s;->cbW:I

    invoke-static {v0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/vent/s;->cca:Z

    new-instance v2, Lcom/vent/s$f;

    invoke-direct {v2, v0}, Lcom/vent/s$f;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$f;

    iget-object v1, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/vent/s$f;->cco:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/vent/s$f;->resume()V

    sget-object v1, Lcom/vent/s;->cbX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/l;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/vent/s$g;

    iget-object v2, p0, Lcom/vent/s;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/vent/s;->caZ:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vent/s$g;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/vent/s;->cbQ:Lcom/vent/s$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/s$e;

    invoke-direct {v0, p0}, Lcom/vent/s$e;-><init>(Lcom/vent/s;)V

    iput-object v0, p0, Lcom/vent/s;->cbQ:Lcom/vent/s$d;

    :cond_0
    iget-object v0, v1, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    new-instance v2, Lcom/vent/s$c;

    iget-object v3, p0, Lcom/vent/s;->cbQ:Lcom/vent/s$d;

    invoke-direct {v2, v1, v3}, Lcom/vent/s$c;-><init>(Lcom/vent/s$g;Lcom/vent/s$d;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    new-instance v2, Lcom/vent/s$b;

    invoke-direct {v2, p0, v1}, Lcom/vent/s$b;-><init>(Lcom/vent/s;Lcom/vent/s$g;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06006f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/vent/l$b;

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/vent/s$g;

    invoke-virtual {p1}, Lcom/vent/s$g;->Db()V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/vent/l$b;

    iget-object v0, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/e;

    iget-object v1, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$f;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/vent/l$b;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/vent/s$f;->cco:Landroid/view/ViewGroup;

    sget-object v1, Lcom/vent/s;->cbX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vent/s$f;->pause()V

    iput v2, v0, Lcom/vent/s$f;->ccm:I

    sget-object v1, Lcom/vent/s;->cbV:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/vent/b/a;->Fp()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/vent/s$f;->CY()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "vents"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    sget-object v2, Lcom/vent/a/z;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    const-string v1, "needmore"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vent/s$a;->bZH:Z

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    const-string v1, "age"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/s$a;->bZY:J

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    const-string v1, "vents_per_ad"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/s$a;->ccc:I

    iget-object v0, p0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    const-string v1, "ad_offset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/s$a;->ccd:I

    :cond_0
    invoke-super {p0, v4, v4}, Lcom/vent/l;->g(ZZ)V

    :cond_1
    return-void
.end method
