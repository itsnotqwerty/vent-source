.class final Lcom/c/a/k;
.super Lcom/c/a/g;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/c/a/y$a;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/c/a/k;->b(Lcom/c/a/w;)Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    new-instance v5, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V

    return-object v1

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 2

    const-string v0, "file"

    iget-object v1, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
