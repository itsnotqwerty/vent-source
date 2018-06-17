.class public abstract Landroid/support/v7/widget/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static final alr:Landroid/support/v7/widget/a/b;

.field private static final als:Landroid/view/animation/Interpolator;

.field private static final alu:Landroid/view/animation/Interpolator;


# instance fields
.field private alv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/a/a$a$1;

    invoke-direct {v0}, Landroid/support/v7/widget/a/a$a$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/a$a;->als:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v7/widget/a/a$a$2;

    invoke-direct {v0}, Landroid/support/v7/widget/a/a$a$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/a$a;->alu:Landroid/view/animation/Interpolator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/a/c$a;

    invoke-direct {v0}, Landroid/support/v7/widget/a/c$a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/a$a;->alr:Landroid/support/v7/widget/a/b;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/widget/a/c$b;

    invoke-direct {v0}, Landroid/support/v7/widget/a/c$b;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/a$a;->alr:Landroid/support/v7/widget/a/b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/a$a;->alv:I

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$x;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$x;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$x;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v5, p2, v0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v6, p3, v0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v7, p2, v0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v8, p3, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v4, v0

    move-object v3, v2

    :goto_0
    if-ge v4, v9, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    if-lez v7, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v5

    if-gez v2, :cond_1

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v10, v11, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_1

    move-object v3, v0

    :goto_1
    if-gez v7, :cond_4

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, p2

    if-lez v1, :cond_4

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_4

    move-object v3, v0

    :goto_2
    if-gez v8, :cond_3

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p3

    if-lez v2, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move-object v3, v0

    :goto_3
    if-lez v8, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v6

    if-gez v1, :cond_2

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_2

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v0

    goto/16 :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    move-object v0, v3

    goto :goto_4

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static ap(II)I
    .locals 5

    const v4, 0xc0c0c

    and-int v0, p0, v4

    if-nez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    if-nez p1, :cond_1

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0

    :cond_1
    shl-int/lit8 v2, v0, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0
.end method

.method public static aq(II)I
    .locals 5

    const v4, 0x303030

    and-int v0, p0, v4

    if-nez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    if-nez p1, :cond_1

    shr-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0

    :cond_1
    shr-int/lit8 v2, v0, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0
.end method

.method public static c(Landroid/support/v7/widget/RecyclerView;I)J
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    const-wide/16 v0, 0xc8

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$f;->aeZ:J

    goto :goto_0

    :cond_2
    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$f;->aeY:J

    goto :goto_0
.end method

.method public static ck(I)I
    .locals 2

    or-int/lit8 v0, p0, 0x0

    shl-int/lit8 v0, v0, 0x0

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static jg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static ji()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static jj()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static jk()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static jl()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public static jm()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public static s(F)F
    .locals 0

    return p0
.end method

.method public static t(F)F
    .locals 0

    return p0
.end method

.method public static w(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public static x(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/a/a$a;->alr:Landroid/support/v7/widget/a/b;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/a/b;->bm(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;IIJ)I
    .locals 6

    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/support/v7/widget/a/a$a;->alv:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/f/a$a;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/a/a$a;->alv:I

    :cond_0
    iget v2, p0, Landroid/support/v7/widget/a/a$a;->alv:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v4, p3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Landroid/support/v7/widget/a/a$a;->alu:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-wide/16 v4, 0x7d0

    cmp-long v3, p4, v4

    if-lez v3, :cond_2

    :goto_0
    int-to-float v2, v2

    sget-object v3, Landroid/support/v7/widget/a/a$a;->als:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_1

    if-lez p3, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    long-to-float v0, p4

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;)I
    .locals 2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a/a$a;->v(Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/a/a$a;->aq(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;FFIZ)V
    .locals 8

    sget-object v0, Landroid/support/v7/widget/a/a$a;->alr:Landroid/support/v7/widget/a/b;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/a/b;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$x;I)V
.end method

.method public abstract jh()Z
.end method

.method public abstract v(Landroid/support/v7/widget/RecyclerView$x;)I
.end method

.method public y(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    return-void
.end method
