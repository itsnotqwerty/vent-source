.class public final Landroid/support/constraint/a/a/a;
.super Landroid/support/constraint/a/a/g;


# instance fields
.field public fr:I

.field private fs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public ft:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/constraint/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/a;->fr:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/a/a/a;->fs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/a/a/a;->ft:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/e;)V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    aput-object v3, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    aput-object v3, v0, v9

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    aput-object v3, v0, v2

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    aput-object v4, v0, v3

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, v0

    invoke-virtual {p1, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    iput-object v4, v3, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/support/constraint/a/a/a;->fr:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gw:[Landroid/support/constraint/a/a/c;

    iget v3, p0, Landroid/support/constraint/a/a/a;->fr:I

    aget-object v4, v0, v3

    move v0, v1

    :goto_1
    iget v3, p0, Landroid/support/constraint/a/a/a;->hK:I

    if-ge v0, v3, :cond_14

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->hJ:[Landroid/support/constraint/a/a/d;

    aget-object v3, v3, v0

    iget-boolean v5, p0, Landroid/support/constraint/a/a/a;->ft:Z

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->au()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_1
    iget v5, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-ne v5, v2, :cond_9

    :cond_2
    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->aM()I

    move-result v5

    sget v6, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v5, v6, :cond_9

    move v0, v2

    :goto_2
    iget v3, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-ne v3, v2, :cond_c

    :cond_3
    iget-object v3, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->aM()I

    move-result v3

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v3, v5, :cond_4

    move v0, v1

    :cond_4
    :goto_3
    move v3, v1

    :goto_4
    iget v5, p0, Landroid/support/constraint/a/a/a;->hK:I

    if-ge v3, v5, :cond_f

    iget-object v5, p0, Landroid/support/constraint/a/a/a;->hJ:[Landroid/support/constraint/a/a/d;

    aget-object v5, v5, v3

    iget-boolean v6, p0, Landroid/support/constraint/a/a/a;->ft:Z

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->au()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    iget-object v6, v5, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    iget v7, p0, Landroid/support/constraint/a/a/a;->fr:I

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    iget-object v5, v5, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    iget v7, p0, Landroid/support/constraint/a/a/a;->fr:I

    aget-object v5, v5, v7

    iput-object v6, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget v5, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-ne v5, v9, :cond_d

    :cond_6
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v7

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->aq()Landroid/support/constraint/a/h;

    move-result-object v8

    iput v1, v8, Landroid/support/constraint/a/h;->fe:I

    invoke-virtual {v7, v5, v6, v8, v1}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    if-eqz v0, :cond_7

    iget-object v5, v7, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v5, v8}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v7, v5, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_7
    invoke-virtual {p1, v7}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    iget v5, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-eq v5, v9, :cond_a

    iget v5, p0, Landroid/support/constraint/a/a/a;->fr:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    :cond_a
    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->aN()I

    move-result v3

    sget v5, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v3, v5, :cond_b

    move v0, v2

    goto :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    iget-object v3, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->aN()I

    move-result v3

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v3, v5, :cond_4

    move v0, v1

    goto :goto_3

    :cond_d
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v7

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->aq()Landroid/support/constraint/a/h;

    move-result-object v8

    iput v1, v8, Landroid/support/constraint/a/h;->fe:I

    invoke-virtual {v7, v5, v6, v8, v1}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    if-eqz v0, :cond_e

    iget-object v5, v7, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v5, v8}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v7, v5, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_e
    invoke-virtual {p1, v7}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    goto :goto_5

    :cond_f
    iget v3, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-nez v3, :cond_11

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v3, v1, v11}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gz:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v2, v1, v10}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_10
    :goto_6
    return-void

    :cond_11
    iget v3, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-ne v3, v2, :cond_12

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v3, v1, v11}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gz:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v2, v1, v10}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_6

    :cond_12
    iget v2, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-ne v2, v9, :cond_13

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v3, v1, v11}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gz:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v2, v1, v10}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_6

    :cond_13
    iget v2, p0, Landroid/support/constraint/a/a/a;->fr:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v2, v3, v1, v11}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->gz:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v2, v1, v10}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_6

    :cond_14
    move v0, v1

    goto/16 :goto_2
.end method

.method public final au()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final av()V
    .locals 1

    invoke-super {p0}, Landroid/support/constraint/a/a/g;->av()V

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->fs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final aw()V
    .locals 8

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/constraint/a/a/a;->fr:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object v2, v1

    :goto_1
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->fs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v3, v0

    :goto_2
    if-ge v4, v5, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->fs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/j;

    iget v6, v0, Landroid/support/constraint/a/a/j;->state:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget v6, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/constraint/a/a/a;->fr:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    :cond_1
    iget v6, v0, Landroid/support/constraint/a/a/j;->hQ:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_5

    iget v1, v0, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    move v3, v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object v2, v1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move v0, v1

    goto :goto_1

    :cond_2
    iget v6, v0, Landroid/support/constraint/a/a/j;->hQ:F

    cmpl-float v6, v6, v3

    if-lez v6, :cond_5

    iget v1, v0, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v0

    iget-wide v4, v0, Landroid/support/constraint/a/f;->eR:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/support/constraint/a/f;->eR:J

    :cond_4
    iput-object v1, v2, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput v3, v2, Landroid/support/constraint/a/a/j;->hQ:F

    invoke-virtual {v2}, Landroid/support/constraint/a/a/j;->aU()V

    iget v0, p0, Landroid/support/constraint/a/a/a;->fr:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final i(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gz:Landroid/support/constraint/a/a/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gz:Landroid/support/constraint/a/a/d;

    check-cast v0, Landroid/support/constraint/a/a/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/a;->fr:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    :goto_1
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/constraint/a/a/j;->type:I

    iget v1, p0, Landroid/support/constraint/a/a/a;->fr:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/constraint/a/a/a;->fr:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_2
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    :goto_2
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->fs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Landroid/support/constraint/a/a/a;->hK:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/a;->hJ:[Landroid/support/constraint/a/a/d;

    aget-object v2, v2, v1

    iget-boolean v4, p0, Landroid/support/constraint/a/a/a;->ft:Z

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->au()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget v4, p0, Landroid/support/constraint/a/a/a;->fr:I

    packed-switch v4, :pswitch_data_1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_4

    iget-object v4, p0, Landroid/support/constraint/a/a/a;->fs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/l;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gp:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->gr:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->gq:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    goto :goto_2

    :pswitch_4
    iget-object v2, v2, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_4

    :pswitch_5
    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_4

    :pswitch_6
    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_4

    :pswitch_7
    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
