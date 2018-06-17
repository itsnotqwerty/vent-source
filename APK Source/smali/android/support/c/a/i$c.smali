.class final Landroid/support/c/a/i$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final ib:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field qD:I

.field qY:[I

.field final rl:Landroid/graphics/Matrix;

.field rm:F

.field rn:F

.field ro:F

.field rp:F

.field rq:F

.field rr:F

.field rs:F

.field final rt:Landroid/graphics/Matrix;

.field ru:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->rl:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/c/a/i$c;->rm:F

    iput v1, p0, Landroid/support/c/a/i$c;->rn:F

    iput v1, p0, Landroid/support/c/a/i$c;->ro:F

    iput v2, p0, Landroid/support/c/a/i$c;->rp:F

    iput v2, p0, Landroid/support/c/a/i$c;->rq:F

    iput v1, p0, Landroid/support/c/a/i$c;->rr:F

    iput v1, p0, Landroid/support/c/a/i$c;->rs:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$c;Landroid/support/v4/g/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/c/a/i$c;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->rl:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/c/a/i$c;->rm:F

    iput v1, p0, Landroid/support/c/a/i$c;->rn:F

    iput v1, p0, Landroid/support/c/a/i$c;->ro:F

    iput v2, p0, Landroid/support/c/a/i$c;->rp:F

    iput v2, p0, Landroid/support/c/a/i$c;->rq:F

    iput v1, p0, Landroid/support/c/a/i$c;->rr:F

    iput v1, p0, Landroid/support/c/a/i$c;->rs:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    iget v0, p1, Landroid/support/c/a/i$c;->rm:F

    iput v0, p0, Landroid/support/c/a/i$c;->rm:F

    iget v0, p1, Landroid/support/c/a/i$c;->rn:F

    iput v0, p0, Landroid/support/c/a/i$c;->rn:F

    iget v0, p1, Landroid/support/c/a/i$c;->ro:F

    iput v0, p0, Landroid/support/c/a/i$c;->ro:F

    iget v0, p1, Landroid/support/c/a/i$c;->rp:F

    iput v0, p0, Landroid/support/c/a/i$c;->rp:F

    iget v0, p1, Landroid/support/c/a/i$c;->rq:F

    iput v0, p0, Landroid/support/c/a/i$c;->rq:F

    iget v0, p1, Landroid/support/c/a/i$c;->rr:F

    iput v0, p0, Landroid/support/c/a/i$c;->rr:F

    iget v0, p1, Landroid/support/c/a/i$c;->rs:F

    iput v0, p0, Landroid/support/c/a/i$c;->rs:F

    iget-object v0, p1, Landroid/support/c/a/i$c;->qY:[I

    iput-object v0, p0, Landroid/support/c/a/i$c;->qY:[I

    iget-object v0, p1, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    iget v0, p1, Landroid/support/c/a/i$c;->qD:I

    iput v0, p0, Landroid/support/c/a/i$c;->qD:I

    iget-object v0, p0, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p1, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/support/c/a/i$c;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/support/c/a/i$c;

    iget-object v2, p0, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/c/a/i$c;

    invoke-direct {v4, v0, p2}, Landroid/support/c/a/i$c;-><init>(Landroid/support/c/a/i$c;Landroid/support/v4/g/a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Landroid/support/c/a/i$b;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/support/c/a/i$b;

    check-cast v0, Landroid/support/c/a/i$b;

    invoke-direct {v2, v0}, Landroid/support/c/a/i$b;-><init>(Landroid/support/c/a/i$b;)V

    move-object v0, v2

    :goto_2
    iget-object v2, p0, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/support/c/a/i$d;->rw:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/c/a/i$d;->rw:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v2, v0, Landroid/support/c/a/i$a;

    if-eqz v2, :cond_4

    new-instance v2, Landroid/support/c/a/i$a;

    check-cast v0, Landroid/support/c/a/i$a;

    invoke-direct {v2, v0}, Landroid/support/c/a/i$a;-><init>(Landroid/support/c/a/i$a;)V

    move-object v0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method


# virtual methods
.method final cg()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->rn:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/c/a/i$c;->ro:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->rp:F

    iget v2, p0, Landroid/support/c/a/i$c;->rq:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->rm:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->rr:F

    iget v2, p0, Landroid/support/c/a/i$c;->rn:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/c/a/i$c;->rs:F

    iget v3, p0, Landroid/support/c/a/i$c;->ro:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i$c;->ru:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getPivotX()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rn:F

    return v0
.end method

.method public final getPivotY()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->ro:F

    return v0
.end method

.method public final getRotation()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rm:F

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rp:F

    return v0
.end method

.method public final getScaleY()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rq:F

    return v0
.end method

.method public final getTranslateX()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rr:F

    return v0
.end method

.method public final getTranslateY()F
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rs:F

    return v0
.end method

.method public final setPivotX(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rn:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->rn:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method

.method public final setPivotY(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->ro:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->ro:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method

.method public final setRotation(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rm:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->rm:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method

.method public final setScaleX(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rp:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->rp:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method

.method public final setScaleY(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rq:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->rq:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method

.method public final setTranslateX(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rr:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->rr:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method

.method public final setTranslateY(F)V
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$c;->rs:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/c/a/i$c;->rs:F

    invoke-virtual {p0}, Landroid/support/c/a/i$c;->cg()V

    :cond_0
    return-void
.end method
