.class public abstract Landroid/support/v7/widget/az;
.super Ljava/lang/Object;


# instance fields
.field protected final adr:Landroid/support/v7/widget/RecyclerView$i;

.field ads:I

.field final lg:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/az;->ads:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/az;->lg:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/az;->adr:Landroid/support/v7/widget/RecyclerView$i;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$i;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/az;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/az;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/az$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/az$1;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/az$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/az$2;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract aG(Landroid/view/View;)I
.end method

.method public abstract aH(Landroid/view/View;)I
.end method

.method public abstract aI(Landroid/view/View;)I
.end method

.method public abstract aJ(Landroid/view/View;)I
.end method

.method public abstract aK(Landroid/view/View;)I
.end method

.method public abstract aL(Landroid/view/View;)I
.end method

.method public abstract bD(I)V
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method

.method public abstract hA()I
.end method

.method public abstract hB()I
.end method

.method public final hx()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Landroid/support/v7/widget/az;->ads:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/az;->hA()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/az;->ads:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract hy()I
.end method

.method public abstract hz()I
.end method
