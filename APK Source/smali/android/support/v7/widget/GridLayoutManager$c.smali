.class public abstract Landroid/support/v7/widget/GridLayoutManager$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final abD:Landroid/util/SparseIntArray;

.field private abE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abE:Z

    return-void
.end method

.method public static P(II)I
    .locals 4

    const/4 v2, 0x0

    move v3, v2

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v3, p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, p1, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public N(II)I
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-ne v3, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abE:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_3

    add-int v4, v2, v0

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-ge v5, p1, :cond_2

    add-int/lit8 v2, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    if-ltz v0, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    :goto_2
    if-ltz v0, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    :goto_3
    move v4, v0

    :goto_4
    if-ge v4, p1, :cond_7

    add-int/lit8 v0, v2, 0x1

    if-ne v0, p2, :cond_6

    move v0, v1

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_4

    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    :cond_6
    if-le v0, p2, :cond_4

    move v0, v3

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v2, 0x1

    if-gt v0, p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_8
    move v0, v1

    move v2, v1

    goto :goto_3
.end method

.method final O(II)I
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abE:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$c;->N(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$c;->N(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$c;->abD:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method
