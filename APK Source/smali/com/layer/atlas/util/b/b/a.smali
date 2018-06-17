.class public final Lcom/layer/atlas/util/b/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/ae;


# instance fields
.field private final bpy:Landroid/graphics/PorterDuffXfermode;

.field private final bpz:Landroid/graphics/PorterDuffXfermode;

.field private final jT:Landroid/graphics/Paint;

.field private no:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/layer/atlas/util/b/b/a;->no:F

    iput p1, p0, Lcom/layer/atlas/util/b/b/a;->no:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/layer/atlas/util/b/b/a;->jT:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/atlas/util/b/b/a;->bpy:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/layer/atlas/util/b/b/a;->bpz:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/layer/atlas/util/b/b/a;->no:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v4, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/layer/atlas/util/b/b/a;->jT:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/layer/atlas/util/b/b/a;->bpy:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v1, p0, Lcom/layer/atlas/util/b/b/a;->no:F

    iget v2, p0, Lcom/layer/atlas/util/b/b/a;->no:F

    iget-object v5, p0, Lcom/layer/atlas/util/b/b/a;->jT:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/layer/atlas/util/b/b/a;->jT:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/layer/atlas/util/b/b/a;->bpz:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/layer/atlas/util/b/b/a;->jT:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    goto :goto_0
.end method

.method public final key()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/layer/atlas/util/b/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/layer/atlas/util/b/b/a;->no:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
