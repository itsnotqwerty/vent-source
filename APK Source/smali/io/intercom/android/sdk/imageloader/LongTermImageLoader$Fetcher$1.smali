.class Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;
.super Lio/intercom/a/a/a/g/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;->loadImageFromFile(Ljava/lang/String;Ljava/io/File;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/g/a/f",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

.field final synthetic val$onImageReadyListener:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;

.field final synthetic val$requestManager:Lio/intercom/a/a/a/j;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;IILjava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->this$0:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

    iput-object p4, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$onImageReadyListener:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;

    iput-object p6, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {p0, p2, p3}, Lio/intercom/a/a/a/g/a/f;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->this$0:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$onImageReadyListener:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;

    iget-object v3, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher;->fetchImageFromWeb(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/g/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lio/intercom/a/a/a/g/b/d",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->val$onImageReadyListener:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;

    invoke-interface {v0, p1}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;->onImageReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$Fetcher$1;->onResourceReady(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/g/b/d;)V

    return-void
.end method
