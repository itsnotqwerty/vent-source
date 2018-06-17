.class Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment;->getInjector(Lcom/intercom/input/gallery/h;)Lcom/intercom/input/gallery/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageLoader(Lcom/intercom/input/gallery/h;)Lcom/intercom/composer/e;
    .locals 3

    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKc:Lio/intercom/a/a/a/c/b/i;

    const/4 v1, 0x0

    invoke-static {p1}, Lio/intercom/a/a/a/c;->r(Landroid/support/v4/app/i;)Lio/intercom/a/a/a/j;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->create(Lio/intercom/a/a/a/c/b/i;Lio/intercom/a/a/a/c/d/a/e;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;

    move-result-object v0

    return-object v0
.end method
