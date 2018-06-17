.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/f$a;


# instance fields
.field private final dataSource:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/j;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v1

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;-><init>(Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;->dataSource:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;)Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;->dataSource:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    return-object v0
.end method


# virtual methods
.method public getDataSource(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/d;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;->dataSource:Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;

    return-object v0
.end method

.method public getEmptyViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_no_gifs_matching_query:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_no_gifs_found:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_try_again_minute:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_gifs_load_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpanderButton(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageLoader(Lcom/intercom/input/gallery/f;)Lcom/intercom/composer/e;
    .locals 3

    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKd:Lio/intercom/a/a/a/c/b/i;

    sget-object v1, Lio/intercom/android/sdk/conversation/composer/galleryinput/DownscaleOnlyCenterCrop;->INSTANCE:Lio/intercom/android/sdk/conversation/composer/galleryinput/DownscaleOnlyCenterCrop;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;->requestManager:Lio/intercom/a/a/a/j;

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

    const-class v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifLightBoxFragment;

    return-object v0
.end method

.method public getSearchView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_gif_input_search:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

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
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_gif_input_toolbar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    sget v1, Lio/intercom/android/sdk/R$id;->clear_search:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget v2, Lio/intercom/android/sdk/R$id;->search_bar:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v3, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$1;

    invoke-direct {v3, p0, v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$1;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$2;

    invoke-direct {v3, p0, v2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector$2;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
