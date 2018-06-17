.class final Lcom/c/a/o;
.super Lcom/c/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/o$a;
    }
.end annotation


# static fields
.field private static final bNK:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/a/o;->bNK:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-object v2, Lcom/c/a/o;->bNK:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/o;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-static {v8, v0}, Lcom/c/a/o;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    invoke-virtual {p1}, Lcom/c/a/w;->Aw()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/c/a/w;->bOG:I

    iget v1, p1, Lcom/c/a/w;->bOH:I

    sget-object v2, Lcom/c/a/o$a;->bNL:Lcom/c/a/o$a;

    iget v2, v2, Lcom/c/a/o$a;->width:I

    if-gt v0, v2, :cond_1

    sget-object v2, Lcom/c/a/o$a;->bNL:Lcom/c/a/o$a;

    iget v2, v2, Lcom/c/a/o$a;->height:I

    if-gt v1, v2, :cond_1

    sget-object v0, Lcom/c/a/o$a;->bNL:Lcom/c/a/o$a;

    move-object v7, v0

    :goto_1
    if-nez v6, :cond_3

    sget-object v0, Lcom/c/a/o$a;->bNN:Lcom/c/a/o$a;

    if-ne v7, v0, :cond_3

    new-instance v0, Lcom/c/a/y$a;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/c/a/o;->b(Lcom/c/a/w;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/c/a/o$a;->bNM:Lcom/c/a/o$a;

    iget v2, v2, Lcom/c/a/o$a;->width:I

    if-gt v0, v2, :cond_2

    sget-object v0, Lcom/c/a/o$a;->bNM:Lcom/c/a/o$a;

    iget v0, v0, Lcom/c/a/o$a;->height:I

    if-gt v1, v0, :cond_2

    sget-object v0, Lcom/c/a/o$a;->bNM:Lcom/c/a/o$a;

    move-object v7, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/c/a/o$a;->bNN:Lcom/c/a/o$a;

    move-object v7, v0

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {p1}, Lcom/c/a/o;->d(Lcom/c/a/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v0, p1, Lcom/c/a/w;->bOG:I

    iget v1, p1, Lcom/c/a/w;->bOH:I

    iget v2, v7, Lcom/c/a/o$a;->width:I

    iget v3, v7, Lcom/c/a/o$a;->height:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/c/a/o;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/c/a/w;)V

    if-eqz v6, :cond_5

    sget-object v0, Lcom/c/a/o$a;->bNN:Lcom/c/a/o$a;

    if-ne v7, v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {v8, v10, v11, v0, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_6

    new-instance v0, Lcom/c/a/y$a;

    const/4 v2, 0x0

    sget-object v3, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V

    goto :goto_2

    :cond_4
    iget v0, v7, Lcom/c/a/o$a;->bNO:I

    goto :goto_3

    :cond_5
    iget v0, v7, Lcom/c/a/o$a;->bNO:I

    invoke-static {v8, v10, v11, v0, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/c/a/y$a;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/c/a/o;->b(Lcom/c/a/w;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/c/a/t$d;I)V

    goto :goto_2
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 3

    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    const-string v1, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "media"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
