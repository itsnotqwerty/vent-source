.class final Landroid/support/transition/m;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final rD:Landroid/graphics/PathMeasure;

.field private final tV:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<TT;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final tW:F

.field private final tX:[F

.field private final tY:Landroid/graphics/PointF;

.field private tZ:F


# direct methods
.method constructor <init>(Landroid/util/Property;Landroid/graphics/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/transition/m;->tX:[F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->tY:Landroid/graphics/PointF;

    iput-object p1, p0, Landroid/support/transition/m;->tV:Landroid/util/Property;

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Landroid/support/transition/m;->rD:Landroid/graphics/PathMeasure;

    iget-object v0, p0, Landroid/support/transition/m;->rD:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Landroid/support/transition/m;->tW:F

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroid/support/transition/m;->tZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/support/transition/m;->tZ:F

    iget-object v0, p0, Landroid/support/transition/m;->rD:Landroid/graphics/PathMeasure;

    iget v1, p0, Landroid/support/transition/m;->tW:F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/transition/m;->tX:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Landroid/support/transition/m;->tY:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/support/transition/m;->tX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Landroid/support/transition/m;->tY:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/support/transition/m;->tX:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Landroid/support/transition/m;->tV:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/transition/m;->tY:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
