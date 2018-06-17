.class Landroid/support/v7/widget/aa;
.super Ljava/lang/Object;


# instance fields
.field final WN:Landroid/widget/TextView;

.field private WO:Landroid/support/v7/widget/bm;

.field private WP:Landroid/support/v7/widget/bm;

.field private WQ:Landroid/support/v7/widget/bm;

.field private WR:Landroid/support/v7/widget/bm;

.field final WS:Landroid/support/v7/widget/ac;

.field WT:Landroid/graphics/Typeface;

.field WU:Z

.field wL:I


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aa;->wL:I

    iput-object p1, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    new-instance v0, Landroid/support/v7/widget/ac;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ac;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/m;I)Landroid/support/v7/widget/bm;
    .locals 3

    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/m;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0}, Landroid/support/v7/widget/bm;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/bm;->ajR:Z

    iput-object v1, v0, Landroid/support/v7/widget/bm;->ajP:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/support/v7/widget/bo;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_textStyle:I

    iget v2, p0, Landroid/support/v7/widget/aa;->wL:I

    invoke-virtual {p2, v0, v2}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aa;->wL:I

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iput-object v1, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_fontFamily:I

    move v6, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Landroid/support/v7/widget/aa$1;

    invoke-direct {v5, p0, v0}, Landroid/support/v7/widget/aa$1;-><init>(Landroid/support/v7/widget/aa;Ljava/lang/ref/WeakReference;)V

    :try_start_0
    iget v4, p0, Landroid/support/v7/widget/aa;->wL:I

    iget-object v0, p2, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    if-nez v0, :cond_7

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/widget/aa;->WU:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    if-nez v0, :cond_2

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/bo;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/support/v7/widget/aa;->wL:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    :cond_2
    :goto_4
    return-void

    :cond_3
    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_fontFamily:I

    move v6, v0

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p2, Landroid/support/v7/widget/bo;->Wi:Landroid/util/TypedValue;

    if-nez v0, :cond_5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p2, Landroid/support/v7/widget/bo;->Wi:Landroid/util/TypedValue;

    :cond_5
    iget-object v0, p2, Landroid/support/v7/widget/bo;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/support/v7/widget/bo;->Wi:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v9, 0x1

    invoke-virtual {v1, v3, v2, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/a/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/support/v4/content/a/b$a;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :cond_7
    move v0, v8

    goto :goto_2

    :cond_8
    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v8, p0, Landroid/support/v7/widget/aa;->WU:Z

    sget v0, Landroid/support/v7/a/a$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v7}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    goto :goto_4

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    goto :goto_4

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static d(Landroid/widget/TextView;)Landroid/support/v7/widget/aa;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/ab;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ab;-><init>(Landroid/widget/TextView;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/aa;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aa;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;[I)V

    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/support/v7/widget/m;->gh()Landroid/support/v7/widget/m;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->AppCompatTextHelper:[I

    const/4 v2, 0x0

    invoke-static {v5, p1, v1, p2, v2}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v6

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableLeft:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v2

    invoke-static {v5, v0, v2}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/m;I)Landroid/support/v7/widget/bm;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/aa;->WO:Landroid/support/v7/widget/bm;

    :cond_0
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableTop:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v2

    invoke-static {v5, v0, v2}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/m;I)Landroid/support/v7/widget/bm;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/aa;->WP:Landroid/support/v7/widget/bm;

    :cond_1
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableRight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v2

    invoke-static {v5, v0, v2}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/m;I)Landroid/support/v7/widget/bm;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/aa;->WQ:Landroid/support/v7/widget/bm;

    :cond_2
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextHelper_android_drawableBottom:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v2

    invoke-static {v5, v0, v2}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/m;I)Landroid/support/v7/widget/bm;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aa;->WR:Landroid/support/v7/widget/bm;

    :cond_3
    iget-object v0, v1, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v7, v0, Landroid/text/method/PasswordTransformationMethod;

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, -0x1

    if-eq v6, v8, :cond_8

    sget-object v8, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {v5, v6, v8}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/bo;

    move-result-object v6

    if-nez v7, :cond_4

    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    :cond_4
    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/bo;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_7

    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget v2, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_5
    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_6

    sget v3, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_6
    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    sget v4, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_7
    iget-object v6, v6, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    sget-object v6, Landroid/support/v7/a/a$j;->TextAppearance:[I

    const/4 v8, 0x0

    invoke-static {v5, p1, v6, p2, v8}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v6

    if-nez v7, :cond_9

    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v0, 0x1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    :cond_9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_c

    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_a

    sget v2, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_a
    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_b

    sget v3, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_b
    sget v8, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_c

    sget v4, Landroid/support/v7/a/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_c
    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/bo;)V

    iget-object v5, v6, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_d

    iget-object v5, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    if-eqz v3, :cond_e

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    if-eqz v4, :cond_f

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    if-nez v7, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aa;->setAllCaps(Z)V

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/aa;->wL:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_11
    iget-object v4, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v3, v4, Landroid/support/v7/widget/ac;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/support/v7/a/a$j;->AppCompatTextView:[I

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_12

    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeTextType:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Landroid/support/v7/widget/ac;->Xb:I

    :cond_12
    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_13

    sget v0, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeStepGranularity:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    :cond_13
    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_14

    sget v1, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMinTextSize:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v5, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    :cond_14
    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_15

    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMaxTextSize:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    :cond_15
    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizePresetSizes:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_18

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v8, v7, [I

    if-lez v7, :cond_17

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_16

    const/4 v9, -0x1

    invoke-virtual {v6, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_16
    invoke-static {v8}, Landroid/support/v7/widget/ac;->c([I)[I

    move-result-object v3

    iput-object v3, v4, Landroid/support/v7/widget/ac;->Xg:[I

    invoke-virtual {v4}, Landroid/support/v7/widget/ac;->gn()Z

    :cond_17
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/support/v7/widget/ac;->gr()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget v3, v4, Landroid/support/v7/widget/ac;->Xb:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    iget-boolean v3, v4, Landroid/support/v7/widget/ac;->Xh:Z

    if-nez v3, :cond_1c

    iget-object v3, v4, Landroid/support/v7/widget/ac;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v1, v5

    if-nez v5, :cond_19

    const/4 v1, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v1, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_19
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_1a

    const/4 v2, 0x2

    const/high16 v5, 0x42e00000    # 112.0f

    invoke-static {v2, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_1a
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1b

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1b
    invoke-virtual {v4, v1, v2, v0}, Landroid/support/v7/widget/ac;->e(FFF)V

    :cond_1c
    invoke-virtual {v4}, Landroid/support/v7/widget/ac;->go()Z

    :cond_1d
    :goto_1
    sget-boolean v0, Landroid/support/v4/widget/b;->Im:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v0, v0, Landroid/support/v7/widget/ac;->Xb:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget-object v0, v0, Landroid/support/v7/widget/ac;->Xg:[I

    array-length v1, v0

    if-lez v1, :cond_1e

    iget-object v1, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v1, v1, Landroid/support/v7/widget/ac;->Xe:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v2, v2, Landroid/support/v7/widget/ac;->Xf:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    iget v3, v3, Landroid/support/v7/widget/ac;->Xd:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_1e
    :goto_2
    return-void

    :cond_1f
    const/4 v0, 0x0

    iput v0, v4, Landroid/support/v7/widget/ac;->Xb:I

    goto :goto_1

    :cond_20
    iget-object v1, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_2
.end method

.method gl()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WO:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WP:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WQ:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WR:Landroid/support/v7/widget/bm;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WO:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/aa;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WP:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/aa;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WQ:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/aa;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/aa;->WR:Landroid/support/v7/widget/bm;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/aa;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;)V

    :cond_1
    return-void
.end method

.method final gm()V
    .locals 1

    sget-boolean v0, Landroid/support/v4/widget/b;->Im:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gp()V

    :cond_0
    return-void
.end method

.method final j(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/bo;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aa;->setAllCaps(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/aa;->a(Landroid/content/Context;Landroid/support/v7/widget/bo;)V

    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->WT:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/aa;->wL:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method

.method final setAllCaps(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WN:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/ac;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {p4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    int-to-float v3, p2

    invoke-static {p4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    int-to-float v4, p3

    invoke-static {p4, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v7/widget/ac;->e(FFF)V

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->go()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gp()V

    :cond_0
    return-void
.end method

.method final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v2}, Landroid/support/v7/widget/ac;->gr()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v3, p1

    if-lez v3, :cond_2

    new-array v0, v3, [I

    if-nez p2, :cond_1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/ac;->c([I)[I

    move-result-object v0

    iput-object v0, v2, Landroid/support/v7/widget/ac;->Xg:[I

    invoke-virtual {v2}, Landroid/support/v7/widget/ac;->gn()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "None of the preset sizes is valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v4, v2, Landroid/support/v7/widget/ac;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v1, v3, :cond_0

    aget v5, p1, v1

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, v2, Landroid/support/v7/widget/ac;->Xh:Z

    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/ac;->go()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/ac;->gp()V

    :cond_4
    return-void
.end method

.method final setAutoSizeTextTypeWithDefaults(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gr()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown auto-size text type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v3, v0, Landroid/support/v7/widget/ac;->Xb:I

    iput v2, v0, Landroid/support/v7/widget/ac;->Xe:F

    iput v2, v0, Landroid/support/v7/widget/ac;->Xf:F

    iput v2, v0, Landroid/support/v7/widget/ac;->Xd:F

    new-array v1, v3, [I

    iput-object v1, v0, Landroid/support/v7/widget/ac;->Xg:[I

    iput-boolean v3, v0, Landroid/support/v7/widget/ac;->Xc:Z

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v1, v0, Landroid/support/v7/widget/ac;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v7/widget/ac;->e(FFF)V

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->go()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gp()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final setTextSize(IF)V
    .locals 1

    sget-boolean v0, Landroid/support/v4/widget/b;->Im:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0}, Landroid/support/v7/widget/ac;->gq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aa;->WS:Landroid/support/v7/widget/ac;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ac;->c(IF)V

    :cond_0
    return-void
.end method
