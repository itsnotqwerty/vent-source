.class public final Landroid/support/v7/widget/RecyclerView$t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private afO:I

.field private afP:I

.field afQ:I

.field private afR:Z

.field private afS:I

.field private jj:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$t$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afQ:I

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afR:Z

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afS:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afO:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afP:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afO:I

    iput p2, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afP:I

    iput p3, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$t$a;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afR:Z

    return-void
.end method

.method final f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afQ:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afQ:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afQ:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->bE(I)V

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afR:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afR:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->aeB:Landroid/support/v7/widget/RecyclerView$w;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afO:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afP:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$w;->ah(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$w;->i(III)V

    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afS:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afS:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afR:Z

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->aeB:Landroid/support/v7/widget/RecyclerView$w;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afO:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afP:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$w;->i(III)V

    goto :goto_1

    :cond_5
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->aeB:Landroid/support/v7/widget/RecyclerView$w;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afO:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afP:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$t$a;->jj:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t$a;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$w;->b(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    :cond_6
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$t$a;->afS:I

    goto :goto_0
.end method
