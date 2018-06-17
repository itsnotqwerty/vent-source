.class public final Landroid/support/constraint/a/a/k;
.super Landroid/support/constraint/a/a/l;


# instance fields
.field value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/a/a/l;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/k;->value:F

    return-void
.end method


# virtual methods
.method public final p(I)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/k;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/k;->value:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Landroid/support/constraint/a/a/k;->value:F

    iget v0, p0, Landroid/support/constraint/a/a/k;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/k;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/k;->aU()V

    :cond_2
    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-super {p0}, Landroid/support/constraint/a/a/l;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/k;->value:F

    return-void
.end method
