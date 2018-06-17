.class Lio/intercom/android/sdk/blocks/Video$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/Video;->fetchThumbnail(Lio/intercom/android/sdk/blocks/VideoProvider;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/Video;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$playButton:Landroid/widget/ImageView;

.field final synthetic val$videoImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Video$2;->this$0:Lio/intercom/android/sdk/blocks/Video;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Video$2;->val$videoImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/Video$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/Video$2;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video$2;->this$0:Lio/intercom/android/sdk/blocks/Video;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Video$2;->val$videoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/Video;->setFailedImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    :goto_0
    const-string v1, "thumbnail_large"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Video$2;->val$videoImageView:Landroid/widget/ImageView;

    new-instance v2, Lio/intercom/android/sdk/blocks/Video$2$1;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/blocks/Video$2$1;-><init>(Lio/intercom/android/sdk/blocks/Video$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Video$2;->this$0:Lio/intercom/android/sdk/blocks/Video;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/Video;->access$000(Lio/intercom/android/sdk/blocks/Video;)Lio/intercom/android/sdk/twig/Twig;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t read response body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    throw v0
.end method
