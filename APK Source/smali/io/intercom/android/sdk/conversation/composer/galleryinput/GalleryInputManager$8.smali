.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->createGifInput()Lcom/intercom/composer/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intercom/composer/d",
        "<",
        "Lcom/intercom/input/gallery/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$8;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/intercom/input/gallery/f;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputFragment;

    invoke-direct {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputFragment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$8;->create()Lcom/intercom/input/gallery/f;

    move-result-object v0

    return-object v0
.end method
