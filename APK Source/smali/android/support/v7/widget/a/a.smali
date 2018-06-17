.class public final Landroid/support/v7/widget/a/a;
.super Landroid/support/v7/widget/RecyclerView$h;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/a/a$c;,
        Landroid/support/v7/widget/a/a$b;,
        Landroid/support/v7/widget/a/a$a;
    }
.end annotation


# instance fields
.field YZ:Landroid/support/v7/widget/RecyclerView;

.field private aeM:Landroid/support/v7/widget/RecyclerView$d;

.field private aia:I

.field final akP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final akQ:[F

.field akR:Landroid/support/v7/widget/RecyclerView$x;

.field akS:F

.field akT:F

.field akU:F

.field akV:F

.field akW:F

.field akX:F

.field akY:F

.field akZ:F

.field ala:Landroid/support/v7/widget/a/a$a;

.field alb:I

.field alc:I

.field ald:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field final ale:Ljava/lang/Runnable;

.field private alf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field private alg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field alh:Landroid/view/View;

.field ali:I

.field alj:Landroid/support/v4/view/d;

.field private alk:Landroid/support/v7/widget/a/a$b;

.field private final all:Landroid/support/v7/widget/RecyclerView$m;

.field alm:J

.field jJ:Landroid/view/VelocityTracker;

.field jK:I

.field lg:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a/a$a;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->akP:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->akQ:[F

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iput v2, p0, Landroid/support/v7/widget/a/a;->jK:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a/a;->alb:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    new-instance v0, Landroid/support/v7/widget/a/a$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/a$1;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->ale:Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->aeM:Landroid/support/v7/widget/RecyclerView$d;

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->alh:Landroid/view/View;

    iput v2, p0, Landroid/support/v7/widget/a/a;->ali:I

    new-instance v0, Landroid/support/v7/widget/a/a$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/a$2;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->all:Landroid/support/v7/widget/RecyclerView$m;

    iput-object p1, p0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    return-void
.end method

.method private static a(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b([F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/widget/a/a;->alc:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->akY:F

    iget v1, p0, Landroid/support/v7/widget/a/a;->akW:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/a/a;->alc:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/a/a;->akZ:F

    iget v1, p0, Landroid/support/v7/widget/a/a;->akX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private ci(I)I
    .locals 7

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v6, 0x0

    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/support/v7/widget/a/a;->jK:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/support/v7/widget/a/a;->akV:F

    invoke-static {v5}, Landroid/support/v7/widget/a/a$a;->t(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    cmpl-float v5, v3, v6

    if-lez v5, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    and-int v3, v1, p1

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    iget v3, p0, Landroid/support/v7/widget/a/a;->akU:F

    invoke-static {v3}, Landroid/support/v7/widget/a/a$a;->s(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/support/v7/widget/a/a$a;->jl()F

    move-result v2

    mul-float/2addr v1, v2

    and-int v2, p1, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private cj(I)I
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/support/v7/widget/a/a;->jK:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/support/v7/widget/a/a;->akV:F

    invoke-static {v5}, Landroid/support/v7/widget/a/a$a;->t(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    cmpl-float v5, v4, v6

    if-lez v5, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    and-int v4, v1, p1

    if-eqz v4, :cond_2

    if-ne v1, v0, :cond_2

    iget v4, p0, Landroid/support/v7/widget/a/a;->akU:F

    invoke-static {v4}, Landroid/support/v7/widget/a/a$a;->s(F)F

    move-result v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/support/v7/widget/a/a$a;->jl()F

    move-result v2

    mul-float/2addr v1, v2

    and-int v2, p1, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/a/a;->akX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private jf()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/view/MotionEvent;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/a/a;->akS:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    iget v0, p0, Landroid/support/v7/widget/a/a;->akT:F

    sub-float v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    :cond_3
    return-void
.end method

.method final a(ILandroid/view/MotionEvent;I)Z
    .locals 10

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-nez v3, :cond_0

    if-ne p1, v4, :cond_0

    iget v3, p0, Landroid/support/v7/widget/a/a;->alb:I

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/support/v7/widget/a/a$a;->jj()Z

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/a/a;->jK:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/a/a;->akS:F

    sub-float/2addr v4, v6

    iget v6, p0, Landroid/support/v7/widget/a/a;->akT:F

    sub-float/2addr v5, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/a/a;->aia:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    iget v8, p0, Landroid/support/v7/widget/a/a;->aia:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    :cond_3
    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    cmpg-float v5, v4, v9

    if-gez v5, :cond_4

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    :cond_4
    cmpl-float v4, v4, v9

    if-lez v4, :cond_5

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    :cond_5
    iput v9, p0, Landroid/support/v7/widget/a/a;->akX:F

    iput v9, p0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {p0, v2, v1}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    move v0, v1

    goto :goto_0

    :cond_6
    iget v4, p0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/a/a;->akS:F

    sub-float/2addr v5, v6

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/a/a;->akT:F

    sub-float/2addr v4, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/a/a;->aia:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    iget v6, p0, Landroid/support/v7/widget/a/a;->aia:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_2

    :cond_7
    cmpl-float v6, v5, v4

    if-lez v6, :cond_8

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_8
    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_9
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a/a;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->aB(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    cmpg-float v4, v5, v9

    if-gez v4, :cond_b

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    :cond_b
    cmpl-float v4, v5, v9

    if-lez v4, :cond_5

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    goto/16 :goto_0
.end method

.method final b(Landroid/support/v7/widget/RecyclerView$x;Z)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/a$c;

    iget-object v2, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    if-ne v2, p1, :cond_1

    iget-boolean v2, v0, Landroid/support/v7/widget/a/a$c;->alG:Z

    or-int/2addr v2, p2

    iput-boolean v2, v0, Landroid/support/v7/widget/a/a$c;->alG:Z

    iget-boolean v2, v0, Landroid/support/v7/widget/a/a$c;->uF:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Landroid/support/v7/widget/a/a$c;->alC:I

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final bc(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a/a;->bl(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->aB(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$x;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->akP:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/support/v7/widget/a/a$a;->x(Landroid/support/v7/widget/RecyclerView$x;)V

    goto :goto_0
.end method

.method final bl(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->alh:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->alh:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->aeM:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$d;)V

    :cond_0
    return-void
.end method

.method final c(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->alb:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/widget/a/a;->alm:J

    iget v4, p0, Landroid/support/v7/widget/a/a;->alb:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$x;Z)I

    iput p2, p0, Landroid/support/v7/widget/a/a;->alb:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->alh:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->aeM:Landroid/support/v7/widget/RecyclerView$d;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/a/a$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/a$5;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->aeM:Landroid/support/v7/widget/RecyclerView$d;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->aeM:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$d;)V

    :cond_2
    const/4 v0, 0x1

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v11, v0, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v0, 0x2

    if-eq v4, v0, :cond_9

    iget v0, p0, Landroid/support/v7/widget/a/a;->alb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/a/a$a;->v(Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/a/a$a;->aq(II)I

    move-result v1

    const v3, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    iget v3, p0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/a/a;->akX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->ci(I)I

    move-result v9

    if-lez v9, :cond_8

    and-int/2addr v0, v9

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v7/widget/a/a$a;->ap(II)I

    move-result v9

    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->jf()V

    sparse-switch v9, :sswitch_data_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x2

    if-ne v4, v0, :cond_b

    const/16 v3, 0x8

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akQ:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->b([F)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akQ:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akQ:[F

    const/4 v1, 0x1

    aget v6, v0, v1

    new-instance v0, Landroid/support/v7/widget/a/a$3;

    move-object v1, p0

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/a/a$3;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/RecyclerView$x;IIFFFFILandroid/support/v7/widget/RecyclerView$x;)V

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v7/widget/a/a$a;->c(Landroid/support/v7/widget/RecyclerView;I)J

    move-result-wide v2

    iget-object v1, v0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    iget-object v0, v0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    :cond_4
    move v1, v0

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v0

    and-int/2addr v0, v11

    iget v2, p0, Landroid/support/v7/widget/a/a;->alb:I

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/a/a;->alc:I

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akY:F

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akZ:F

    iput-object p1, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    if-nez v1, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i;->afg:Z

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    invoke-static {v0}, Landroid/support/v7/widget/a/a$a;->w(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->cj(I)I

    move-result v9

    if-gtz v9, :cond_3

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->cj(I)I

    move-result v9

    if-gtz v9, :cond_3

    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->ci(I)I

    move-result v9

    if-lez v9, :cond_9

    and-int/2addr v0, v9

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v7/widget/a/a$a;->ap(II)I

    move-result v9

    goto/16 :goto_1

    :sswitch_0
    const/4 v8, 0x0

    iget v0, p0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v0, v1

    goto/16 :goto_2

    :sswitch_1
    const/4 v7, 0x0

    iget v0, p0, Landroid/support/v7/widget/a/a;->akX:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    goto/16 :goto_2

    :cond_b
    if-lez v9, :cond_c

    const/4 v3, 0x2

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x4

    goto/16 :goto_3

    :cond_d
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/a/a;->bl(Landroid/view/View;)V

    invoke-static {v2}, Landroid/support/v7/widget/a/a$a;->x(Landroid/support/v7/widget/RecyclerView$x;)V

    goto/16 :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->all:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->aef:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aef:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/a$c;

    iget-object v0, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-static {v0}, Landroid/support/v7/widget/a/a$a;->x(Landroid/support/v7/widget/RecyclerView$x;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Landroid/support/v7/widget/a/a;->alh:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/a;->ali:I

    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->jf()V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->alk:Landroid/support/v7/widget/a/a$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->alk:Landroid/support/v7/widget/a/a$b;

    iput-boolean v3, v0, Landroid/support/v7/widget/a/a$b;->alw:Z

    iput-object v2, p0, Landroid/support/v7/widget/a/a;->alk:Landroid/support/v7/widget/a/a$b;

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->alj:Landroid/support/v4/view/d;

    if-eqz v0, :cond_5

    iput-object v2, p0, Landroid/support/v7/widget/a/a;->alj:Landroid/support/v4/view/d;

    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/f/a$a;->item_touch_helper_swipe_escape_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/a/a;->akU:F

    sget v1, Landroid/support/v7/f/a$a;->item_touch_helper_swipe_escape_max_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->akV:F

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->aia:I

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->all:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->aef:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView;->aef:Ljava/util/List;

    :cond_6
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aef:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/support/v7/widget/a/a$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/a$b;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->alk:Landroid/support/v7/widget/a/a$b;

    new-instance v0, Landroid/support/v4/view/d;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->alk:Landroid/support/v7/widget/a/a$b;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/d;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->alj:Landroid/support/v4/view/d;

    goto/16 :goto_0
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method final h(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/widget/a/a;->akY:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->akW:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/a/a;->akZ:F

    iget v5, p0, Landroid/support/v7/widget/a/a;->akX:F

    add-float/2addr v2, v5

    invoke-static {v0, v3, v4, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/View;FFFF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/a$c;

    iget-object v1, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    iget v5, v0, Landroid/support/v7/widget/a/a$c;->alE:F

    iget v0, v0, Landroid/support/v7/widget/a/a$c;->alF:F

    invoke-static {v1, v3, v4, v5, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/view/View;FFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-lez v5, :cond_0

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 18

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/a/a;->ali:I

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->akQ:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/a/a;->b([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->akQ:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->akQ:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    move v10, v2

    move v11, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/a/a;->alb:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    const/4 v3, 0x0

    move v12, v3

    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/a/a$c;

    iget v4, v3, Landroid/support/v7/widget/a/a$c;->alx:F

    iget v5, v3, Landroid/support/v7/widget/a/a$c;->alz:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/a/a$c;->alE:F

    :goto_2
    iget v4, v3, Landroid/support/v7/widget/a/a$c;->aly:F

    iget v5, v3, Landroid/support/v7/widget/a/a$c;->alA:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/a/a$c;->alF:F

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    iget-object v5, v3, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget v6, v3, Landroid/support/v7/widget/a/a$c;->alE:F

    iget v7, v3, Landroid/support/v7/widget/a/a$c;->alF:F

    iget v8, v3, Landroid/support/v7/widget/a/a$c;->alb:I

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/a/a$a;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;FFIZ)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_1

    :cond_0
    iget v4, v3, Landroid/support/v7/widget/a/a$c;->alx:F

    iget v5, v3, Landroid/support/v7/widget/a/a$c;->alH:F

    iget v6, v3, Landroid/support/v7/widget/a/a$c;->alz:F

    iget v7, v3, Landroid/support/v7/widget/a/a$c;->alx:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/a/a$c;->alE:F

    goto :goto_2

    :cond_1
    iget v4, v3, Landroid/support/v7/widget/a/a$c;->aly:F

    iget v5, v3, Landroid/support/v7/widget/a/a$c;->alH:F

    iget v6, v3, Landroid/support/v7/widget/a/a$c;->alA:F

    iget v7, v3, Landroid/support/v7/widget/a/a$c;->aly:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/a/a$c;->alF:F

    goto :goto_3

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v13

    move v6, v11

    move v7, v10

    move v8, v15

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/a/a$a;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;FFIZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void

    :cond_4
    move v10, v2

    move v11, v3

    goto/16 :goto_0
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->akQ:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->b([F)V

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v5, p0, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/a$c;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v0, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/a/a$a;->y(Landroid/support/v7/widget/RecyclerView$x;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/a/a$a;->y(Landroid/support/v7/widget/RecyclerView$x;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    add-int/lit8 v0, v6, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/a$c;

    iget-boolean v3, v0, Landroid/support/v7/widget/a/a$c;->uF:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Landroid/support/v7/widget/a/a$c;->alD:Z

    if-nez v3, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, Landroid/support/v7/widget/a/a$c;->uF:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method final u(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->alb:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/support/v7/widget/a/a$a;->jm()F

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->akY:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->akW:F

    add-float/2addr v1, v2

    float-to-int v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->akZ:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->akX:F

    add-float/2addr v1, v2

    float-to-int v6, v1

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v7/widget/a/a;->alg:Ljava/util/List;

    :goto_1
    invoke-static {}, Landroid/support/v7/widget/a/a$a;->jk()I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->akY:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->akW:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v7, v1, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->akZ:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->akX:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v8, v1, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v7

    add-int/lit8 v9, v1, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v10, v1, 0x0

    add-int v1, v7, v9

    div-int/lit8 v11, v1, 0x2

    add-int v1, v8, v10

    div-int/lit8 v12, v1, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v14

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v14, :cond_6

    invoke-virtual {v13, v4}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    if-eq v1, v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v8, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gt v2, v10, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-lt v2, v7, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->aB(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v15

    invoke-static {}, Landroid/support/v7/widget/a/a$a;->jg()Z

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v2, v2

    mul-int/2addr v1, v1

    add-int v16, v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v17

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    move/from16 v0, v17

    if-ge v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alg:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, v16

    if-le v0, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    invoke-interface {v1, v3, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alg:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v5, v6}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView$x;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->alg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->getAdapterPosition()I

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$x;->getAdapterPosition()I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/a/a$a;->jh()Z

    goto/16 :goto_0
.end method
