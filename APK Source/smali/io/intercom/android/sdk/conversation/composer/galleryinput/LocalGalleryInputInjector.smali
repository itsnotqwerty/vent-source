.class Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryInputInjector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/f$a;


# instance fields
.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryInputInjector;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method


# virtual methods
.method public getDataSource(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/d;
    .locals 3

    invoke-virtual {p1}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "intercom_composer_permission_status_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lcom/intercom/input/gallery/l;

    invoke-direct {v2, v0, v1}, Lcom/intercom/input/gallery/l;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    new-instance v1, Lcom/intercom/input/gallery/k;

    invoke-direct {v1, v0, v2, p1}, Lcom/intercom/input/gallery/k;-><init>(Landroid/content/Context;Lcom/intercom/input/gallery/l;Lcom/intercom/input/gallery/g;)V

    return-object v1
.end method

.method public getEmptyViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_no_photos_on_device:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_no_photos:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpanderButton(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_expander_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v1

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-object v0
.end method

.method public getImageLoader(Lcom/intercom/input/gallery/f;)Lcom/intercom/composer/e;
    .locals 3

    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKc:Lio/intercom/a/a/a/c/b/i;

    sget-object v1, Lio/intercom/android/sdk/conversation/composer/galleryinput/DownscaleOnlyCenterCrop;->INSTANCE:Lio/intercom/android/sdk/conversation/composer/galleryinput/DownscaleOnlyCenterCrop;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryInputInjector;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;->create(Lio/intercom/a/a/a/c/b/i;Lio/intercom/a/a/a/c/d/a/e;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLightBoxFragmentClass(Lcom/intercom/input/gallery/f;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intercom/input/gallery/f;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/intercom/input/gallery/h;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/LocalGalleryLightBoxFragment;

    return-object v0
.end method

.method public getSearchView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeColor(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    return v0
.end method

.method public getToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_gallery_input_toolbar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method
