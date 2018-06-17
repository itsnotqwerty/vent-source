.class public final Landroid/support/constraint/a/a/j;
.super Landroid/support/constraint/a/a/l;


# instance fields
.field ff:F

.field hM:Landroid/support/constraint/a/a/c;

.field hN:Landroid/support/constraint/a/a/j;

.field hO:F

.field hP:Landroid/support/constraint/a/a/j;

.field public hQ:F

.field private hR:Landroid/support/constraint/a/a/j;

.field private hS:F

.field private hT:Landroid/support/constraint/a/a/k;

.field private hU:I

.field private hV:Landroid/support/constraint/a/a/k;

.field private hW:I

.field type:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/constraint/a/a/l;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/j;->type:I

    iput-object v2, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    iput v1, p0, Landroid/support/constraint/a/a/j;->hU:I

    iput-object v2, p0, Landroid/support/constraint/a/a/j;->hV:Landroid/support/constraint/a/a/k;

    iput v1, p0, Landroid/support/constraint/a/a/j;->hW:I

    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    return-void
.end method

.method private static o(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "DIRECT"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "CENTER"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "MATCH"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "CHAIN"

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "BARRIER"

    goto :goto_0

    :cond_4
    const-string v0, "UNCONNECTED"

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/a/j;F)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/j;->state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    if-eq v0, p1, :cond_2

    iget v0, p0, Landroid/support/constraint/a/a/j;->hQ:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_0
    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput p2, p0, Landroid/support/constraint/a/a/j;->hQ:F

    iget v0, p0, Landroid/support/constraint/a/a/j;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/j;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/j;->aU()V

    :cond_2
    return-void
.end method

.method public final a(Landroid/support/constraint/a/a/j;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/j;->type:I

    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/a/a/j;->hO:F

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/l;)V

    return-void
.end method

.method public final a(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V
    .locals 1

    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/l;)V

    iput-object p3, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    iput p2, p0, Landroid/support/constraint/a/a/j;->hU:I

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/l;)V

    return-void
.end method

