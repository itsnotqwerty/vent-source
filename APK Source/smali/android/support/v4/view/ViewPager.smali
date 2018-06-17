.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$j;,
        Landroid/support/v4/view/ViewPager$c;,
        Landroid/support/v4/view/ViewPager$h;,
        Landroid/support/v4/view/ViewPager$d;,
        Landroid/support/v4/view/ViewPager$i;,
        Landroid/support/v4/view/ViewPager$a;,
        Landroid/support/v4/view/ViewPager$e;,
        Landroid/support/v4/view/ViewPager$g;,
        Landroid/support/v4/view/ViewPager$f;,
        Landroid/support/v4/view/ViewPager$b;
    }
.end annotation


# static fields
.field static final Gf:[I

.field private static final Gh:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final Gi:Landroid/view/animation/Interpolator;

.field private static final Hf:Landroid/support/v4/view/ViewPager$j;


# instance fields
.field private GA:I

.field private GB:I

.field private GC:Z

.field private GD:Z

.field private GE:I

.field private GF:Z

.field private GG:I

.field private GH:I

.field private GI:F

.field private GJ:F

.field private GK:F

.field private GL:F

.field private GM:I

.field private GN:I

.field private GO:I

.field private GP:I

.field private GQ:Z

.field private GR:Landroid/widget/EdgeEffect;

.field private GS:Landroid/widget/EdgeEffect;

.field private GT:Z

.field private GU:Z

.field private GV:Z

.field private GW:I

.field public GX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private GY:Landroid/support/v4/view/ViewPager$f;

.field private GZ:Landroid/support/v4/view/ViewPager$f;

.field private Gg:I

.field private final Gj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final Gk:Landroid/support/v4/view/ViewPager$b;

.field private final Gl:Landroid/graphics/Rect;

.field Gm:Landroid/support/v4/view/o;

.field Gn:I

.field private Go:I

.field private Gp:Landroid/os/Parcelable;

.field private Gq:Ljava/lang/ClassLoader;

.field private Gr:Landroid/widget/Scroller;

.field private Gs:Z

.field private Gt:Landroid/support/v4/view/ViewPager$h;

.field private Gu:I

.field private Gv:Landroid/graphics/drawable/Drawable;

.field private Gw:I

.field private Gx:I

.field private Gy:F

.field private Gz:F

.field public Ha:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private Hb:Landroid/support/v4/view/ViewPager$g;

.field private Hc:I

.field private Hd:I

.field private He:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final Hg:Ljava/lang/Runnable;

.field private jJ:Landroid/view/VelocityTracker;

.field private jK:I

.field private mInLayout:Z

.field private na:Z

.field private nc:I

.field private pe:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->Gf:[I

    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->Gh:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->Gi:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/ViewPager$j;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->Hf:Landroid/support/v4/view/ViewPager$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gk:Landroid/support/v4/view/ViewPager$b;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gl:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->Go:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->Gp:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->Gq:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    iput v3, p0, Landroid/support/v4/view/ViewPager;->GE:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->jK:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->GU:Z

    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Hg:Ljava/lang/Runnable;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->pe:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dN()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gk:Landroid/support/v4/view/ViewPager$b;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gl:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->Go:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->Gp:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->Gq:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    iput v3, p0, Landroid/support/v4/view/ViewPager;->GE:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->jK:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->GU:Z

    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Hg:Ljava/lang/Runnable;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->pe:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dN()V

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    if-nez p2, :cond_0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IFI)V
    .locals 10

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GW:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    move v5, v4

    :goto_0
    if-ge v5, v8, :cond_1

    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v3, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-eqz v3, :cond_8

    iget v0, v0, Landroid/support/v4/view/ViewPager$c;->gravity:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v3, v1

    :goto_1
    add-int/2addr v0, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v1, v0

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v1

    goto :goto_1

    :pswitch_3
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->a(IFI)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v4

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->a(IFI)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GZ:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GZ:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->a(IFI)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Hb:Landroid/support/v4/view/ViewPager$g;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v4

    :goto_4
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GV:Z

    return-void

    :cond_8
    move v3, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(IZIZ)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->ay(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_1
    if-eqz p4, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->aA(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Gs:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    move v1, v0

    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int/2addr v3, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->v(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->dP()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v5

    int-to-float v5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v6, v8

    const v8, 0x3ef1463b

    mul-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_6

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_6
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Gs:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    int-to-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_8

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->aA(I)V

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->v(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->az(I)Z

    goto/16 :goto_2

    :cond_9
    move v3, v0

    goto/16 :goto_0
.end method

.method private a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method private a(IZZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->GE:I

    iget v2, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$b;->Hj:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-eq v0, p1, :cond_7

    move v1, v3

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    if-eqz v0, :cond_9

    iput p1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->aA(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->ax(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method private a(Landroid/support/v4/view/ViewPager$b;ILandroid/support/v4/view/ViewPager$b;)V
    .locals 11

    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v6

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    :goto_0
    if-eqz p3, :cond_6

    iget v0, p3, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v1, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ge v0, v1, :cond_3

    iget v1, p3, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v2, p3, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v1, v2

    add-float v2, v1, v5

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v3, v4

    :goto_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-gt v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_2
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-le v1, v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_1
    :goto_3
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ge v1, v7, :cond_2

    add-float v7, v10, v5

    add-float/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v0, v5

    add-float/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v1, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-le v0, v1, :cond_6

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    iget v2, p3, Landroid/support/v4/view/ViewPager$b;->hO:F

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-lt v1, v0, :cond_6

    if-ltz v3, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_5
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ge v1, v7, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_5

    :cond_4
    :goto_6
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-le v1, v7, :cond_5

    add-float v7, v10, v5

    sub-float/2addr v2, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_5
    iget v7, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v7, v5

    sub-float/2addr v2, v7

    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v1, p1, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    add-int/lit8 v2, v0, -0x1

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-nez v0, :cond_7

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->hO:F

    :goto_7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    add-int/lit8 v3, v6, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v3, p1, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_a
    iget v8, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-le v2, v8, :cond_9

    add-int/lit8 v2, v2, -0x1

    add-float v8, v10, v5

    sub-float/2addr v1, v8

    goto :goto_a

    :cond_7
    const v0, -0x800001

    goto :goto_7

    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    :cond_9
    iget v8, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v8, v5

    sub-float/2addr v1, v8

    iput v1, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-nez v0, :cond_a

    iput v1, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    :cond_a
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_9

    :cond_b
    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v1, p1, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v0, v1

    add-float v1, v0, v5

    iget v0, p1, Landroid/support/v4/view/ViewPager$b;->position:I

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_b
    if-ge v3, v7, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_c
    iget v8, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ge v2, v8, :cond_c

    add-int/lit8 v2, v2, 0x1

    add-float v8, v10, v5

    add-float/2addr v1, v8

    goto :goto_c

    :cond_c
    iget v8, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_d

    iget v8, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v8, v1

    sub-float/2addr v8, v10

    iput v8, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    :cond_d
    iput v1, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v0, v5

    add-float/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_b

    :cond_e
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->GU:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->jK:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->GI:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private aA(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->Q(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->Q(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GZ:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GZ:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->Q(I)V

    :cond_3
    return-void
.end method

.method private am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$b;->Hi:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/o;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private an(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    goto :goto_1
.end method

.method private arrowScroll(I)Z
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    if-ne p1, v7, :cond_5

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gl:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gl:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dU()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_0
    return v0

    :cond_1
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    if-ne v0, p0, :cond_2

    move v0, v4

    :goto_3
    if-nez v0, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    :cond_5
    if-ne p1, v8, :cond_b

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gl:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gl:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-le v2, v3, :cond_a

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    :cond_8
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dU()Z

    move-result v0

    goto/16 :goto_1

    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dV()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method private ax(I)V
    .locals 13

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-eq v1, p1, :cond_1f

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ay(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    iput p1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dQ()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dQ()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->c(Landroid/view/ViewGroup;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GE:I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gg:I

    if-eq v10, v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pager id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Pager class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Problematic adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget v4, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-lt v4, v5, :cond_4

    iget v4, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v4, v5, :cond_1e

    :goto_4
    if-nez v0, :cond_1d

    if-lez v10, :cond_1d

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-direct {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->q(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    move-object v8, v0

    :goto_5
    if-eqz v8, :cond_16

    const/4 v5, 0x0

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    if-gtz v12, :cond_6

    const/4 v3, 0x0

    :goto_7
    iget v6, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/lit8 v7, v6, -0x1

    move v6, v2

    :goto_8
    if-ltz v7, :cond_c

    cmpl-float v2, v5, v3

    if-ltz v2, :cond_8

    if-ge v7, v9, :cond_8

    if-eqz v0, :cond_c

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ne v7, v2, :cond_1c

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$b;->Hj:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$b;->Hi:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/o;->o(Ljava/lang/Object;)V

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v4, v6, -0x1

    if-ltz v2, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_9
    move v6, v4

    :goto_a
    add-int/lit8 v7, v7, -0x1

    move v4, v2

    goto :goto_8

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    iget v6, v8, Landroid/support/v4/view/ViewPager$b;->Hk:F

    sub-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v12

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    if-eqz v0, :cond_a

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ne v7, v2, :cond_a

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v5, v0

    add-int/lit8 v2, v4, -0x1

    if-ltz v2, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v7, v0}, Landroid/support/v4/view/ViewPager;->q(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v5, v0

    add-int/lit8 v6, v6, 0x1

    if-ltz v4, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :goto_b
    move v2, v4

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    iget v3, v8, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-int/lit8 v4, v6, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    move-object v5, v0

    :goto_c
    if-gtz v12, :cond_f

    const/4 v0, 0x0

    move v2, v0

    :goto_d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, v5

    :goto_e
    if-ge v7, v10, :cond_15

    cmpl-float v5, v3, v2

    if-ltz v5, :cond_11

    if-le v7, v11, :cond_11

    if-eqz v0, :cond_15

    iget v5, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ne v7, v5, :cond_d

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$b;->Hj:Z

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$b;->Hi:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/o;->o(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    :cond_d
    :goto_f
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    goto :goto_c

    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v12

    div-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_d

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_11
    if-eqz v0, :cond_13

    iget v5, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ne v7, v5, :cond_13

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto :goto_f

    :cond_13
    invoke-direct {p0, v7, v4}, Landroid/support/v4/view/ViewPager;->q(II)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v3, v0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    :cond_15
    invoke-direct {p0, v8, v6, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$b;ILandroid/support/v4/view/ViewPager$b;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iget-object v1, v8, Landroid/support/v4/view/ViewPager$b;->Hi:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/o;->p(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->cU()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_18

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iput v1, v0, Landroid/support/v4/view/ViewPager$c;->Hn:I

    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-nez v4, :cond_17

    iget v4, v0, Landroid/support/v4/view/ViewPager$c;->Hk:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_17

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v3

    if-eqz v3, :cond_17

    iget v4, v3, Landroid/support/v4/view/ViewPager$b;->Hk:F

    iput v4, v0, Landroid/support/v4/view/ViewPager$c;->Hk:F

    iget v3, v3, Landroid/support/v4/view/ViewPager$b;->position:I

    iput v3, v0, Landroid/support/v4/view/ViewPager$c;->position:I

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_18
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dQ()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->an(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_19

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-eq v0, v1, :cond_0

    :cond_19
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    goto :goto_11

    :cond_1c
    move v2, v4

    goto/16 :goto_a

    :cond_1d
    move-object v8, v0

    goto/16 :goto_5

    :cond_1e
    move-object v0, v3

    goto/16 :goto_4

    :cond_1f
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private ay(I)Landroid/support/v4/view/ViewPager$b;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private az(I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GV:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->GV:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dT()Landroid/support/v4/view/ViewPager$b;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, v1, Landroid/support/v4/view/ViewPager$b;->position:I

    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->hO:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GV:Z

    invoke-direct {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GV:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(IIII)V
    .locals 3

    if-lez p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ay(I)Landroid/support/v4/view/ViewPager$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->v(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private dN()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->Gi:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->nc:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->GM:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->GN:I

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GO:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GP:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GG:I

    new-instance v0, Landroid/support/v4/view/ViewPager$d;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$d;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    invoke-static {p0}, Landroid/support/v4/view/r;->J(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v4}, Landroid/support/v4/view/r;->l(Landroid/view/View;I)V

    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewPager$4;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$4;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    return-void
.end method

.method private dQ()V
    .locals 4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Hd:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->He:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->He:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->He:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->He:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->He:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->Hf:Landroid/support/v4/view/ViewPager$j;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private dR()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->jK:I

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->na:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GF:Z

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private dS()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private dT()Landroid/support/v4/view/ViewPager$b;
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    move v10, v0

    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    move v3, v4

    move-object v5, v0

    move v7, v2

    move v8, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    if-nez v6, :cond_6

    iget v2, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    add-int/lit8 v11, v9, 0x1

    if-eq v2, v11, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gk:Landroid/support/v4/view/ViewPager$b;

    add-float v2, v8, v7

    add-float/2addr v2, v1

    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    add-int/lit8 v2, v9, 0x1

    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-int/lit8 v3, v3, -0x1

    move-object v2, v0

    :goto_3
    iget v8, v2, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v0, v2, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v0, v8

    add-float/2addr v0, v1

    if-nez v6, :cond_0

    cmpl-float v6, v10, v8

    if-ltz v6, :cond_2

    :cond_0
    cmpg-float v0, v10, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_5

    :cond_1
    move-object v5, v2

    :cond_2
    return-object v5

    :cond_3
    move v10, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget v9, v2, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v7, v2, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v5, v2

    move v6, v4

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_3
.end method

.method private dU()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->d(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dV()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->d(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private j(F)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->GI:F

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v8

    int-to-float v0, v8

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    mul-float v4, v0, v1

    int-to-float v0, v8

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    mul-float v7, v0, v1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v6, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    if-eqz v6, :cond_5

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->hO:F

    int-to-float v4, v8

    mul-float/2addr v4, v0

    move v0, v2

    :goto_0
    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->position:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v9}, Landroid/support/v4/view/o;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v6, v9, :cond_4

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->hO:F

    int-to-float v6, v8

    mul-float/2addr v1, v6

    move v6, v2

    :goto_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_0

    if-eqz v0, :cond_3

    sub-float v0, v4, v5

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v8

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->az(I)Z

    return v3

    :cond_0
    cmpl-float v0, v5, v1

    if-lez v0, :cond_2

    if-eqz v6, :cond_1

    sub-float v0, v5, v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v8

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_3
    move v4, v1

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_3

    :cond_2
    move v3, v2

    move v4, v5

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v6, v3

    move v1, v7

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private q(II)Landroid/support/v4/view/ViewPager$b;
    .locals 2

    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    iput p1, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/o;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$b;->Hi:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/support/v4/view/ViewPager$b;->Hk:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GC:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->GC:Z

    :cond_0
    return-void
.end method

.method private v(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->pe:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    if-eq v5, v1, :cond_1

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->az(I)Z

    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    move v1, v2

    move v3, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$b;->Hj:Z

    if-eqz v5, :cond_2

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$b;->Hj:Z

    move v3, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Hg:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Hg:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/ViewPager$f;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Landroid/support/v4/view/ViewPager$a;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    or-int/2addr v2, v4

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$c;->Hm:Z

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_2
    return-void

    :cond_2
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    move-object v1, p3

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    if-gez p1, :cond_2

    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_0

    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Gs:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->az(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->v(Z)V

    goto :goto_0
.end method

.method public final d(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method final dO()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Gg:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->GE:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    move v3, v2

    :goto_1
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    sget-object v5, Landroid/support/v4/view/ViewPager;->Gh:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-nez v6, :cond_2

    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/ViewPager$c;->Hk:F

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-direct {p0, v4, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    :cond_4
    return-void
.end method

.method final dP()V
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ax(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :sswitch_0
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dU()Z

    move-result v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dV()Z

    move-result v2

    goto :goto_0

    :cond_4
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v1}, Landroid/support/v4/view/o;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->Gy:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v0, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->Gz:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GR:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->GS:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v4/view/ViewPager$c;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v4/view/ViewPager$c;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/o;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Hd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->He:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iget v0, v0, Landroid/support/v4/view/ViewPager$c;->Hn:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GE:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Hg:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->Gu:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Gv:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v1, v1

    int-to-float v2, v8

    div-float v9, v1, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v4, v1, Landroid/support/v4/view/ViewPager$b;->hO:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v3, v1, Landroid/support/v4/view/ViewPager$b;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    add-int/lit8 v5, v10, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    iget v11, v2, Landroid/support/v4/view/ViewPager$b;->position:I

    move v5, v3

    move v2, v6

    :goto_0
    if-ge v5, v11, :cond_3

    :goto_1
    iget v3, v1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-le v5, v3, :cond_0

    if-ge v2, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    goto :goto_1

    :cond_0
    iget v3, v1, Landroid/support/v4/view/ViewPager$b;->position:I

    if-ne v5, v3, :cond_2

    iget v3, v1, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v4, v1, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v3, v4

    int-to-float v4, v8

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/support/v4/view/ViewPager$b;->hO:F

    iget v6, v1, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v4, v6

    add-float/2addr v4, v9

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v12, v7

    cmpl-float v6, v6, v12

    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->Gv:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->Gw:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->Gx:I

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->Gv:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v6, v7, v8

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    int-to-float v6, v8

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    add-float/2addr v4, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dR()Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->na:Z

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->GF:Z

    if-nez v1, :cond_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->na:Z

    goto :goto_0

    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->GI:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GL:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->GH:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    cmpl-float v1, v8, v12

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->GH:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    cmpg-float v0, v8, v12

    if-gez v0, :cond_9

    :cond_8
    move v0, v6

    :goto_2
    if-nez v0, :cond_a

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v7, p0, Landroid/support/v4/view/ViewPager;->GI:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->GJ:F

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->GF:Z

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_d

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->na:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dS()V

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->GJ:F

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_b
    :goto_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->na:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->j(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3

    :cond_d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->GF:Z

    goto :goto_4

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GL:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GJ:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->GF:Z

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->Gs:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->pe:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->GP:I

    if-le v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->dP()V

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->na:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dS()V

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->v(Z)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->na:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v11

    sub-int v12, p4, p2

    sub-int v13, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v14

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_5

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v6, v1, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-eqz v6, :cond_5

    iget v6, v1, Landroid/support/v4/view/ViewPager$c;->gravity:I

    and-int/lit8 v6, v6, 0x7

    iget v1, v1, Landroid/support/v4/view/ViewPager$c;->gravity:I

    and-int/lit8 v16, v1, 0x70

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v9, v8

    move v6, v4

    move v7, v8

    :goto_1
    sparse-switch v16, :sswitch_data_0

    move v1, v2

    move v4, v2

    :goto_2
    add-int v2, v9, v14

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v15, v2, v1, v8, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v5, 0x1

    move v2, v4

    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v5, v1

    move v4, v6

    move v8, v7

    goto :goto_0

    :pswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v7, v8, v1

    move v9, v8

    move v6, v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v1

    move v6, v4

    move v7, v8

    goto :goto_1

    :pswitch_3
    sub-int v1, v12, v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    move v9, v1

    move v6, v4

    move v7, v8

    goto :goto_1

    :sswitch_0
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v4, v2, v1

    move v1, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v2

    goto :goto_2

    :sswitch_2
    sub-int v1, v13, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v2

    goto :goto_2

    :cond_0
    sub-int v1, v12, v8

    sub-int v6, v1, v4

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v9, v1, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v9

    if-eqz v9, :cond_2

    int-to-float v10, v6

    iget v9, v9, Landroid/support/v4/view/ViewPager$b;->hO:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v8

    iget-boolean v10, v1, Landroid/support/v4/view/ViewPager$c;->Hm:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/support/v4/view/ViewPager$c;->Hm:Z

    int-to-float v10, v6

    iget v1, v1, Landroid/support/v4/view/ViewPager$c;->Hk:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v10, v13, v2

    sub-int/2addr v10, v3

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v9, v2, v1, v10}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->Gw:I

    sub-int v1, v13, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->Gx:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v4/view/ViewPager;->GW:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->GT:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->Gn:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->GT:Z

    return-void

    :cond_5
    move v1, v5

    move v6, v4

    move v7, v8

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    iget v2, p0, Landroid/support/v4/view/ViewPager;->GG:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->GH:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_8

    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/support/v4/view/ViewPager$c;->gravity:I

    and-int/lit8 v5, v1, 0x7

    iget v1, v0, Landroid/support/v4/view/ViewPager$c;->gravity:I

    and-int/lit8 v3, v1, 0x70

    const/high16 v2, -0x80000000

    const/high16 v1, -0x80000000

    const/16 v7, 0x30

    if-eq v3, v7, :cond_0

    const/16 v7, 0x50

    if-ne v3, v7, :cond_4

    :cond_0
    const/4 v3, 0x1

    move v8, v3

    :goto_1
    const/4 v3, 0x3

    if-eq v5, v3, :cond_1

    const/4 v3, 0x5

    if-ne v5, v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    move v7, v3

    :goto_2
    if-eqz v8, :cond_6

    const/high16 v2, 0x40000000    # 2.0f

    :cond_2
    :goto_3
    iget v3, v0, Landroid/support/v4/view/ViewPager$c;->width:I

    const/4 v5, -0x2

    if-eq v3, v5, :cond_e

    const/high16 v5, 0x40000000    # 2.0f

    iget v2, v0, Landroid/support/v4/view/ViewPager$c;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    iget v2, v0, Landroid/support/v4/view/ViewPager$c;->width:I

    move v3, v2

    :goto_4
    iget v2, v0, Landroid/support/v4/view/ViewPager$c;->height:I

    const/4 v12, -0x2

    if-eq v2, v12, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, v0, Landroid/support/v4/view/ViewPager$c;->height:I

    const/4 v12, -0x1

    if-eq v2, v12, :cond_c

    iget v0, v0, Landroid/support/v4/view/ViewPager$c;->height:I

    :goto_5
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v11, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v8, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v6, v0

    :cond_3
    :goto_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    move v7, v3

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_6

    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GA:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GB:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->dP()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-nez v5, :cond_a

    :cond_9
    int-to-float v5, v4

    iget v0, v0, Landroid/support/v4/view/ViewPager$c;->Hk:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->GB:I

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_b
    return-void

    :cond_c
    move v0, v6

    goto :goto_5

    :cond_d
    move v3, v4

    goto/16 :goto_4

    :cond_e
    move v3, v4

    move v5, v2

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    move v4, v0

    move v5, v1

    :goto_0
    if-eq v5, v2, :cond_2

    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->am(Landroid/view/View;)Landroid/support/v4/view/ViewPager$b;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v5, v2, -0x1

    move v2, v3

    move v4, v3

    goto :goto_0

    :cond_1
    add-int v3, v5, v4

    move v5, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$i;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$i;

    iget-object v0, p1, Landroid/support/v4/view/a;->EV:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$i;->Ho:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$i;->Hp:Ljava/lang/ClassLoader;

    iget v0, p1, Landroid/support/v4/view/ViewPager$i;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$i;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Go:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$i;->Ho:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gp:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$i;->Hp:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gq:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/ViewPager$i;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$i;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$i;->position:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$i;->Ho:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->d(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GQ:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v4, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_6
    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->dP()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GL:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GJ:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->na:Z

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dR()Z

    move-result v4

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->GI:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GJ:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_8

    cmpl-float v0, v2, v0

    if-lez v0, :cond_8

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->na:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dS()V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    iput v5, p0, Landroid/support/v4/view/ViewPager;->GJ:F

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->na:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->j(F)Z

    move-result v0

    or-int/lit8 v4, v0, 0x0

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->GK:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->nc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->na:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jJ:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->GN:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->jK:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v5, v0

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dT()Landroid/support/v4/view/ViewPager$b;

    move-result-object v6

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    int-to-float v0, v0

    int-to-float v7, v1

    div-float v7, v0, v7

    iget v0, v6, Landroid/support/v4/view/ViewPager$b;->position:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v6, Landroid/support/v4/view/ViewPager$b;->hO:F

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/support/v4/view/ViewPager$b;->Hk:F

    add-float/2addr v2, v7

    div-float v2, v1, v2

    iget v1, p0, Landroid/support/v4/view/ViewPager;->jK:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->GK:F

    sub-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->GO:I

    if-le v1, v6, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->GM:I

    if-le v1, v6, :cond_c

    if-lez v5, :cond_b

    :goto_3
    move v2, v0

    :goto_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    iget v0, v0, Landroid/support/v4/view/ViewPager$b;->position:I

    iget v1, v1, Landroid/support/v4/view/ViewPager$b;->position:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_a
    invoke-direct {p0, v2, v3, v3, v5}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dR()Z

    move-result v4

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    iget v1, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    if-lt v0, v1, :cond_d

    const v1, 0x3ecccccd    # 0.4f

    :goto_5
    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v2, v0

    goto :goto_4

    :cond_d
    const v1, 0x3f19999a    # 0.6f

    goto :goto_5

    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->na:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-direct {p0, v0, v3, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->dR()Z

    move-result v4

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->GI:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->jK:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->GI:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/o;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/o;->a(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o;->c(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$b;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$b;->Hi:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/o;->o(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->cU()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$c;->Hl:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iput v2, p0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_3
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->Gg:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gt:Landroid/support/v4/view/ViewPager$h;

    if-nez v0, :cond_4

    new-instance v0, Landroid/support/v4/view/ViewPager$h;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$h;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Gt:Landroid/support/v4/view/ViewPager$h;

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gt:Landroid/support/v4/view/ViewPager$h;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/o;->a(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v1}, Landroid/support/v4/view/o;->getCount()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->Gg:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Go:I

    if-ltz v1, :cond_6

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Go:I

    invoke-direct {p0, v0, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Go:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->Gp:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->Gq:Ljava/lang/ClassLoader;

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ha:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewPager$e;->a(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->dP()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->GD:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->GT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    if-gtz p1, :cond_0

    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->GE:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->GE:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->dP()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    iput p1, p0, Landroid/support/v4/view/ViewPager;->Gu:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->d(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->Gv:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setScrollState(I)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->pe:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->pe:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Hb:Landroid/support/v4/view/ViewPager$g;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_3

    iget v2, p0, Landroid/support/v4/view/ViewPager;->Hc:I

    :goto_3
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GY:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->P(I)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->P(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GZ:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->GZ:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->P(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Gv:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
