.class final Lcom/c/a/z;
.super Lcom/c/a/y;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/y;-><init>()V

    iput-object p1, p0, Lcom/c/a/z;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/z;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/c/a/ag;->a(Landroid/content/Context;Lcom/c/a/w;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/c/a/ag;->a(Landroid/content/res/Resources;Lcom/c/a/w;)I

    move-result v1

    new-instance v2, Lcom/c/a/y$a;

    invoke-static {p1}, Lcom/c/a/z;->d(Lcom/c/a/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v3}, Lcom/c/a/z;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, p1, Lcom/c/a/w;->bOG:I

    iget v5, p1, Lcom/c/a/w;->bOH:I

    invoke-static {v4, v5, v3, p1}, Lcom/c/a/z;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/c/a/w;)V

    :cond_0
    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    invoke-direct {v2, v0, v1}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V

    return-object v2
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 2

    iget v0, p1, Lcom/c/a/w;->resourceId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "android.resource"

    iget-object v1, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
