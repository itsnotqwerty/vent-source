.class public Lio/intercom/android/sdk/transforms/RoundTransform;
.super Lio/intercom/a/a/a/c/d/a/e;


# static fields
.field private static final ID:Ljava/lang/String; = "io.intercom.android.sdk.transforms.RoundTransform.1"

.field private static final ID_BYTES:[B

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.intercom.android.sdk.transforms.RoundTransform.1"

    sget-object v1, Lio/intercom/android/sdk/transforms/RoundTransform;->cIb:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/transforms/RoundTransform;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/transforms/RoundTransform$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/transforms/RoundTransform$1;-><init>(Lio/intercom/android/sdk/transforms/RoundTransform;Lio/intercom/a/a/a/c/b/a/e;)V

    invoke-static {p2, v0}, Lio/intercom/android/sdk/commons/utilities/BitmapUtils;->transformRound(Landroid/graphics/Bitmap;Lio/intercom/android/sdk/commons/utilities/BitmapUtils$BitmapCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/transforms/RoundTransform;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
