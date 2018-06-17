.class public final Lcom/intercom/input/gallery/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/d;


# instance fields
.field private bml:Lcom/intercom/input/gallery/l;

.field private bmm:Lcom/intercom/input/gallery/g;

.field private context:Landroid/content/Context;

.field private listener:Lcom/intercom/input/gallery/d$a;

.field private loading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/intercom/input/gallery/l;Lcom/intercom/input/gallery/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intercom/input/gallery/k;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/intercom/input/gallery/k;->bmm:Lcom/intercom/input/gallery/g;

    iput-object p2, p0, Lcom/intercom/input/gallery/k;->bml:Lcom/intercom/input/gallery/l;

    return-void
.end method

.method private static c(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/input/gallery/b;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "_data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "mime_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    const-string v0, "height"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "width"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Lcom/intercom/input/gallery/b$a;

    invoke-direct {v0}, Lcom/intercom/input/gallery/b$a;-><init>()V

    iput-object v5, v0, Lcom/intercom/input/gallery/b$a;->bmd:Ljava/lang/String;

    iput-object v3, v0, Lcom/intercom/input/gallery/b$a;->path:Ljava/lang/String;

    iput-object v4, v0, Lcom/intercom/input/gallery/b$a;->mimeType:Ljava/lang/String;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iput v1, v0, Lcom/intercom/input/gallery/b$a;->imageWidth:I

    iget v1, v7, Landroid/graphics/Point;->y:I

    iput v1, v0, Lcom/intercom/input/gallery/b$a;->imageHeight:I

    iput v6, v0, Lcom/intercom/input/gallery/b$a;->bmf:I

    invoke-virtual {v0}, Lcom/intercom/input/gallery/b$a;->wa()Lcom/intercom/input/gallery/b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/intercom/input/gallery/k;->getPermissionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/intercom/input/gallery/k;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public final getImages(ILjava/lang/String;)V
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    iput-boolean v3, p0, Lcom/intercom/input/gallery/k;->loading:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v0, "date_added"

    aput-object v0, v2, v3

    const-string v0, "mime_type"

    aput-object v0, v2, v4

    const-string v0, "title"

    aput-object v0, v2, v5

    const-string v0, "height"

    aput-object v0, v2, v6

    const/4 v0, 0x5

    const-string v1, "width"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_size"

    aput-object v1, v2, v0

    :goto_0
    iget-object v0, p0, Lcom/intercom/input/gallery/k;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "date_added DESC LIMIT 50 OFFSET "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-boolean v7, p0, Lcom/intercom/input/gallery/k;->loading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/intercom/input/gallery/k;->listener:Lcom/intercom/input/gallery/d$a;

    invoke-interface {v0}, Lcom/intercom/input/gallery/d$a;->onError()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v0, "date_added"

    aput-object v0, v2, v3

    const-string v0, "mime_type"

    aput-object v0, v2, v4

    const-string v0, "title"

    aput-object v0, v2, v5

    const-string v0, "_size"

    aput-object v0, v2, v6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intercom/input/gallery/k;->listener:Lcom/intercom/input/gallery/d$a;

    invoke-static {v0}, Lcom/intercom/input/gallery/k;->c(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/intercom/input/gallery/d$a;->u(Ljava/util/List;)V

    goto :goto_1
.end method

.method public final getPermissionStatus()I
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/intercom/input/gallery/k;->bml:Lcom/intercom/input/gallery/l;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v3, v1, Lcom/intercom/input/gallery/l;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, v1, Lcom/intercom/input/gallery/l;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/intercom/input/gallery/l;->blR:Landroid/content/SharedPreferences;

    const-string v2, "asked_for_permission"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/intercom/input/gallery/k;->loading:Z

    return v0
.end method

.method public final requestPermission()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/intercom/input/gallery/k;->bml:Lcom/intercom/input/gallery/l;

    iget-object v0, v0, Lcom/intercom/input/gallery/l;->blR:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "asked_for_permission"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/k;->bmm:Lcom/intercom/input/gallery/g;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-interface {v0, v1, v4}, Lcom/intercom/input/gallery/g;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final setListener(Lcom/intercom/input/gallery/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/input/gallery/k;->listener:Lcom/intercom/input/gallery/d$a;

    return-void
.end method
