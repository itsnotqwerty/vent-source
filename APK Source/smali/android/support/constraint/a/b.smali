.class public Landroid/support/constraint/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/constraint/a/e$a;


# instance fields
.field dT:Landroid/support/constraint/a/h;

.field public dU:F

.field dV:Z

.field public final dW:Landroid/support/constraint/a/a;

.field public dX:Z


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/b;->dU:F

    iput-boolean v1, p0, Landroid/support/constraint/a/b;->dV:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/b;->dX:Z

    new-instance v0, Landroid/support/constraint/a/a;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/a/a;-><init>(Landroid/support/constraint/a/b;Landroid/support/constraint/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {p1, p2}, Landroid/support/constraint/a/e;->g(I)Landroid/support/constraint/a/h;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {p1, p2}, Landroid/support/constraint/a/e;->g(I)Landroid/support/constraint/a/h;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    return-object p0
.end method

.method public final a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float v1, p4

    iput v1, p0, Landroid/support/constraint/a/b;->dU:F

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p3, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    :goto_0
    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p3, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    goto :goto_0
.end method

.method public final a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p3, p5}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    neg-float v1, p5

    invoke-virtual {v0, p4, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    return-object p0
.end method

.method public final a([Z)Landroid/support/constraint/a/h;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/a/a;->a([ZLandroid/support/constraint/a/h;)Landroid/support/constraint/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/constraint/a/e$a;)V
    .locals 5

    instance-of v0, p1, Landroid/support/constraint/a/b;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/constraint/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0}, Landroid/support/constraint/a/a;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v1, v1, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a;->e(I)Landroid/support/constraint/a/h;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a;->f(I)F

    move-result v2

    iget-object v3, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final al()Landroid/support/constraint/a/h;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    return-object v0
.end method

.method public final b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float v1, p4

    iput v1, p0, Landroid/support/constraint/a/b;->dU:F

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p3, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    :goto_0
    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p3, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    goto :goto_0
.end method

.method public final b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x41000000    # -0.5f

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p3, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p4, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    neg-float v0, p5

    iput v0, p0, Landroid/support/constraint/a/b;->dU:F

    return-object p0
.end method

.method final c(Landroid/support/constraint/a/h;)V
    .locals 6

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v0, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget-object v1, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    move-result v0

    mul-float/2addr v2, v0

    iput-object p1, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Landroid/support/constraint/a/b;->dU:F

    div-float/2addr v0, v2

    iput v0, p0, Landroid/support/constraint/a/b;->dU:F

    iget-object v3, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v1, v3, Landroid/support/constraint/a/a;->dQ:I

    const/4 v0, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    iget v4, v3, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v4, :cond_1

    iget-object v4, v3, Landroid/support/constraint/a/a;->dP:[F

    aget v5, v4, v1

    div-float/2addr v5, v2

    aput v5, v4, v1

    iget-object v4, v3, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0}, Landroid/support/constraint/a/a;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/b;->dU:F

    return-void
.end method

.method public d(Landroid/support/constraint/a/h;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p1, Landroid/support/constraint/a/h;->fe:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    return-void

    :cond_1
    iget v1, p1, Landroid/support/constraint/a/h;->fe:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/support/constraint/a/h;->fe:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const v0, 0x49742400    # 1000000.0f

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/support/constraint/a/h;->fe:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const v0, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/support/constraint/a/h;->fe:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const v0, 0x5368d4a5    # 1.0E12f

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const-string v0, ""

    iget-object v3, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Landroid/support/constraint/a/b;->dU:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/support/constraint/a/b;->dU:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    iget-object v4, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v5, v4, Landroid/support/constraint/a/a;->dI:I

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_4

    iget-object v2, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v4}, Landroid/support/constraint/a/a;->e(I)Landroid/support/constraint/a/h;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v2, p0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v4}, Landroid/support/constraint/a/a;->f(I)F

    move-result v2

    cmpl-float v7, v2, v8

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/support/constraint/a/h;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_1

    cmpg-float v0, v2, v8

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-float v0, v2, v9

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move v2, v1

    move-object v3, v0

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v0, v2

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    cmpl-float v0, v2, v8

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-float v0, v2, v9

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    return-object v3

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v2, v0

    goto :goto_5

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method
