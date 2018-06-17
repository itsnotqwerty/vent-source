.class public Lio/intercom/android/sdk/views/UploadProgressBar;
.super Landroid/view/View;


# static fields
.field private static final MAX:I = 0x64

.field private static final START_ANGLE:I = -0x5a

.field private static final STROKE_WIDTH:I = 0x8


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final foregroundPaint:Landroid/graphics/Paint;

.field private progress:I

.field private final rectF:Landroid/graphics/RectF;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/UploadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->twig:Lio/intercom/android/sdk/twig/Twig;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->progress:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x78000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private getObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "animation"

    const-string v2, "starting upload end animation"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x5a
        0x63
    .end array-data
.end method

.method private showBar()V
    .locals 4

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public hideBar()V
    .locals 4

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->rectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lio/intercom/android/sdk/views/UploadProgressBar;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lio/intercom/android/sdk/views/UploadProgressBar;->getDefaultSize(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lio/intercom/android/sdk/views/UploadProgressBar;->setMeasuredDimension(II)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->rectF:Landroid/graphics/RectF;

    add-int/lit8 v2, v0, -0x4

    int-to-float v2, v2

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgress(I)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "animation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received progress of  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->progress:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->progress:I

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public smoothEndAnimation()V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->getObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/views/UploadProgressBar$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/views/UploadProgressBar$1;-><init>(Lio/intercom/android/sdk/views/UploadProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public smoothEndAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->getObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public smoothStartAnimation()V
    .locals 4

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/views/UploadProgressBar;->showBar()V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/UploadProgressBar;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "animation"

    const-string v2, "starting upload start animation"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xa
    .end array-data
.end method
