.class Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/imageloader/LongTermImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fetcher"
.end annotation


# instance fields
.field final diskCache:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;->diskCache:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache;

    return-void
.end method


# virtual methods
.method fetchImageFromWeb(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V
    .locals 7

    const/high16 v2, -0x80000000

    invoke-virtual {p3}, Lio/intercom/a/a/a/j;->HC()Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/i;->aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;

    move-result-object v0

    new-instance v1, Lio/intercom/a/a/a/g/g;

    invoke-direct {v1}, Lio/intercom/a/a/a/g/g;-><init>()V

    sget-object v3, Lio/intercom/a/a/a/c/b/i;->cKc:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v1, v3}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v6

    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$2;

    move-object v1, p0

    move v3, v2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$2;-><init>(Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;IILio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;

    return-void
.end method

.method loadImageFromFile(Ljava/lang/String;Ljava/io/File;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V
    .locals 8

    const/high16 v2, -0x80000000

    invoke-virtual {p4}, Lio/intercom/a/a/a/j;->HC()Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/intercom/a/a/a/i;->aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;

    move-result-object v0

    new-instance v1, Lio/intercom/a/a/a/g/g;

    invoke-direct {v1}, Lio/intercom/a/a/a/g/g;-><init>()V

    sget-object v3, Lio/intercom/a/a/a/c/b/i;->cKc:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v1, v3}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v7

    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;

    move-object v1, p0

    move v3, v2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;-><init>(Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;IILjava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;

    return-void
.end method
