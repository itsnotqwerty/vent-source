.class public final Lio/intercom/a/a/a/c/d/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/d/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/d/f/d",
        "<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final cOV:Landroid/graphics/Bitmap$CompressFormat;

.field private final quality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/d/f/a;-><init>(Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/f/a;->cOV:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lio/intercom/a/a/a/c/d/f/a;->quality:I

    return-void
.end method


# virtual methods
.method public final e(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<[B>;"
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/f/a;->cOV:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lio/intercom/a/a/a/c/d/f/a;->quality:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    new-instance v0, Lio/intercom/a/a/a/c/d/b/b;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/d/b/b;-><init>([B)V

    return-object v0
.end method
