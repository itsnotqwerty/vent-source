.class public Lcom/theartofdev/edmodo/cropper/CropImageView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final DD:Landroid/net/Uri;

.field final bPp:[F

.field private final bRG:Landroid/graphics/Bitmap;

.field final bRH:Landroid/net/Uri;

.field public final bRI:Ljava/lang/Exception;

.field final bRJ:Landroid/graphics/Rect;

.field final bRK:Landroid/graphics/Rect;

.field final bRL:I

.field final bRM:I

.field private final bmT:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRG:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRH:Landroid/net/Uri;

    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bmT:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->DD:Landroid/net/Uri;

    iput-object p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRI:Ljava/lang/Exception;

    iput-object p6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bPp:[F

    iput-object p7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRJ:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRK:Landroid/graphics/Rect;

    iput p9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRL:I

    iput p10, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->bRM:I

    return-void
.end method
