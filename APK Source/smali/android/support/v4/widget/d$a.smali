.class final Landroid/support/v4/widget/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field BX:I

.field final IA:Landroid/graphics/Paint;

.field final IB:Landroid/graphics/Paint;

.field IC:F

.field IE:F

.field IF:[I

.field IG:I

.field IH:F

.field II:F

.field IJ:F

.field IK:Z

.field IL:Landroid/graphics/Path;

.field IM:F

.field IO:F

.field IP:I

.field IQ:I

.field IR:I

.field final Iz:Landroid/graphics/RectF;

.field final jT:Landroid/graphics/Paint;

.field ke:F

.field ra:F


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->Iz:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->IA:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->IB:Landroid/graphics/Paint;

    iput v1, p0, Landroid/support/v4/widget/d$a;->IC:F

    iput v1, p0, Landroid/support/v4/widget/d$a;->IE:F

    iput v1, p0, Landroid/support/v4/widget/d$a;->ke:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/d$a;->ra:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/d$a;->IM:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/widget/d$a;->IR:I

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->IA:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->IA:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->IB:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method final aF(I)V
    .locals 2

    iput p1, p0, Landroid/support/v4/widget/d$a;->IG:I

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->IF:[I

    iget v1, p0, Landroid/support/v4/widget/d$a;->IG:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/d$a;->BX:I

    return-void
.end method

.method final ea()I
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/d$a;->IG:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/d$a;->IF:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method final eb()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->IF:[I

    iget v1, p0, Landroid/support/v4/widget/d$a;->IG:I

    aget v0, v0, v1

    return v0
.end method

.method final ec()V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/d$a;->IC:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->IH:F

    iget v0, p0, Landroid/support/v4/widget/d$a;->IE:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->II:F

    iget v0, p0, Landroid/support/v4/widget/d$a;->ke:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->IJ:F

    return-void
.end method

.method final ed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/d$a;->IH:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->II:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->IJ:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->IC:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->IE:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->ke:F

    return-void
.end method

.method final setColors([I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/d$a;->IF:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/d$a;->aF(I)V

    return-void
.end method

.method final setStrokeWidth(F)V
    .locals 1

    iput p1, p0, Landroid/support/v4/widget/d$a;->ra:F

    iget-object v0, p0, Landroid/support/v4/widget/d$a;->jT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method final y(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/d$a;->IK:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/widget/d$a;->IK:Z

    :cond_0
    return-void
.end method
