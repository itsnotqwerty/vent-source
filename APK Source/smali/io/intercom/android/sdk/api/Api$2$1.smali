.class Lio/intercom/android/sdk/api/Api$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/api/Api$2;->onSuccess(Lio/intercom/android/sdk/models/Upload$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/android/sdk/api/Api$2;

.field final synthetic val$uploadResponse:Lio/intercom/android/sdk/models/Upload;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/Api$2;Lio/intercom/android/sdk/models/Upload;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iput-object p2, p0, Lio/intercom/android/sdk/api/Api$2$1;->val$uploadResponse:Lio/intercom/android/sdk/models/Upload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    invoke-static {}, Lio/intercom/android/sdk/api/Api;->access$000()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v0, v0, Lio/intercom/android/sdk/api/Api$2;->this$0:Lio/intercom/android/sdk/api/Api;

    iget-object v0, v0, Lio/intercom/android/sdk/api/Api;->bus:Lio/intercom/a/c/a/b;

    new-instance v1, Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget v2, v2, Lio/intercom/android/sdk/api/Api$2;->val$tempPartPosition:I

    iget-object v3, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v3, v3, Lio/intercom/android/sdk/api/Api$2;->val$tempPartId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lio/intercom/android/sdk/api/Api;->access$000()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    const-string v1, "API Success"

    const-string v2, "Successfully uploaded"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v0, v0, Lio/intercom/android/sdk/api/Api$2;->this$0:Lio/intercom/android/sdk/api/Api;

    iget-object v6, v0, Lio/intercom/android/sdk/api/Api;->bus:Lio/intercom/a/c/a/b;

    new-instance v0, Lio/intercom/android/sdk/models/events/UploadEvent;

    iget-object v1, p0, Lio/intercom/android/sdk/api/Api$2$1;->val$uploadResponse:Lio/intercom/android/sdk/models/Upload;

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v2, v2, Lio/intercom/android/sdk/api/Api$2;->val$data:Lcom/intercom/input/gallery/b;

    iget v2, v2, Lcom/intercom/input/gallery/b;->bmf:I

    int-to-long v2, v2

    iget-object v4, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget v4, v4, Lio/intercom/android/sdk/api/Api$2;->val$tempPartPosition:I

    iget-object v5, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v5, v5, Lio/intercom/android/sdk/api/Api$2;->val$tempPartId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/models/events/UploadEvent;-><init>(Lio/intercom/android/sdk/models/Upload;JILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->close()V

    return-void

    :cond_0
    invoke-static {}, Lio/intercom/android/sdk/api/Api;->access$000()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload failed: request body "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/intercom/okhttp3/Response;->body()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v0, v0, Lio/intercom/android/sdk/api/Api$2;->this$0:Lio/intercom/android/sdk/api/Api;

    iget-object v0, v0, Lio/intercom/android/sdk/api/Api;->bus:Lio/intercom/a/c/a/b;

    new-instance v1, Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;

    iget-object v2, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget v2, v2, Lio/intercom/android/sdk/api/Api$2;->val$tempPartPosition:I

    iget-object v3, p0, Lio/intercom/android/sdk/api/Api$2$1;->this$1:Lio/intercom/android/sdk/api/Api$2;

    iget-object v3, v3, Lio/intercom/android/sdk/api/Api$2;->val$tempPartId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/intercom/a/c/a/b;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
