.class public Lio/intercom/android/sdk/transforms/RoundedCornersTransform;
.super Lio/intercom/a/a/a/c/d/a/e;


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field private final id:Ljava/lang/String;

.field private final idBytes:[B

.field private final radius:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/e;-><init>()V

    iput p1, p0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->radius:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "io.intercom.android.sdk.transforms.RoundedCornersTransform.(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->id:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->id:Ljava/lang/String;

    sget-object v1, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->cIb:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->idBytes:[B

    return-void
.end method


# virtual methods
.method protected transform(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/transforms/RoundedCornersTransform$1;-><init>(Lio/intercom/android/sdk/transforms/RoundedCornersTransform;Lio/intercom/a/a/a/c/b/a/e;)V

    iget v1, p0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->radius:I

    invoke-static {p2, v0, v1}, Lio/intercom/android/sdk/commons/utilities/BitmapUtils;->transformRoundCorners(Landroid/graphics/Bitmap;Lio/intercom/android/sdk/commons/utilities/BitmapUtils$BitmapCache;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;->idBytes:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
