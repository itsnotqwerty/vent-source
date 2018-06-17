.class final Landroid/support/v7/widget/ao;
.super Landroid/support/v7/widget/RecyclerView$h;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ao$b;,
        Landroid/support/v7/widget/ao$a;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private KI:I

.field final YI:I

.field private final YJ:Landroid/graphics/drawable/StateListDrawable;

.field private final YK:Landroid/graphics/drawable/Drawable;

.field private final YL:I

.field private final YM:I

.field private final YN:Landroid/graphics/drawable/StateListDrawable;

.field private final YO:Landroid/graphics/drawable/Drawable;

.field private final YP:I

.field private final YQ:I

.field YR:I

.field YS:I

.field YT:F

.field YU:I

.field YV:I

.field YW:F

.field YX:I

.field YY:I

.field YZ:Landroid/support/v7/widget/RecyclerView;

.field Za:Z

.field Zb:Z

.field private final Zc:[I

.field private final Zd:[I

.field final Ze:Landroid/animation/ValueAnimator;

.field Zf:I

.field private final Zg:Ljava/lang/Runnable;

.field private final Zh:Landroid/support/v7/widget/RecyclerView$n;

.field private final fy:I

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ao;->PRESSED_STATE_SET:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/ao;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    const/16 v3, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    iput v2, p0, Landroid/support/v7/widget/ao;->YX:I

    iput v2, p0, Landroid/support/v7/widget/ao;->YY:I

    iput-boolean v2, p0, Landroid/support/v7/widget/ao;->Za:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/ao;->Zb:Z

    iput v2, p0, Landroid/support/v7/widget/ao;->mState:I

    iput v2, p0, Landroid/support/v7/widget/ao;->KI:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/ao;->Zc:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/ao;->Zd:[I

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    iput v2, p0, Landroid/support/v7/widget/ao;->Zf:I

    new-instance v0, Landroid/support/v7/widget/ao$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$1;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->Zg:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/ao$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao$2;-><init>(Landroid/support/v7/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->Zh:Landroid/support/v7/widget/RecyclerView$n;

    iput-object p2, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroid/support/v7/widget/ao;->YK:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroid/support/v7/widget/ao;->YN:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroid/support/v7/widget/ao;->YO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YL:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YM:I

    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YP:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YQ:I

    iput p7, p0, Landroid/support/v7/widget/ao;->YI:I

    iput p8, p0, Landroid/support/v7/widget/ao;->fy:I

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/ao$a;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/ao$a;-><init>(Landroid/support/v7/widget/ao;B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/ao$b;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/ao$b;-><init>(Landroid/support/v7/widget/ao;B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zh:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$n;)V

    invoke-direct {p0}, Landroid/support/v7/widget/ao;->gG()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zh:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(FF[IIII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget v1, p2, v1

    aget v2, p2, v0

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-float v2, p1, p0

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-int v2, p3, p5

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int v3, p4, v1

    if-ge v3, v2, :cond_0

    if-ltz v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/ao;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ao;->Zf:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/ao;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/ao;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ao;->setState(I)V

    return-void
.end method

.method private bo(I)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/widget/ao;->gG()V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zg:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/ao;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/ao;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/ao;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YK:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private gF()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gG()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h(FF)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/ao;->gF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/ao;->YL:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ao;->YS:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YR:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/ao;->YS:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YR:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ao;->YX:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YL:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(FF)Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ao;->YY:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YP:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ao;->YV:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YU:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ao;->YV:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YU:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private show()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Landroid/support/v7/widget/ao;->Zf:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_2
    iput v4, p0, Landroid/support/v7/widget/ao;->Zf:I

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->Ze:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final Q(Z)V
    .locals 0

    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    iget v2, p0, Landroid/support/v7/widget/ao;->mState:I

    if-ne v2, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/ao;->h(FF)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/ao;->i(FF)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_3

    iput v0, p0, Landroid/support/v7/widget/ao;->KI:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/ao;->YW:F

    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ao;->setState(I)V

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-eqz v2, :cond_1

    iput v5, p0, Landroid/support/v7/widget/ao;->KI:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/ao;->YT:F

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/support/v7/widget/ao;->mState:I

    if-eq v2, v5, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v0, p0, Landroid/support/v7/widget/ao;->mState:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/ao;->h(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/ao;->i(FF)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v1, :cond_4

    iput v6, p0, Landroid/support/v7/widget/ao;->KI:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YW:F

    :cond_3
    :goto_1
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/ao;->setState(I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_3

    iput v8, p0, Landroid/support/v7/widget/ao;->KI:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YT:F

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget v0, p0, Landroid/support/v7/widget/ao;->mState:I

    if-ne v0, v8, :cond_6

    iput v1, p0, Landroid/support/v7/widget/ao;->YT:F

    iput v1, p0, Landroid/support/v7/widget/ao;->YW:F

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/ao;->setState(I)V

    iput v7, p0, Landroid/support/v7/widget/ao;->KI:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ao;->mState:I

    if-ne v0, v8, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/ao;->show()V

    iget v0, p0, Landroid/support/v7/widget/ao;->KI:I

    if-ne v0, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zd:[I

    iget v2, p0, Landroid/support/v7/widget/ao;->fy:I

    aput v2, v1, v7

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zd:[I

    iget v2, p0, Landroid/support/v7/widget/ao;->YX:I

    iget v3, p0, Landroid/support/v7/widget/ao;->fy:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    iget-object v2, p0, Landroid/support/v7/widget/ao;->Zd:[I

    aget v1, v2, v7

    int-to-float v1, v1

    aget v3, v2, v6

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p0, Landroid/support/v7/widget/ao;->YV:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/support/v7/widget/ao;->YW:F

    iget-object v3, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/ao;->YX:I

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ao;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_7
    iput v1, p0, Landroid/support/v7/widget/ao;->YW:F

    :cond_8
    iget v0, p0, Landroid/support/v7/widget/ao;->KI:I

    if-ne v0, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zc:[I

    iget v2, p0, Landroid/support/v7/widget/ao;->fy:I

    aput v2, v1, v7

    iget-object v1, p0, Landroid/support/v7/widget/ao;->Zc:[I

    iget v2, p0, Landroid/support/v7/widget/ao;->YY:I

    iget v3, p0, Landroid/support/v7/widget/ao;->fy:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    iget-object v2, p0, Landroid/support/v7/widget/ao;->Zc:[I

    aget v1, v2, v7

    int-to-float v1, v1

    aget v3, v2, v6

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p0, Landroid/support/v7/widget/ao;->YS:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ao;->YT:F

    iget-object v3, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/ao;->YY:I

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ao;->a(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v7, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_9
    iput v1, p0, Landroid/support/v7/widget/ao;->YT:F

    goto/16 :goto_0
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v0, p0, Landroid/support/v7/widget/ao;->YX:I

    iget-object v1, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ao;->YY:I

    iget-object v1, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YX:I

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ao;->YY:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ao;->setState(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ao;->Zf:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->Za:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/ao;->YX:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YL:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ao;->YS:I

    iget v2, p0, Landroid/support/v7/widget/ao;->YR:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/ao;->YL:I

    iget v4, p0, Landroid/support/v7/widget/ao;->YR:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YK:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/ao;->YM:I

    iget v4, p0, Landroid/support/v7/widget/ao;->YY:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/ao;->gF()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/ao;->YL:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Landroid/support/v7/widget/ao;->YL:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->Zb:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/ao;->YY:I

    iget v1, p0, Landroid/support/v7/widget/ao;->YP:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/ao;->YV:I

    iget v2, p0, Landroid/support/v7/widget/ao;->YU:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YN:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/ao;->YU:I

    iget v4, p0, Landroid/support/v7/widget/ao;->YP:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YO:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/ao;->YX:I

    iget v4, p0, Landroid/support/v7/widget/ao;->YQ:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YN:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_4
    int-to-float v2, v0

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method final setState(I)V
    .locals 3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ao;->mState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/ao;->PRESSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-direct {p0}, Landroid/support/v7/widget/ao;->gG()V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/ao;->mState:I

    if-ne v0, v2, :cond_3

    if-eq p1, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ao;->YJ:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/ao;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ao;->bo(I)V

    :cond_1
    :goto_1
    iput p1, p0, Landroid/support/v7/widget/ao;->mState:I

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ao;->show()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ao;->bo(I)V

    goto :goto_1
.end method
