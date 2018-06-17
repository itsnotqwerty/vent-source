.class public final Landroid/support/constraint/a/a/h;
.super Ljava/lang/Object;


# static fields
.field static hL:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/a/a/h;->hL:[Z

    return-void
.end method

.method static a(ILandroid/support/constraint/a/a/d;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aB()V

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    and-int/lit8 v0, p0, 0x8

    const/16 v7, 0x8

    if-ne v0, v7, :cond_2

    move v0, v1

    :goto_0
    iget v7, v3, Landroid/support/constraint/a/a/j;->type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, v5, Landroid/support/constraint/a/a/j;->type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget-object v7, p1, Landroid/support/constraint/a/a/d;->gy:[I

    aget v7, v7, v2

    sget v8, Landroid/support/constraint/a/a/d$a;->hh:I

    if-ne v7, v8, :cond_a

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_4

    iput v1, v3, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v5, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v5, v3, v1, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    :cond_0
    :goto_1
    iget v2, v4, Landroid/support/constraint/a/a/j;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v6, Landroid/support/constraint/a/a/j;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gy:[I

    aget v2, v2, v1

    sget v3, Landroid/support/constraint/a/a/d$a;->hh:I

    if-ne v2, v3, :cond_1a

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_14

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_14

    iput v1, v4, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v6, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v6, v4, v1, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    :goto_2
    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iput v1, v0, Landroid/support/constraint/a/a/j;->type:I

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v1, p1, Landroid/support/constraint/a/a/d;->gK:I

    neg-int v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    invoke-virtual {v5, v3, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto :goto_1

    :cond_4
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_6

    iput v1, v3, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v5, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v5, v3, v1, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    invoke-virtual {v5, v3, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto :goto_1

    :cond_6
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_8

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_8

    iput v1, v3, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v5, Landroid/support/constraint/a/a/j;->type:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v3, v5, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v3, v5, v11, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v3, v5, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_0

    iput v9, v3, Landroid/support/constraint/a/a/j;->type:I

    iput v9, v5, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v3, v5, v11, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v5, v3, v1, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v5, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v3, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    goto/16 :goto_1

    :cond_a
    iget-object v7, p1, Landroid/support/constraint/a/a/d;->gy:[I

    aget v7, v7, v2

    sget v8, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v7, v8, :cond_0

    invoke-static {p1, v2}, Landroid/support/constraint/a/a/h;->b(Landroid/support/constraint/a/a/d;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    iput v1, v3, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v5, Landroid/support/constraint/a/a/j;->type:I

    iget-object v7, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v7, :cond_c

    iget-object v7, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v7, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v5, v3, v1, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5, v3, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v7, :cond_e

    iget-object v7, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v7, :cond_e

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v5, v3, v1, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v5, v3, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_1

    :cond_e
    iget-object v7, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v7, :cond_10

    iget-object v7, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v7, :cond_10

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v3, v5, v11, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_1

    :cond_f
    neg-int v2, v2

    invoke-virtual {v3, v5, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_1

    :cond_10
    iget-object v7, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v7, :cond_0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    :cond_11
    iget v7, p1, Landroid/support/constraint/a/a/d;->gA:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_12

    const/4 v2, 0x3

    iput v2, v3, Landroid/support/constraint/a/a/j;->type:I

    const/4 v2, 0x3

    iput v2, v5, Landroid/support/constraint/a/a/j;->type:I

    invoke-virtual {v3, v5, v10}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {v5, v3, v10}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    goto/16 :goto_1

    :cond_12
    iput v9, v3, Landroid/support/constraint/a/a/j;->type:I

    iput v9, v5, Landroid/support/constraint/a/a/j;->type:I

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v7}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    int-to-float v7, v2

    invoke-virtual {v5, v3, v7}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    invoke-virtual {v6, v4, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_2

    :cond_14
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_16

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_16

    iput v1, v4, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v6, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v6, v4, v1, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    :goto_4
    iget v0, p1, Landroid/support/constraint/a/a/d;->gK:I

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v1, p1, Landroid/support/constraint/a/a/d;->gK:I

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    invoke-virtual {v6, v4, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto :goto_4

    :cond_16
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v2, :cond_18

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_18

    iput v1, v4, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v6, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v4, v6, v11, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    :goto_5
    iget v0, p1, Landroid/support/constraint/a/a/d;->gK:I

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v1, p1, Landroid/support/constraint/a/a/d;->gK:I

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v4, v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto :goto_5

    :cond_18
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v2, :cond_1

    iput v9, v4, Landroid/support/constraint/a/a/j;->type:I

    iput v9, v6, Landroid/support/constraint/a/a/j;->type:I

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v4, v6, v11, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v6, v4, v1, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    :goto_6
    iget v0, p1, Landroid/support/constraint/a/a/d;->gK:I

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v1, p1, Landroid/support/constraint/a/a/d;->gK:I

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3

    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v4, v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v4, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    goto :goto_6

    :cond_1a
    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gy:[I

    aget v2, v2, v1

    sget v3, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v2, v3, :cond_1

    invoke-static {p1, v1}, Landroid/support/constraint/a/a/h;->b(Landroid/support/constraint/a/a/d;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v2

    iput v1, v4, Landroid/support/constraint/a/a/j;->type:I

    iput v1, v6, Landroid/support/constraint/a/a/j;->type:I

    iget-object v3, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v3, :cond_1c

    iget-object v3, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v3, :cond_1c

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v6, v4, v1, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_3

    :cond_1b
    invoke-virtual {v6, v4, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3

    :cond_1c
    iget-object v3, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v3, :cond_1e

    iget-object v3, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v3, :cond_1e

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v6, v4, v1, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_3

    :cond_1d
    invoke-virtual {v6, v4, v2}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3

    :cond_1e
    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v1, :cond_20

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_20

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v4, v6, v11, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V

    goto/16 :goto_3

    :cond_1f
    neg-int v0, v2

    invoke-virtual {v4, v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3

    :cond_20
    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    :cond_21
    iget v0, p1, Landroid/support/constraint/a/a/d;->gA:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_22

    const/4 v0, 0x3

    iput v0, v4, Landroid/support/constraint/a/a/j;->type:I

    const/4 v0, 0x3

    iput v0, v6, Landroid/support/constraint/a/a/j;->type:I

    invoke-virtual {v4, v6, v10}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {v6, v4, v10}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    goto/16 :goto_3

    :cond_22
    iput v9, v4, Landroid/support/constraint/a/a/j;->type:I

    iput v9, v6, Landroid/support/constraint/a/a/j;->type:I

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {v4, v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    int-to-float v0, v2

    invoke-virtual {v6, v4, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    iget v0, p1, Landroid/support/constraint/a/a/d;->gK:I

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v1, p1, Landroid/support/constraint/a/a/d;->gK:I

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_3
.end method

.method static a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/d;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->gy:[I

    aget v0, v0, v2

    sget v1, Landroid/support/constraint/a/a/d$a;->hi:I

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Landroid/support/constraint/a/a/d;->gy:[I

    aget v0, v0, v2

    sget v1, Landroid/support/constraint/a/a/d$a;->hk:I

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->fy:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget v2, v2, Landroid/support/constraint/a/a/c;->fy:I

    sub-int/2addr v1, v2

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v3, p2, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v3, p2, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iput v5, p2, Landroid/support/constraint/a/a/d;->fW:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/d;->c(II)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->gy:[I

    aget v0, v0, v4

    sget v1, Landroid/support/constraint/a/a/d$a;->hi:I

    if-eq v0, v1, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/d;->gy:[I

    aget v0, v0, v4

    sget v1, Landroid/support/constraint/a/a/d$a;->hk:I

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->fy:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget v2, v2, Landroid/support/constraint/a/a/c;->fy:I

    sub-int/2addr v1, v2

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v3, p2, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v3, p2, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    iget v2, p2, Landroid/support/constraint/a/a/d;->gK:I

    if-gtz v2, :cond_1

    iget v2, p2, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v3, p2, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p2, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget v3, p2, Landroid/support/constraint/a/a/d;->gK:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    :cond_2
    iput v5, p2, Landroid/support/constraint/a/a/d;->fX:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/d;->d(II)V

    :cond_3
    return-void
.end method

.method static a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)Z
    .locals 18

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    sget v2, Landroid/support/constraint/a/a/d$a;->hi:I

    if-nez p2, :cond_42

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/constraint/a/a/e;->hm:Z

    if-eqz v2, :cond_42

    move-object/from16 v2, p4

    :goto_0
    if-nez v16, :cond_4

    iget-object v3, v2, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v4, v3, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    if-eq v4, v2, :cond_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    move-object v4, v2

    move-object/from16 v6, p4

    :goto_2
    if-nez p2, :cond_b

    iget v2, v4, Landroid/support/constraint/a/a/d;->gX:I

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    iget v3, v4, Landroid/support/constraint/a/a/d;->gX:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    const/4 v3, 0x1

    :goto_4
    iget v4, v4, Landroid/support/constraint/a/a/d;->gX:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_a

    const/4 v4, 0x1

    :goto_5
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    move v10, v11

    :goto_6
    if-nez v16, :cond_1c

    iget-object v11, v6, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    const/16 v17, 0x0

    aput-object v17, v11, p2

    iget v11, v6, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v11, v0, :cond_41

    if-eqz v14, :cond_5

    iget-object v11, v14, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aput-object v6, v11, p2

    :cond_5
    if-nez v15, :cond_6

    move-object v15, v6

    :cond_6
    add-int/lit8 v11, v10, 0x1

    if-nez p2, :cond_f

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v13

    :goto_7
    if-eq v6, v15, :cond_7

    iget-object v13, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    :cond_7
    iget-object v13, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget-object v13, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v14, p3, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v13, v10

    move-object v14, v6

    :goto_8
    iget-object v10, v6, Landroid/support/constraint/a/a/d;->hc:[Landroid/support/constraint/a/a/d;

    const/16 v17, 0x0

    aput-object v17, v10, p2

    iget v10, v6, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v10, v0, :cond_16

    iget-object v10, v6, Landroid/support/constraint/a/a/d;->gy:[I

    aget v10, v10, p2

    sget v17, Landroid/support/constraint/a/a/d$a;->hj:I

    move/from16 v0, v17

    if-ne v10, v0, :cond_16

    add-int/lit8 v9, v9, 0x1

    if-nez p2, :cond_12

    iget v10, v6, Landroid/support/constraint/a/a/d;->ga:I

    if-eqz v10, :cond_10

    const/4 v2, 0x0

    :goto_9
    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    iget v2, v4, Landroid/support/constraint/a/a/d;->gY:I

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_a
    iget v3, v4, Landroid/support/constraint/a/a/d;->gY:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_d

    const/4 v3, 0x1

    :goto_b
    iget v4, v4, Landroid/support/constraint/a/a/d;->gY:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_e

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v13

    goto :goto_7

    :cond_10
    iget v10, v6, Landroid/support/constraint/a/a/d;->gc:I

    if-nez v10, :cond_11

    iget v10, v6, Landroid/support/constraint/a/a/d;->gd:I

    if-eqz v10, :cond_15

    :cond_11
    const/4 v2, 0x0

    goto :goto_9

    :cond_12
    iget v10, v6, Landroid/support/constraint/a/a/d;->gb:I

    if-eqz v10, :cond_13

    const/4 v2, 0x0

    goto :goto_9

    :cond_13
    iget v10, v6, Landroid/support/constraint/a/a/d;->gf:I

    if-nez v10, :cond_14

    iget v10, v6, Landroid/support/constraint/a/a/d;->gg:I

    if-eqz v10, :cond_15

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    :cond_15
    iget-object v10, v6, Landroid/support/constraint/a/a/d;->hb:[F

    aget v10, v10, p2

    add-float/2addr v8, v10

    if-nez v7, :cond_19

    move-object v7, v6

    :goto_c
    move-object v5, v6

    :cond_16
    iget-object v10, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v17, p3, 0x1

    aget-object v10, v10, v17

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v10, :cond_1a

    iget-object v0, v10, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v10, v10, p3

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v10, :cond_17

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v10, v10, p3

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    if-eq v10, v6, :cond_18

    :cond_17
    const/16 v17, 0x0

    :cond_18
    :goto_d
    if-eqz v17, :cond_1b

    move v10, v11

    move-object/from16 v6, v17

    goto/16 :goto_6

    :cond_19
    iget-object v5, v5, Landroid/support/constraint/a/a/d;->hc:[Landroid/support/constraint/a/a/d;

    aput-object v6, v5, p2

    goto :goto_c

    :cond_1a
    const/16 v17, 0x0

    goto :goto_d

    :cond_1b
    const/16 v16, 0x1

    move v10, v11

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, p3

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v16, v0

    iget-object v5, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, p3, 0x1

    aget-object v5, v5, v7

    iget-object v7, v5, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-eqz v5, :cond_1d

    iget-object v5, v7, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-nez v5, :cond_1e

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v5, v5, Landroid/support/constraint/a/a/j;->state:I

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1f

    iget-object v5, v7, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v5, v5, Landroid/support/constraint/a/a/j;->state:I

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1f

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1f
    if-lez v9, :cond_20

    if-eq v9, v10, :cond_20

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_20
    const/4 v5, 0x0

    if-nez v4, :cond_21

    if-nez v2, :cond_21

    if-eqz v3, :cond_23

    :cond_21
    if-eqz v15, :cond_22

    iget-object v5, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v5

    int-to-float v5, v5

    :cond_22
    if-eqz v14, :cond_23

    iget-object v11, v14, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v17, p3, 0x1

    aget-object v11, v11, v17

    invoke-virtual {v11}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    :cond_23
    move-object/from16 v0, v16

    iget-object v11, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v11, v11, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v7, v7, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v7, v7, Landroid/support/constraint/a/a/j;->hQ:F

    cmpg-float v17, v11, v7

    if-gez v17, :cond_24

    sub-float/2addr v7, v11

    sub-float/2addr v7, v13

    :goto_e
    if-lez v9, :cond_2b

    if-ne v9, v10, :cond_2b

    iget-object v3, v6, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v3, :cond_25

    iget-object v3, v6, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->gy:[I

    aget v3, v3, p2

    sget v4, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v3, v4, :cond_25

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_24
    sub-float v7, v11, v7

    sub-float/2addr v7, v13

    goto :goto_e

    :cond_25
    add-float v3, v7, v13

    sub-float/2addr v3, v12

    if-eqz v2, :cond_40

    sub-float v4, v12, v5

    sub-float/2addr v3, v4

    move v5, v3

    :goto_f
    if-eqz v2, :cond_3f

    iget-object v2, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v11, v2

    iget-object v2, v15, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, p2

    if-eqz v2, :cond_26

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    :cond_26
    :goto_10
    if-eqz v15, :cond_2a

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_27

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eT:J

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eT:J

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eK:J

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eK:J

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eQ:J

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eQ:J

    :cond_27
    iget-object v2, v15, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aget-object v4, v2, p2

    if-nez v4, :cond_28

    if-ne v15, v14, :cond_3e

    :cond_28
    int-to-float v2, v9

    div-float v2, v5, v2

    const/4 v6, 0x0

    cmpl-float v6, v8, v6

    if-lez v6, :cond_29

    iget-object v2, v15, Landroid/support/constraint/a/a/d;->hb:[F

    aget v2, v2, p2

    mul-float/2addr v2, v5

    div-float/2addr v2, v8

    :cond_29
    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    invoke-virtual {v6, v7, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    add-float v10, v3, v2

    invoke-virtual {v6, v7, v10}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    add-float/2addr v2, v3

    iget-object v3, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, p3, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_11
    move-object v15, v4

    move v3, v2

    goto/16 :goto_10

    :cond_2a
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_2b
    cmpg-float v6, v7, v13

    if-gez v6, :cond_2c

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_2c
    if-eqz v4, :cond_30

    sub-float v2, v7, v5

    move-object/from16 v0, p4

    iget v3, v0, Landroid/support/constraint/a/a/d;->gO:F

    mul-float/2addr v2, v3

    add-float v3, v11, v2

    :goto_12
    if-eqz v15, :cond_38

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_2d

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->eT:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->eT:J

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->eK:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->eK:J

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->eQ:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->eQ:J

    :cond_2d
    iget-object v2, v15, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aget-object v4, v2, p2

    if-nez v4, :cond_2e

    if-ne v15, v14, :cond_3d

    :cond_2e
    if-nez p2, :cond_2f

    invoke-virtual {v15}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_13
    iget-object v5, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    invoke-virtual {v5, v6, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v5, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    add-float v7, v3, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v5, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    iget-object v5, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    add-float/2addr v2, v3

    iget-object v3, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v5, p3, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_14
    move v3, v2

    move-object v15, v4

    goto :goto_12

    :cond_2f
    invoke-virtual {v15}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_13

    :cond_30
    if-nez v2, :cond_31

    if-eqz v3, :cond_38

    :cond_31
    if-eqz v2, :cond_35

    sub-float v4, v7, v5

    move v5, v4

    :goto_15
    add-int/lit8 v4, v10, 0x1

    int-to-float v4, v4

    div-float v4, v5, v4

    if-eqz v3, :cond_3b

    const/4 v4, 0x1

    if-le v10, v4, :cond_36

    add-int/lit8 v4, v10, -0x1

    int-to-float v4, v4

    div-float v4, v5, v4

    move v5, v4

    :goto_16
    add-float v4, v11, v5

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    if-le v10, v3, :cond_3a

    iget-object v3, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v11

    :goto_17
    if-eqz v2, :cond_32

    if-eqz v15, :cond_32

    iget-object v2, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    :cond_32
    :goto_18
    if-eqz v15, :cond_38

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_33

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eT:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eT:J

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eK:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eK:J

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eQ:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eQ:J

    :cond_33
    iget-object v2, v15, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aget-object v4, v2, p2

    if-nez v4, :cond_34

    if-ne v15, v14, :cond_39

    :cond_34
    if-nez p2, :cond_37

    invoke-virtual {v15}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_19
    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    invoke-virtual {v6, v7, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    add-float v8, v3, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    iget-object v6, v15, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    add-float/2addr v2, v5

    add-float/2addr v2, v3

    :goto_1a
    move v3, v2

    move-object v15, v4

    goto :goto_18

    :cond_35
    if-eqz v3, :cond_3c

    sub-float v4, v7, v5

    move v5, v4

    goto/16 :goto_15

    :cond_36
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v5, v4

    move v5, v4

    goto/16 :goto_16

    :cond_37
    invoke-virtual {v15}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_19

    :cond_38
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_39
    move v2, v3

    goto :goto_1a

    :cond_3a
    move v3, v4

    goto/16 :goto_17

    :cond_3b
    move v5, v4

    goto/16 :goto_16

    :cond_3c
    move v5, v7

    goto/16 :goto_15

    :cond_3d
    move v2, v3

    goto/16 :goto_14

    :cond_3e
    move v2, v3

    goto/16 :goto_11

    :cond_3f
    move v3, v11

    goto/16 :goto_10

    :cond_40
    move v5, v3

    goto/16 :goto_f

    :cond_41
    move v11, v10

    goto/16 :goto_8

    :cond_42
    move-object/from16 v4, p4

    move-object/from16 v6, p4

    goto/16 :goto_2
.end method

.method private static b(Landroid/support/constraint/a/a/d;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v2, v2, p1

    sget v3, Landroid/support/constraint/a/a/d$a;->hj:I

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/support/constraint/a/a/d;->gA:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gy:[I

    if-nez p1, :cond_2

    :goto_1
    aget v0, v2, v0

    sget v2, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    iget v2, p0, Landroid/support/constraint/a/a/d;->ga:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/d;->gc:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/d;->gd:I

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/support/constraint/a/a/d;->gb:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/d;->gf:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a/d;->gg:I

    if-eqz v2, :cond_4

    goto :goto_0
.end method
