.class final Lcom/theartofdev/edmodo/cropper/g;
.super Ljava/lang/Object;


# instance fields
.field final bSF:Landroid/graphics/RectF;

.field private final bSG:Landroid/graphics/RectF;

.field bSH:F

.field bSI:F

.field bSJ:F

.field bSK:F

.field bSL:F

.field bSM:F

.field bSN:F

.field bSO:F

.field bSP:F

.field bSQ:F


# direct methods
.method constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSG:Landroid/graphics/RectF;

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSP:F

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSQ:F

    return-void
.end method

.method static a(FFFFF)Z
    .locals 1

    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(FFFFFF)Z
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p3

    if-gez v0, :cond_0

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(FFFFFF)Z
    .locals 1

    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(FFFFFF)Z
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p4

    if-gez v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p5

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final AR()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSG:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSG:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final AS()F
    .locals 3

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSH:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSL:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->bSP:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final AT()F
    .locals 3

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSI:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSM:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->bSQ:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final AU()F
    .locals 3

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSJ:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSN:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->bSP:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final AV()F
    .locals 3

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSK:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->bSO:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->bSQ:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final AW()Z
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final AX()Z
    .locals 1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/g;->AW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->bSF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
