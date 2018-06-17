.class Lio/intercom/android/sdk/blocks/Video$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/Video$2;->onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/android/sdk/blocks/Video$2;

.field final synthetic val$thumbnailUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/Video$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->this$1:Lio/intercom/android/sdk/blocks/Video$2;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->val$thumbnailUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->this$1:Lio/intercom/android/sdk/blocks/Video$2;

    iget-object v0, v0, Lio/intercom/android/sdk/blocks/Video$2;->this$0:Lio/intercom/android/sdk/blocks/Video;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->this$1:Lio/intercom/android/sdk/blocks/Video$2;

    iget-object v1, v1, Lio/intercom/android/sdk/blocks/Video$2;->val$videoImageView:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://player.vimeo.com/video/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->this$1:Lio/intercom/android/sdk/blocks/Video$2;

    iget-object v3, v3, Lio/intercom/android/sdk/blocks/Video$2;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->val$thumbnailUrl:Ljava/lang/String;

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/Video$2$1;->this$1:Lio/intercom/android/sdk/blocks/Video$2;

    iget-object v4, v4, Lio/intercom/android/sdk/blocks/Video$2;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/blocks/Video;->createThumbnail(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
