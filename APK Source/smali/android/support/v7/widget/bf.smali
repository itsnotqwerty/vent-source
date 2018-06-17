.class final Landroid/support/v7/widget/bf;
.super Ljava/lang/Object;


# instance fields
.field EN:I

.field agA:I

.field agB:I

.field agC:Z

.field agz:I

.field hm:Z

.field tD:I

.field tF:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/bf;->tD:I

    iput v0, p0, Landroid/support/v7/widget/bf;->tF:I

    iput v1, p0, Landroid/support/v7/widget/bf;->agz:I

    iput v1, p0, Landroid/support/v7/widget/bf;->EN:I

    iput v0, p0, Landroid/support/v7/widget/bf;->agA:I

    iput v0, p0, Landroid/support/v7/widget/bf;->agB:I

    iput-boolean v0, p0, Landroid/support/v7/widget/bf;->hm:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/bf;->agC:Z

    return-void
.end method


# virtual methods
.method public final ai(II)V
    .locals 2

    const/high16 v1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/bf;->agz:I

    iput p2, p0, Landroid/support/v7/widget/bf;->EN:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bf;->agC:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/bf;->hm:Z

    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_0

    iput p2, p0, Landroid/support/v7/widget/bf;->tD:I

    :cond_0
    if-eq p1, v1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/bf;->tF:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/bf;->tD:I

    :cond_3
    if-eq p2, v1, :cond_1

    iput p2, p0, Landroid/support/v7/widget/bf;->tF:I

    goto :goto_0
.end method

.method public final aj(II)V
    .locals 2

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bf;->agC:Z

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/bf;->agA:I

    iput p1, p0, Landroid/support/v7/widget/bf;->tD:I

    :cond_0
    if-eq p2, v1, :cond_1

    iput p2, p0, Landroid/support/v7/widget/bf;->agB:I

    iput p2, p0, Landroid/support/v7/widget/bf;->tF:I

    :cond_1
    return-void
.end method
