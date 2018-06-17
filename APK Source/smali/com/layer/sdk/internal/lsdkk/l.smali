.class public Lcom/layer/sdk/internal/lsdkk/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/l$b;,
        Lcom/layer/sdk/internal/lsdkk/l$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/l;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkk/l;->b(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;Landroid/app/Activity;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkk/l;->b(Ljava/io/File;Ljava/lang/String;Landroid/app/Activity;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/layer/sdk/LayerClient;Z)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v3, "unknown"

    const-string v2, "unknown"

    const-string v5, "unknown"

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/layer/sdk/internal/b;->d()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/layer/sdk/internal/b;->i()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/LayerClient;->getAppId()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/layer/sdk/LayerClient;->getAppId()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->e()Landroid/content/Context;

    move-result-object v0

    :goto_2
    const-string v4, "unknown"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/e;->a(Landroid/content/Context;)Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/e;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MM/dd/yy, hh:mm:ss aa zzz"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## Log Info"

    invoke-static {v8, v9}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v9, "App ID"

    invoke-static {v8, v9, v5}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "Time"

    invoke-static {v8, v5, v7}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "Platform"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Android "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v5, v7}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "Device"

    invoke-static {v8, v5, v1}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "SDK"

    invoke-static {v8, v1, v6}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Layer User ID"

    invoke-static {v8, v1, v3}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Provider User ID"

    invoke-static {v8, v1, v2}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Device Token"

    invoke-static {v8, v1, v0}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "User Agent"

    invoke-static {v8, v0, v4}, Lcom/layer/sdk/internal/lsdkk/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "<not included>"

    goto/16 :goto_3

    :cond_5
    move-object v0, v4

    goto/16 :goto_2

    :cond_6
    move-object v0, v4

    goto/16 :goto_1
.end method

.method static a(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/l$1;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/l$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/sdk/internal/lsdkk/l$a;

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/l$a;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/layer/sdk/internal/lsdkk/l$a;-><init>(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;B)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, " * "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic au(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/l;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using `"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "` as logging directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "LogUtils::createLogFile:Enter"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logcat -t "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Executing `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exit code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "LogUtils::createLogFile:Exit"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "LogUtils::createLogFile:Exit"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    throw v0
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;Landroid/app/Activity;I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "LogUtils::createScreenshotFile:Enter"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v4, p3, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "LogUtils::createScreenshotFile:Exit"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "LogUtils::createScreenshotFile:Exit"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    const-string v0, "If you have emailed our support about this issue already, please include the ticket ID you were assigned.\nOtherwise, provide steps to reproduce and more details about the issue.\nWithout these, we will not have enough information to investigate and will close the ticket.\n\nDescription of the issue: \nSteps to reproduce:\n1. \n2. \n3. \nRelated support ticket IDs: \nMore details: "

    return-object v0
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method
