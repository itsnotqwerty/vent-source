.class final Lcom/theartofdev/edmodo/cropper/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/h$a;
    }
.end annotation


# static fields
.field private static final bSR:Landroid/graphics/Matrix;


# instance fields
.field private final bSS:F

.field private final bST:F

.field private final bSU:F

.field private final bSV:F

.field final bSW:I

.field final bSX:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/h;->bSR:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(ILcom/theartofdev/edmodo/cropper/g;FF)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSW:I

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->AS()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->AT()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->AU()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->AV()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->AR()Landroid/graphics/RectF;

    move-result-object v0

    sget-object v2, Lcom/theartofdev/edmodo/cropper/h$1;->bSY:[I

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/h;->bSW:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iput v0, v1, Landroid/graphics/PointF;->y:F

    return-void

    :pswitch_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    :pswitch_2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    :pswitch_3
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    :pswitch_4
    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, p3

    move v0, v1

    goto :goto_0

    :pswitch_5
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    :pswitch_6
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, v0, p3

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, p3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v0, p4

    move v2, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static a(Landroid/graphics/RectF;F)V
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method static a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    return-void
.end method

.method static b(Landroid/graphics/RectF;F)V
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method static b(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method static c(Landroid/graphics/RectF;F)V
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method static c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method static d(FFFF)F
    .locals 2

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    return v0
.end method

.method static d(Landroid/graphics/RectF;F)V
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v4, 0x0

    cmpg-float v0, p2, v4

    if-gez v0, :cond_0

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x3f8ccccd    # 1.1f

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float v2, p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_1
    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_2

    iget p2, p3, Landroid/graphics/RectF;->left:F

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    sub-float p2, v0, v1

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    sub-float p2, v0, v1

    :cond_4
    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_a

    iget v1, p3, Landroid/graphics/RectF;->left:F

    :goto_0
    cmpl-float v0, p5, v4

    if-lez v0, :cond_7

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p5

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    mul-float/2addr v2, p5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p5

    :cond_5
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    mul-float/2addr v2, p5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p5

    :cond_6
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, p5

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_7
    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->left:F

    return-void

    :cond_8
    if-eqz p6, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p5

    :cond_9
    if-eqz p7, :cond_7

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p5

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_a
    move v1, p2

    goto/16 :goto_0
.end method

.method final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 5

    int-to-float v0, p4

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, p4

    int-to-float v1, p4

    sub-float v1, p2, v1

    const v2, 0x3f866666    # 1.05f

    div-float/2addr v1, v2

    add-float p2, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float v2, p4

    sub-float v2, p2, v2

    const v3, 0x3f8ccccd    # 1.1f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v0, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/RectF;->right:F

    sub-float v2, p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_1
    iget v0, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_2

    iget p2, p3, Landroid/graphics/RectF;->right:F

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    add-float p2, v0, v1

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    add-float p2, v0, v1

    :cond_4
    iget v0, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_a

    iget v1, p3, Landroid/graphics/RectF;->right:F

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-lez v0, :cond_7

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v1, v0

    div-float/2addr v0, p6

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v1, v0

    div-float/2addr v0, p6

    :cond_5
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v1, v0

    div-float/2addr v0, p6

    :cond_6
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, p6

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_7
    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->right:F

    return-void

    :cond_8
    if-eqz p7, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p6

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v1, v0

    div-float/2addr v0, p6

    :cond_9
    if-eqz p8, :cond_7

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p6

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_a
    move v1, p2

    goto/16 :goto_0
.end method

.method final b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v4, 0x0

    cmpg-float v0, p2, v4

    if-gez v0, :cond_0

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    const v2, 0x3f8ccccd    # 1.1f

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float v2, p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float v0, p2, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_2

    iget p2, p3, Landroid/graphics/RectF;->top:F

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    sub-float p2, v0, v1

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    sub-float p2, v0, v1

    :cond_4
    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float v0, p2, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_a

    iget v1, p3, Landroid/graphics/RectF;->top:F

    :goto_0
    cmpl-float v0, p5, v4

    if-lez v0, :cond_7

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p5

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    div-float/2addr v2, p5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p5

    :cond_5
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    div-float/2addr v2, p5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p5

    :cond_6
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, p5

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_7
    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->top:F

    return-void

    :cond_8
    if-eqz p6, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    div-float/2addr v2, p5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p5

    :cond_9
    if-eqz p7, :cond_7

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget v2, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    div-float/2addr v3, p5

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_a
    move v1, p2

    goto/16 :goto_0
.end method

.method final b(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 5

    int-to-float v0, p4

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, p4

    int-to-float v1, p4

    sub-float v1, p2, v1

    const v2, 0x3f866666    # 1.05f

    div-float/2addr v1, v2

    add-float p2, v0, v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, p4

    sub-float v2, p2, v2

    const v3, 0x3f8ccccd    # 1.1f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->bSX:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v2, p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_2

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bST:F

    add-float p2, v0, v1

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->bSV:F

    add-float p2, v0, v1

    :cond_4
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_a

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-lez v0, :cond_7

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    mul-float/2addr v0, p6

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSS:F

    div-float/2addr v2, p6

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    mul-float/2addr v0, p6

    :cond_5
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->bSU:F

    div-float/2addr v2, p6

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    mul-float/2addr v0, p6

    :cond_6
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, p6

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_7
    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void

    :cond_8
    if-eqz p7, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    div-float/2addr v2, p6

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    mul-float/2addr v0, p6

    :cond_9
    if-eqz p8, :cond_7

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget v2, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    div-float/2addr v3, p6

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_a
    move v1, p2

    goto/16 :goto_0
.end method
