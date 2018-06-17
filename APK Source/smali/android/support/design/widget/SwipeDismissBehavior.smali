.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$b;,
        Landroid/support/design/widget/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field jC:Landroid/support/v4/widget/r;

.field private final jN:Landroid/support/v4/widget/r$a;

.field nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

.field private nQ:Z

.field private nR:F

.field private nS:Z

.field nT:I

.field nU:F

.field nV:F

.field nW:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nR:F

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nU:F

    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nV:F

    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nW:F

    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jN:Landroid/support/v4/widget/r$a;

    return-void
.end method

.method static b(FFF)F
    .locals 2

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method static b(III)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static h(F)F
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nQ:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nS:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nR:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jN:Landroid/support/v4/widget/r$a;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/r;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/r$a;)Landroid/support/v4/widget/r;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/r;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nQ:Z

    iget-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nQ:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->nQ:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jN:Landroid/support/v4/widget/r$a;

    invoke-static {p1, v0}, Landroid/support/v4/widget/r;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/r$a;)Landroid/support/v4/widget/r;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/r;->d(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
