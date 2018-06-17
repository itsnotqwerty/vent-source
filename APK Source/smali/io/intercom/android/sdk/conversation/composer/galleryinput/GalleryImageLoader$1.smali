.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->loadImageIntoView(Lcom/intercom/input/gallery/b;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/f",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lio/intercom/a/a/a/c/b/p;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/p;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/g/a/h",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;->this$0:Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;->val$imagePath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->access$000(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/g/a/h",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lio/intercom/a/a/a/c/a;",
            "Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z

    move-result v0

    return v0
.end method
