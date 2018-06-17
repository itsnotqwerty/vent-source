.class public Lio/intercom/a/a/a/c/d/a/g;
.super Lio/intercom/a/a/a/c/d/a/e;


# static fields
.field private static final ID:Ljava/lang/String; = "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterCrop"

.field private static final ID_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterCrop"

    sget-object v1, Lio/intercom/a/a/a/c/d/a/g;->cIb:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/g;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/e;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/intercom/a/a/a/c/d/a/g;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterCrop"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected transform(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lio/intercom/a/a/a/c/d/a/t;->a(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/d/a/g;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
