.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->createGalleryInput()Lcom/intercom/composer/b/b;
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

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$2;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGalleryOutputReceived(Lcom/intercom/input/gallery/b;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$2;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->access$100(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;->onUploadImageSelected(Lcom/intercom/input/gallery/b;)V

    return-void
.end method
