.class final Lcom/theartofdev/edmodo/cropper/CropImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropOverlayView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;


# direct methods
.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aN(Z)V
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-static {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Lcom/theartofdev/edmodo/cropper/CropImageView;Z)V

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->b(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$1;->bRF:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    :cond_1
    return-void
.end method
