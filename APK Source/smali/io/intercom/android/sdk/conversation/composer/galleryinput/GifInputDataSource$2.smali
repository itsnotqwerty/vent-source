.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->searchGifs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->access$400(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;->val$query:Ljava/lang/String;

    new-instance v2, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2$1;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;)V

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/api/Api;->fetchGifs(Ljava/lang/String;Lio/intercom/retrofit2/Callback;)V

    return-void
.end method
