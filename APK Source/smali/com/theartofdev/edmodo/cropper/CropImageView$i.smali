.class public final Lcom/theartofdev/edmodo/cropper/CropImageView$i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final bRU:I

.field public static final bRV:I

.field public static final bRW:I

.field public static final bRX:I

.field public static final bRY:I

.field private static final synthetic bRZ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    sput v4, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRV:I

    sput v5, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRW:I

    sput v6, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRX:I

    sput v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRY:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRU:I

    aput v2, v0, v1

    sget v1, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRV:I

    aput v1, v0, v3

    sget v1, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRW:I

    aput v1, v0, v4

    sget v1, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRX:I

    aput v1, v0, v5

    sget v1, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRY:I

    aput v1, v0, v6

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRZ:[I

    return-void
.end method

.method public static AM()[I
    .locals 1

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->bRZ:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
