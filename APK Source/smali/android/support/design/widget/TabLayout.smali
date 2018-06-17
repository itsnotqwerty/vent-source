.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$a;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$h;,
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$g;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$b;
    }
.end annotation


# static fields
.field private static final oc:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Landroid/support/design/widget/TabLayout$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private oA:Landroid/animation/ValueAnimator;

.field oB:Landroid/support/v4/view/ViewPager;

.field private oC:Landroid/support/v4/view/o;

.field private oD:Landroid/database/DataSetObserver;

.field private oE:Landroid/support/design/widget/TabLayout$f;

.field private oF:Landroid/support/design/widget/TabLayout$a;

.field private oG:Z

.field private final oH:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Landroid/support/design/widget/TabLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private final od:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private oe:Landroid/support/design/widget/TabLayout$e;

.field private final of:Landroid/support/design/widget/TabLayout$d;

.field og:I

.field oh:I

.field oi:I

.field oj:I

.field ok:I

.field ol:Landroid/content/res/ColorStateList;

.field om:F

.field oo:F

.field final op:I

.field oq:I

.field private final or:I

.field private final os:I

.field private final ot:I

.field private ou:I

.field ov:I

.field ow:I

.field private ox:Landroid/support/design/widget/TabLayout$b;

.field private final oy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private oz:Landroid/support/design/widget/TabLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/g/k$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/g/k$c;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->oc:Landroid/support/v4/g/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->oq:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/g/k$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/g/k$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oH:Landroid/support/v4/g/k$a;

    invoke-static {p1}, Landroid/support/design/widget/p;->d(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v6, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/support/design/a$k;->TabLayout:[I

    sget v1, Landroid/support/design/a$j;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    sget v2, Landroid/support/design/a$k;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$d;->O(I)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    sget v2, Landroid/support/design/a$k;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$d;->N(I)V

    sget v1, Landroid/support/design/a$k;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oj:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oi:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oh:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->og:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->og:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->og:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->oh:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oh:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->oi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oi:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->oj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oj:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/a$j;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->ok:I

    iget v1, p0, Landroid/support/design/widget/TabLayout;->ok:I

    sget-object v2, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->om:F

    sget v2, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/support/design/a$k;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/a$k;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroid/support/design/a$k;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/design/a$k;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    new-array v3, v4, [[I

    new-array v4, v4, [I

    sget-object v5, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v5, v3, v6

    aput v1, v4, v6

    sget-object v1, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v1, v3, v8

    aput v2, v4, v8

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    :cond_1
    sget v1, Landroid/support/design/a$k;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->or:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->os:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->op:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->ou:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabMode:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->ow:I

    sget v1, Landroid/support/design/a$k;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->ov:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$d;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->oo:F

    sget v1, Landroid/support/design/a$d;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->ot:I

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bS()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private M(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v4

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->setScrollPosition$4867b5c2(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v3

    if-eq v0, v3, :cond_5

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bR()V

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v2

    aput v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$d;->i(II)V

    goto :goto_0
.end method

.method private a(IF)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/design/widget/TabLayout;->ow:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    add-int/2addr v0, v2

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    sub-int v0, v2, v0

    goto :goto_2
.end method

.method private a(Landroid/support/design/widget/TabLayout$e;I)V
    .locals 3

    iput p2, p1, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    iput v1, v0, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$e;Z)V
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    if-eq v1, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;I)V

    iget-object v0, p1, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    iget v2, p1, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/widget/TabLayout$d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->select()V

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oE:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oE:Landroid/support/design/widget/TabLayout$f;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oF:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oF:Landroid/support/design/widget/TabLayout$a;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oz:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oz:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->oz:Landroid/support/design/widget/TabLayout$b;

    :cond_2
    if-eqz p1, :cond_7

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oE:Landroid/support/design/widget/TabLayout$f;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/design/widget/TabLayout$f;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$f;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oE:Landroid/support/design/widget/TabLayout$f;

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oE:Landroid/support/design/widget/TabLayout$f;

    iput v4, v0, Landroid/support/design/widget/TabLayout$f;->pe:I

    iput v4, v0, Landroid/support/design/widget/TabLayout$f;->pd:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oE:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    new-instance v0, Landroid/support/design/widget/TabLayout$h;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$h;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oz:Landroid/support/design/widget/TabLayout$b;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oz:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, v5}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/o;Z)V

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oF:Landroid/support/design/widget/TabLayout$a;

    if-nez v0, :cond_5

    new-instance v0, Landroid/support/design/widget/TabLayout$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$a;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oF:Landroid/support/design/widget/TabLayout$a;

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oF:Landroid/support/design/widget/TabLayout$a;

    iput-boolean v5, v0, Landroid/support/design/widget/TabLayout$a;->oJ:Z

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oF:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    :cond_6
    iget-object v1, p1, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition$4867b5c2(I)V

    :goto_0
    iput-boolean p2, p0, Landroid/support/design/widget/TabLayout;->oG:Z

    return-void

    :cond_7
    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v3, v4}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/o;Z)V

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ov:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private bP()Landroid/support/design/widget/TabLayout$e;
    .locals 3

    sget-object v0, Landroid/support/design/widget/TabLayout;->oc:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/design/widget/TabLayout$e;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$e;-><init>()V

    move-object v1, v0

    :goto_0
    iput-object p0, v1, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oH:Landroid/support/v4/g/k$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oH:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$g;

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/support/design/widget/TabLayout$g;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$g;->c(Landroid/support/design/widget/TabLayout$e;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$g;->setFocusable(Z)V

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$g;->setMinimumWidth(I)V

    iput-object v0, v1, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private bR()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private bS()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ou:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->og:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/r;->c(Landroid/view/View;IIII)V

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->i(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$d;->setGravity(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultHeight()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/support/design/widget/TabLayout$e;->oa:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$e;->kB:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    iget v1, v0, Landroid/support/design/widget/TabLayout$d;->oM:I

    int-to-float v1, v1

    iget v0, v0, Landroid/support/design/widget/TabLayout$d;->oN:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->or:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->or:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ot:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$d;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private r(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Landroid/support/design/widget/o;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/support/design/widget/o;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bP()Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    iget-object v1, p1, Landroid/support/design/widget/o;->kB:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/design/widget/o;->kB:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/o;->oa:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/support/design/widget/o;->oa:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$e;->oa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->bV()V

    :cond_1
    iget v1, p1, Landroid/support/design/widget/o;->ob:I

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/support/design/widget/o;->ob:I

    iget-object v2, v0, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$e;->oZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->bV()V

    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/o;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/support/design/widget/o;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$e;->oY:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->bV()V

    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;Z)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setScrollPosition$4867b5c2(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final K(I)Landroid/support/design/widget/TabLayout$e;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    goto :goto_0
.end method

.method final L(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method final a(IFZZ)V
    .locals 3

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$d;->oR:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput p1, v1, Landroid/support/design/widget/TabLayout$d;->oM:I

    iput p2, v1, Landroid/support/design/widget/TabLayout$d;->oN:F

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$d;->bU()V

    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public final a(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final a(Landroid/support/design/widget/TabLayout$e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$e;Z)V

    return-void
.end method

.method final a(Landroid/support/v4/view/o;Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oC:Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oD:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oC:Landroid/support/v4/view/o;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oD:Landroid/database/DataSetObserver;

    iget-object v0, v0, Landroid/support/v4/view/o;->FN:Landroid/database/DataSetObservable;

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->oC:Landroid/support/v4/view/o;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oD:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/design/widget/TabLayout$c;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$c;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->oD:Landroid/database/DataSetObserver;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oD:Landroid/database/DataSetObserver;

    iget-object v1, p1, Landroid/support/v4/view/o;->FN:Landroid/database/DataSetObservable;

    invoke-virtual {v1, v0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->bQ()V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->r(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->r(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->r(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->r(Landroid/view/View;)V

    return-void
.end method

.method final b(Landroid/support/design/widget/TabLayout$e;Z)V
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->oe:Landroid/support/design/widget/TabLayout$e;

    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0}, Landroid/support/design/widget/TabLayout$b;->bT()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->M(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_5

    iget v0, p1, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    :goto_1
    if-eqz p2, :cond_4

    if-eqz v2, :cond_3

    iget v3, v2, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    if-ne v3, v1, :cond_6

    :cond_3
    if-eq v0, v1, :cond_6

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition$4867b5c2(I)V

    :goto_2
    if-eq v0, v1, :cond_4

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    :cond_4
    if-eqz v2, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->M(I)V

    goto :goto_2

    :cond_7
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->oe:Landroid/support/design/widget/TabLayout$e;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->b(Landroid/support/design/widget/TabLayout$e;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4
.end method

.method final bQ()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$g;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout$d;->removeViewAt(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout$g;->c(Landroid/support/design/widget/TabLayout$e;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$g;->setSelected(Z)V

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->oH:Landroid/support/v4/g/k$a;

    invoke-interface {v3, v0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->pa:Landroid/support/design/widget/TabLayout;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->pb:Landroid/support/design/widget/TabLayout$g;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->oX:Ljava/lang/Object;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->oa:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->kB:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->oY:Ljava/lang/CharSequence;

    const/4 v3, -0x1

    iput v3, v0, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$e;->oZ:Landroid/view/View;

    sget-object v3, Landroid/support/design/widget/TabLayout;->oc:Landroid/support/v4/g/k$a;

    invoke-interface {v3, v0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->oe:Landroid/support/design/widget/TabLayout$e;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oC:Landroid/support/v4/view/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oC:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bP()Landroid/support/design/widget/TabLayout$e;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->oC:Landroid/support/v4/view/o;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/o;->aw(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$e;->b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->K(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$e;Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oe:Landroid/support/design/widget/TabLayout$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oe:Landroid/support/design/widget/TabLayout$e;

    iget v0, v0, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ov:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->oq:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method final i(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oB:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->oG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->oG:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->L(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/design/widget/TabLayout;->os:I

    if-lez v3, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->os:I

    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->oq:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void

    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :sswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 v3, 0x38

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->L(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_4

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->ox:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->ox:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->ox:Landroid/support/design/widget/TabLayout$b;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    :cond_1
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bR()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->oA:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$d;->N(I)V

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->of:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$d;->O(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ov:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout;->ov:I

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bS()V

    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->ow:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout;->ow:I

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->bS()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->ol:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->bV()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/o;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/o;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
