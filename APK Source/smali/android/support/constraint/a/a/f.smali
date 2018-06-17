.class public final Landroid/support/constraint/a/a/f;
.super Landroid/support/constraint/a/a/d;


# instance fields
.field protected hA:F

.field protected hB:I

.field protected hC:I

.field private hD:Landroid/support/constraint/a/a/c;

.field private hE:I

.field private hF:Z

.field private hG:I

.field private hH:Landroid/support/constraint/a/a/i;

.field private hI:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/constraint/a/a/d;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/a/a/f;->hA:F

    iput v2, p0, Landroid/support/constraint/a/a/f;->hB:I

    iput v2, p0, Landroid/support/constraint/a/a/f;->hC:I

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gp:Landroid/support/constraint/a/a/c;

    iput-object v1, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    iput v0, p0, Landroid/support/constraint/a/a/f;->hE:I

    iput-boolean v0, p0, Landroid/support/constraint/a/a/f;->hF:Z

    iput v0, p0, Landroid/support/constraint/a/a/f;->hG:I

    new-instance v1, Landroid/support/constraint/a/a/i;

    invoke-direct {v1}, Landroid/support/constraint/a/a/i;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/a/a/f;->hH:Landroid/support/constraint/a/a/i;

    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/a/a/f;->hI:I

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gx:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gx:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gw:[Landroid/support/constraint/a/a/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->gw:[Landroid/support/constraint/a/a/c;

    iget-object v3, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/f$1;->fE:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/support/constraint/a/a/f;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    :goto_0
    return-object v0

    :pswitch_1
    iget v0, p0, Landroid/support/constraint/a/a/f;->hE:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final a(F)V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/support/constraint/a/a/f;->hA:F

    iput v1, p0, Landroid/support/constraint/a/a/f;->hB:I

    iput v1, p0, Landroid/support/constraint/a/a/f;->hC:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/constraint/a/e;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    check-cast v0, Landroid/support/constraint/a/a/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v5

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gz:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->gy:[I

    aget v1, v1, v3

    sget v6, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_1
    iget v6, p0, Landroid/support/constraint/a/a/f;->hE:I

    if-nez v6, :cond_8

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v0

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/constraint/a/a/f;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->gy:[I

    aget v4, v4, v2

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_4

    :goto_2
    move-object v5, v1

    :goto_3
    iget v1, p0, Landroid/support/constraint/a/a/f;->hB:I

    if-eq v1, v8, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    iget v5, p0, Landroid/support/constraint/a/a/f;->hB:I

    invoke-virtual {p1, v1, v4, v5, v9}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget v1, p0, Landroid/support/constraint/a/a/f;->hC:I

    if-eq v1, v8, :cond_7

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v4, p0, Landroid/support/constraint/a/a/f;->hC:I

    neg-int v4, v4

    invoke-virtual {p1, v1, v0, v4, v9}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_0

    :cond_7
    iget v1, p0, Landroid/support/constraint/a/a/f;->hA:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/a/a/f;->hA:F

    iget-boolean v5, p0, Landroid/support/constraint/a/a/f;->hF:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_8
    move v2, v1

    move-object v0, v4

    goto :goto_3
.end method

.method public final aJ()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->gx:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final aO()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    invoke-static {v0}, Landroid/support/constraint/a/e;->i(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/f;->hE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->setX(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/f;->setY(I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->setHeight(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/f;->setWidth(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/f;->setX(I)V

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->setY(I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/f;->setWidth(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/f;->setHeight(I)V

    goto :goto_0
.end method

.method public final au()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i(I)V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/constraint/a/a/f;->hE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v2, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v2, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget v1, p0, Landroid/support/constraint/a/a/f;->hB:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v3, p0, Landroid/support/constraint/a/a/f;->hB:I

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gq:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v2, p0, Landroid/support/constraint/a/a/f;->hB:I

    invoke-virtual {v1, v0, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a/f;->hC:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v3, p0, Landroid/support/constraint/a/a/f;->hC:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gq:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v2, p0, Landroid/support/constraint/a/a/f;->hC:I

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/constraint/a/a/f;->hA:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aM()I

    move-result v1

    sget v2, Landroid/support/constraint/a/a/d$a;->hh:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/support/constraint/a/a/d;->db:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/a/a/f;->hA:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v2, v3, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->gq:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/constraint/a/a/f;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v2, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gq:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1, v2, v4}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget v1, p0, Landroid/support/constraint/a/a/f;->hB:I

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v3, p0, Landroid/support/constraint/a/a/f;->hB:I

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v2, p0, Landroid/support/constraint/a/a/f;->hB:I

    invoke-virtual {v1, v0, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Landroid/support/constraint/a/a/f;->hC:I

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v3, p0, Landroid/support/constraint/a/a/f;->hC:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v2, p0, Landroid/support/constraint/a/a/f;->hC:I

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Landroid/support/constraint/a/a/f;->hA:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aN()I

    move-result v1

    sget v2, Landroid/support/constraint/a/a/d$a;->hh:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/support/constraint/a/a/d;->dc:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/a/a/f;->hA:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->gp:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v2, v3, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->gr:Landroid/support/constraint/a/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;I)V

    goto/16 :goto_0
.end method

.method public final m(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/f;->hA:F

    iput p1, p0, Landroid/support/constraint/a/a/f;->hB:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/f;->hC:I

    :cond_0
    return-void
.end method

.method public final n(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/f;->hA:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/f;->hB:I

    iput p1, p0, Landroid/support/constraint/a/a/f;->hC:I

    :cond_0
    return-void
.end method

.method public final setOrientation(I)V
    .locals 4

    iget v0, p0, Landroid/support/constraint/a/a/f;->hE:I

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/constraint/a/a/f;->hE:I

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->gx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroid/support/constraint/a/a/f;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->go:Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    :goto_0
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/f;->gw:[Landroid/support/constraint/a/a/c;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/f;->gw:[Landroid/support/constraint/a/a/c;

    iget-object v3, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/f;->gp:Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/f;->hD:Landroid/support/constraint/a/a/c;

    goto :goto_0
.end method
