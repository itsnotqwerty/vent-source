.class final Landroid/support/c/a/i$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final rz:Landroid/graphics/Matrix;


# instance fields
.field private qD:I

.field private final rA:Landroid/graphics/Matrix;

.field private rB:Landroid/graphics/Paint;

.field private rC:Landroid/graphics/Paint;

.field private rD:Landroid/graphics/PathMeasure;

.field final rE:Landroid/support/c/a/i$c;

.field rF:F

.field rG:F

.field rH:F

.field rI:F

.field rJ:I

.field rK:Ljava/lang/String;

.field final rL:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final rx:Landroid/graphics/Path;

.field private final ry:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/c/a/i$e;->rz:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rA:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/support/c/a/i$e;->rF:F

    iput v1, p0, Landroid/support/c/a/i$e;->rG:F

    iput v1, p0, Landroid/support/c/a/i$e;->rH:F

    iput v1, p0, Landroid/support/c/a/i$e;->rI:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/c/a/i$e;->rJ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$e;->rK:Ljava/lang/String;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rL:Landroid/support/v4/g/a;

    new-instance v0, Landroid/support/c/a/i$c;

    invoke-direct {v0}, Landroid/support/c/a/i$c;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rE:Landroid/support/c/a/i$c;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rx:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$e;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rA:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/support/c/a/i$e;->rF:F

    iput v1, p0, Landroid/support/c/a/i$e;->rG:F

    iput v1, p0, Landroid/support/c/a/i$e;->rH:F

    iput v1, p0, Landroid/support/c/a/i$e;->rI:F

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/c/a/i$e;->rJ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$e;->rK:Ljava/lang/String;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rL:Landroid/support/v4/g/a;

    new-instance v0, Landroid/support/c/a/i$c;

    iget-object v1, p1, Landroid/support/c/a/i$e;->rE:Landroid/support/c/a/i$c;

    iget-object v2, p0, Landroid/support/c/a/i$e;->rL:Landroid/support/v4/g/a;

    invoke-direct {v0, v1, v2}, Landroid/support/c/a/i$c;-><init>(Landroid/support/c/a/i$c;Landroid/support/v4/g/a;)V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rE:Landroid/support/c/a/i$c;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/c/a/i$e;->rx:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/c/a/i$e;->rx:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    iget v0, p1, Landroid/support/c/a/i$e;->rF:F

    iput v0, p0, Landroid/support/c/a/i$e;->rF:F

    iget v0, p1, Landroid/support/c/a/i$e;->rG:F

    iput v0, p0, Landroid/support/c/a/i$e;->rG:F

    iget v0, p1, Landroid/support/c/a/i$e;->rH:F

    iput v0, p0, Landroid/support/c/a/i$e;->rH:F

    iget v0, p1, Landroid/support/c/a/i$e;->rI:F

    iput v0, p0, Landroid/support/c/a/i$e;->rI:F

    iget v0, p1, Landroid/support/c/a/i$e;->qD:I

    iput v0, p0, Landroid/support/c/a/i$e;->qD:I

    iget v0, p1, Landroid/support/c/a/i$e;->rJ:I

    iput v0, p0, Landroid/support/c/a/i$e;->rJ:I

    iget-object v0, p1, Landroid/support/c/a/i$e;->rK:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/c/a/i$e;->rK:Ljava/lang/String;

    iget-object v0, p1, Landroid/support/c/a/i$e;->rK:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$e;->rL:Landroid/support/v4/g/a;

    iget-object v1, p1, Landroid/support/c/a/i$e;->rK:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Landroid/support/c/a/i$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    iput-object p1, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    return-object p1
.end method

