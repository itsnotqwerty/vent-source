.class Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/imageloader/WallpaperLoader;->loadWallpaperInto(Landroid/widget/ImageView;Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/imageloader/WallpaperLoader;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/imageloader/WallpaperLoader;Landroid/widget/ImageView;Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;->this$0:Lio/intercom/android/sdk/imageloader/WallpaperLoader;

    iput-object p2, p0, Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;->val$listener:Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xa0

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/WallpaperLoader$1;->val$listener:Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;->onLoadComplete()V

    goto :goto_0
.end method
