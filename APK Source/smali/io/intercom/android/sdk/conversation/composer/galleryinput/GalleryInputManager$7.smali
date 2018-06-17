.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->createGifInput()Lcom/intercom/composer/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$7;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputExpanded()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$7;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->access$300(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$7;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-static {v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->access$200(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expanded_gif_input"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->expandedInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