.method private a(Landroid/support/c/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 12

    iget-object v2, p1, Landroid/support/c/a/i$c;->rl:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p1, Landroid/support/c/a/i$c;->rl:Landroid/graphics/Matrix;

    iget-object v3, p1, Landroid/support/c/a/i$c;->rt:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    iget-object v2, p1, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_d

    iget-object v2, p1, Landroid/support/c/a/i$c;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v2, v3, Landroid/support/c/a/i$c;

    if-eqz v2, :cond_1

    check-cast v3, Landroid/support/c/a/i$c;

    iget-object v4, p1, Landroid/support/c/a/i$c;->rl:Landroid/graphics/Matrix;

    move-object v2, p0

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    :cond_1
    instance-of v2, v3, Landroid/support/c/a/i$d;

    if-eqz v2, :cond_0

    check-cast v3, Landroid/support/c/a/i$d;

    move/from16 v0, p4

    int-to-float v2, v0

    iget v4, p0, Landroid/support/c/a/i$e;->rH:F

    div-float/2addr v2, v4

    move/from16 v0, p5

    int-to-float v4, v0

    iget v5, p0, Landroid/support/c/a/i$e;->rI:F

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p1, Landroid/support/c/a/i$c;->rl:Landroid/graphics/Matrix;

    iget-object v7, p0, Landroid/support/c/a/i$e;->rA:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v7, p0, Landroid/support/c/a/i$e;->rA:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    const/4 v4, 0x0

    aget v4, v2, v4

    float-to-double v6, v4

    const/4 v4, 0x1

    aget v4, v2, v4

    float-to-double v10, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    const/4 v6, 0x2

    aget v6, v2, v6

    float-to-double v6, v6

    const/4 v8, 0x3

    aget v8, v2, v8

    float-to-double v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v10, 0x2

    aget v10, v2, v10

    const/4 v11, 0x3

    aget v2, v2, v11

    mul-float/2addr v2, v7

    mul-float v7, v8, v10

    sub-float v7, v2, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_e

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v4

    move v4, v2

    :goto_2
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/c/a/i$e;->rx:Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Landroid/support/c/a/i$d;->b(Landroid/graphics/Path;)V

    iget-object v2, p0, Landroid/support/c/a/i$e;->rx:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v3}, Landroid/support/c/a/i$d;->cf()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/c/a/i$e;->rA:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    invoke-virtual {p3, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_1

    :cond_2
    check-cast v3, Landroid/support/c/a/i$b;

    iget v6, v3, Landroid/support/c/a/i$b;->rf:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, v3, Landroid/support/c/a/i$b;->rg:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    :cond_3
    iget v6, v3, Landroid/support/c/a/i$b;->rf:F

    iget v7, v3, Landroid/support/c/a/i$b;->rh:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    rem-float/2addr v6, v7

    iget v7, v3, Landroid/support/c/a/i$b;->rg:F

    iget v8, v3, Landroid/support/c/a/i$b;->rh:F

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float/2addr v7, v8

    iget-object v8, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    if-nez v8, :cond_4

    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v8, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    :cond_4
    iget-object v8, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Landroid/support/c/a/i$e;->rx:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v8, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    mul-float/2addr v6, v8

    mul-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    cmpl-float v10, v6, v7

    if-lez v10, :cond_b

    iget-object v10, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    const/4 v11, 0x1

    invoke-virtual {v10, v6, v8, v2, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v6, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v7, v2, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_5
    iget-object v6, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/support/c/a/i$e;->rA:Landroid/graphics/Matrix;

    invoke-virtual {v6, v2, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget v2, v3, Landroid/support/c/a/i$b;->rb:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_6
    iget-object v6, p0, Landroid/support/c/a/i$e;->rC:Landroid/graphics/Paint;

    iget v2, v3, Landroid/support/c/a/i$b;->rb:I

    iget v7, v3, Landroid/support/c/a/i$b;->re:F

    invoke-static {v2, v7}, Landroid/support/c/a/i;->b(IF)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v7, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    iget v2, v3, Landroid/support/c/a/i$b;->rd:I

    if-nez v2, :cond_c

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_4
    invoke-virtual {v7, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget v2, v3, Landroid/support/c/a/i$b;->qZ:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    if-nez v2, :cond_8

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_8
    iget-object v2, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    iget-object v6, v3, Landroid/support/c/a/i$b;->rj:Landroid/graphics/Paint$Join;

    if-eqz v6, :cond_9

    iget-object v6, v3, Landroid/support/c/a/i$b;->rj:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_9
    iget-object v6, v3, Landroid/support/c/a/i$b;->ri:Landroid/graphics/Paint$Cap;

    if-eqz v6, :cond_a

    iget-object v6, v3, Landroid/support/c/a/i$b;->ri:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_a
    iget v6, v3, Landroid/support/c/a/i$b;->rk:F

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget v6, v3, Landroid/support/c/a/i$b;->qZ:I

    iget v7, v3, Landroid/support/c/a/i$b;->rc:F

    invoke-static {v6, v7}, Landroid/support/c/a/i;->b(IF)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float/2addr v4, v5

    iget v3, v3, Landroid/support/c/a/i$b;->ra:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Landroid/support/c/a/i$e;->ry:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_b
    iget-object v8, p0, Landroid/support/c/a/i$e;->rD:Landroid/graphics/PathMeasure;

    const/4 v10, 0x1

    invoke-virtual {v8, v6, v7, v2, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_3

    :cond_c
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_4

    :cond_d
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_e
    move v4, v2

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic b(Landroid/support/c/a/i$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    iput-object p1, p0, Landroid/support/c/a/i$e;->rB:Landroid/graphics/Paint;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;II)V
    .locals 7

    iget-object v1, p0, Landroid/support/c/a/i$e;->rE:Landroid/support/c/a/i$c;

    sget-object v2, Landroid/support/c/a/i$e;->rz:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final getAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final getRootAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$e;->rJ:I

    return v0
.end method

.method public final setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/c/a/i$e;->setRootAlpha(I)V

    return-void
.end method

.method public final setRootAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/c/a/i$e;->rJ:I

    return-void
.end method
