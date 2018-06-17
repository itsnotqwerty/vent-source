.class public Lio/intercom/android/sdk/imageloader/LongTermImageLoader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;,
        Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1900000

.field private static final twig:Lio/intercom/android/sdk/twig/Twig;


# instance fields
.field private final diskCache:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;

.field private final imageFetcher:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->diskCache:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;

    iput-object p2, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->imageFetcher:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lio/intercom/android/sdk/imageloader/LongTermImageLoader;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "intercom-glide"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;

    const/high16 v2, 0x1900000

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;-><init>(Ljava/io/File;I)V

    new-instance v1, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    new-instance v2, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

    invoke-direct {v2, v0}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;-><init>(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;)V

    invoke-direct {v1, v0, v2}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;-><init>(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->diskCache:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;

    invoke-virtual {v0}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->close()V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->diskCache:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez p2, :cond_0

    sget-object p2, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;->NULL:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->imageFetcher:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

    invoke-virtual {v1, p1, v0, p2, p3}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;->loadImageFromFile(Ljava/lang/String;Ljava/io/File;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->imageFetcher:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;->fetchImageFromWeb(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    goto :goto_0
.end method
