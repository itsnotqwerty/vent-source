.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->loadDefaultGifs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/Callback",
        "<",
        "Lio/intercom/android/sdk/models/GifResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/GifResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->access$102(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Z)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->access$200(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)Lcom/intercom/input/gallery/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/intercom/input/gallery/d$a;->onError()V

    return-void
.end method

.method public onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/GifResponse;",
            ">;",
            "Lio/intercom/retrofit2/Response",
            "<",
            "Lio/intercom/android/sdk/models/GifResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    invoke-virtual {p2}, Lio/intercom/retrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/GifResponse;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/GifResponse;->results()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->access$000(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->access$102(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Z)Z

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    invoke-static {v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->access$200(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)Lcom/intercom/input/gallery/d$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/intercom/input/gallery/d$a;->u(Ljava/util/List;)V

    return-void
.end method
