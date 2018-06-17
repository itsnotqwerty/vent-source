.class public final Lcom/c/a/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final avo:Landroid/graphics/Bitmap;

.field final bNE:Ljava/io/InputStream;

.field final bNf:Lcom/c/a/t$d;

.field final bOW:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V
    .locals 3

    const-string v0, "bitmap == null"

    invoke-static {p1, v0}, Lcom/c/a/ag;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/c/a/y$a;->avo:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/c/a/y$a;->bNE:Ljava/io/InputStream;

    const-string v0, "loadedFrom == null"

    invoke-static {p3, v0}, Lcom/c/a/ag;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/t$d;

    iput-object v0, p0, Lcom/c/a/y$a;->bNf:Lcom/c/a/t$d;

    iput p4, p0, Lcom/c/a/y$a;->bOW:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/c/a/t$d;)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/c/a/ag;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V

    return-void
.end method
