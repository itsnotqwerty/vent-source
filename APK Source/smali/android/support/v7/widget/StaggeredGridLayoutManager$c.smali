.class final Landroid/support/v7/widget/StaggeredGridLayoutManager$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    }
.end annotation


# instance fields
.field aiy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;",
            ">;"
        }
    .end annotation
.end field

.field mData:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    iget v4, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    iget v3, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method final al(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->ca(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    add-int v1, p1, p2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-eqz v0, :cond_0

    add-int v2, p1, p2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v3, p1, :cond_2

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-ge v3, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    sub-int/2addr v3, p2

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    goto :goto_1
.end method

.method final am(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->ca(I)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    add-int v2, p1, p2

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    add-int v1, p1, p2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v2, p1, :cond_2

    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    add-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final bY(I)I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->bZ(I)I

    move-result v0

    return v0
.end method

.method final bZ(I)I
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->cb(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v0, p1, :cond_3

    :goto_2
    if-eq v2, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    :goto_3
    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v2, v2

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v0, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method final ca(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v0, v0

    :goto_1
    if-gt v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    array-length v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method public final cb(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-eq v3, p1, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method final clear()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->mData:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    return-void
.end method

.method public final l(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c;->aiy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v4, p2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->mPosition:I

    if-lt v4, p1, :cond_3

    if-eqz p3, :cond_0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiz:I

    if-eq v4, p3, :cond_0

    iget-boolean v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$c$a;->aiB:Z

    if-nez v4, :cond_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