.method public final aw()V
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/constraint/a/a/j;->state:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/j;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    iget v0, v0, Landroid/support/constraint/a/a/k;->state:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/j;->hU:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    iget v1, v1, Landroid/support/constraint/a/a/k;->value:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/a/a/j;->hO:F

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hV:Landroid/support/constraint/a/a/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hV:Landroid/support/constraint/a/a/k;

    iget v0, v0, Landroid/support/constraint/a/a/k;->state:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/j;->hW:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hV:Landroid/support/constraint/a/a/k;

    iget v1, v1, Landroid/support/constraint/a/a/k;->value:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/a/a/j;->hS:F

    :cond_3
    iget v0, p0, Landroid/support/constraint/a/a/j;->type:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->state:I

    if-ne v0, v2, :cond_6

    :cond_4
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-nez v0, :cond_5

    iput-object p0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget v0, p0, Landroid/support/constraint/a/a/j;->hO:F

    iput v0, p0, Landroid/support/constraint/a/a/j;->hQ:F

    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/j;->aU()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->hQ:F

    iget v1, p0, Landroid/support/constraint/a/a/j;->hO:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/a/a/j;->hQ:F

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/constraint/a/a/j;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->state:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->state:I

    if-ne v0, v2, :cond_d

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v0

    iget-wide v4, v0, Landroid/support/constraint/a/f;->eO:J

    add-long/2addr v4, v10

    iput-wide v4, v0, Landroid/support/constraint/a/f;->eO:J

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput-object v1, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget v0, p0, Landroid/support/constraint/a/a/j;->hS:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v1, v1, Landroid/support/constraint/a/a/j;->hQ:F

    sub-float/2addr v0, v1

    :goto_2
    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v2, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v2, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    if-ne v1, v2, :cond_b

    :cond_8
    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget v0, v0, Landroid/support/constraint/a/a/d;->gO:F

    :goto_3
    iget-object v2, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    iget-object v2, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v2, v2, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    iget-object v5, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v6, v6, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-ne v5, v6, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    move v2, v3

    move v4, v3

    :cond_9
    int-to-float v3, v4

    sub-float/2addr v1, v3

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Landroid/support/constraint/a/a/j;->hS:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_c

    iget-object v3, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v5, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v5, v5, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v5, v5, Landroid/support/constraint/a/a/j;->hQ:F

    int-to-float v2, v2

    add-float/2addr v2, v5

    mul-float v5, v1, v0

    add-float/2addr v2, v5

    iput v2, v3, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v2, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v2, v2, Landroid/support/constraint/a/a/j;->hQ:F

    int-to-float v3, v4

    sub-float/2addr v2, v3

    sub-float v0, v8, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/constraint/a/a/j;->hQ:F

    :goto_4
    invoke-virtual {p0}, Landroid/support/constraint/a/a/j;->aU()V

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/j;->aU()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v1, v1, Landroid/support/constraint/a/a/j;->hQ:F

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_b
    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget v0, v0, Landroid/support/constraint/a/a/d;->gP:F

    goto :goto_3

    :cond_c
    iget-object v3, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v3, v3, Landroid/support/constraint/a/a/j;->hQ:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float v4, v1, v0

    add-float/2addr v3, v4

    iput v3, p0, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v3, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v4, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v4, v4, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v4, v4, Landroid/support/constraint/a/a/j;->hQ:F

    int-to-float v2, v2

    sub-float v2, v4, v2

    sub-float v0, v8, v0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, v3, Landroid/support/constraint/a/a/j;->hQ:F

    goto :goto_4

    :cond_d
    iget v0, p0, Landroid/support/constraint/a/a/j;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->state:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->state:I

    if-ne v0, v2, :cond_f

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v0

    iget-wide v2, v0, Landroid/support/constraint/a/f;->eP:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eP:J

    :cond_e
    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget-object v0, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput-object v1, v0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v0, v0, Landroid/support/constraint/a/a/j;->hQ:F

    iget v1, p0, Landroid/support/constraint/a/a/j;->hO:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iget v1, v1, Landroid/support/constraint/a/a/j;->hQ:F

    iget-object v2, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iget v2, v2, Landroid/support/constraint/a/a/j;->hO:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/a/a/j;->hQ:F

    invoke-virtual {p0}, Landroid/support/constraint/a/a/j;->aU()V

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/j;->aU()V

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Landroid/support/constraint/a/a/j;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aw()V

    goto/16 :goto_0
.end method

.method public final b(Landroid/support/constraint/a/a/j;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iput p2, p0, Landroid/support/constraint/a/a/j;->hS:F

    return-void
.end method

.method public final b(Landroid/support/constraint/a/a/j;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/a/a/j;->hO:F

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/l;)V

    return-void
.end method

.method public final b(Landroid/support/constraint/a/a/j;ILandroid/support/constraint/a/a/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iput-object p3, p0, Landroid/support/constraint/a/a/j;->hV:Landroid/support/constraint/a/a/k;

    iput p2, p0, Landroid/support/constraint/a/a/j;->hW:I

    return-void
.end method

.method final b(Landroid/support/constraint/a/e;)V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/j;->hQ:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iget-object v1, v1, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/j;->hQ:F

    float-to-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_0
.end method

.method public final reset()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/constraint/a/a/l;->reset()V

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hN:Landroid/support/constraint/a/a/j;

    iput v1, p0, Landroid/support/constraint/a/a/j;->hO:F

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hT:Landroid/support/constraint/a/a/k;

    iput v2, p0, Landroid/support/constraint/a/a/j;->hU:I

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hV:Landroid/support/constraint/a/a/k;

    iput v2, p0, Landroid/support/constraint/a/a/j;->hW:I

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    iput v1, p0, Landroid/support/constraint/a/a/j;->hQ:F

    iput v1, p0, Landroid/support/constraint/a/a/j;->ff:F

    iput-object v0, p0, Landroid/support/constraint/a/a/j;->hR:Landroid/support/constraint/a/a/j;

    iput v1, p0, Landroid/support/constraint/a/a/j;->hS:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/j;->type:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/j;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/j;->hQ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/j;->type:I

    invoke-static {v1}, Landroid/support/constraint/a/a/j;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hP:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/j;->hQ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/j;->type:I

    invoke-static {v1}, Landroid/support/constraint/a/a/j;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/j;->type:I

    invoke-static {v1}, Landroid/support/constraint/a/a/j;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
