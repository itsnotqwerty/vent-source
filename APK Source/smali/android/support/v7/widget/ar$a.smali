.class final Landroid/support/v7/widget/ar$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field ZA:I

.field ZB:[I

.field Zz:I

.field bn:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final C(II)V
    .locals 5

    const/4 v4, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ar$a;->bn:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    if-nez v1, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget v0, p0, Landroid/support/v7/widget/ar$a;->bn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ar$a;->bn:I

    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    iget-object v2, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ar$a;->bn:I

    iget-object v0, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i;->afj:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    invoke-virtual {v1}, Landroid/support/v7/widget/f;->ga()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/support/v7/widget/RecyclerView$i$a;)V

    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/ar$a;->bn:I

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$i;->afk:I

    if-le v1, v2, :cond_2

    iget v1, p0, Landroid/support/v7/widget/ar$a;->bn:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$i;->afk:I

    iput-boolean p2, v0, Landroid/support/v7/widget/RecyclerView$i;->afl:Z

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$p;->io()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->ie()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/ar$a;->Zz:I

    iget v2, p0, Landroid/support/v7/widget/ar$a;->ZA:I

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/RecyclerView$i;->a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$i$a;)V

    goto :goto_0
.end method

.method final bp(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/ar$a;->bn:I

    mul-int/lit8 v2, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method final gI()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar$a;->ZB:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ar$a;->bn:I

    return-void
.end method