.class public abstract Lcom/intercom/input/gallery/f;
.super Lcom/intercom/composer/b/c;

# interfaces
.implements Lcom/intercom/input/gallery/adapter/b;
.implements Lcom/intercom/input/gallery/adapter/e;
.implements Lcom/intercom/input/gallery/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intercom/input/gallery/f$a;
    }
.end annotation


# static fields
.field private static final ARG_EXPANDED:Ljava/lang/String; = "expanded"

.field public static final GALLERY_FULL_SCREEN_REQUEST_CODE:I = 0xe


# instance fields
.field contentLayout:Landroid/widget/FrameLayout;

.field final dataListener:Lcom/intercom/input/gallery/d$a;

.field dataSource:Lcom/intercom/input/gallery/d;

.field emptyLayout:Lcom/intercom/input/gallery/EmptyView;

.field endlessRecyclerScrollListener:Lcom/intercom/input/gallery/adapter/a;

.field expanded:Z

.field private final expanderClickListener:Landroid/view/View$OnClickListener;

.field final galleryImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intercom/input/gallery/b;",
            ">;"
        }
    .end annotation
.end field

.field galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

.field galleryOutputListener:Lcom/intercom/input/gallery/i;

.field private imageLoader:Lcom/intercom/composer/e;

.field injector:Lcom/intercom/input/gallery/f$a;

.field layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field recyclerAdapter:Lcom/intercom/input/gallery/adapter/c;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/intercom/composer/b/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    new-instance v0, Lcom/intercom/input/gallery/f$1;

    invoke-direct {v0, p0}, Lcom/intercom/input/gallery/f$1;-><init>(Lcom/intercom/input/gallery/f;)V

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->dataListener:Lcom/intercom/input/gallery/d$a;

    new-instance v0, Lcom/intercom/input/gallery/f$2;

    invoke-direct {v0, p0}, Lcom/intercom/input/gallery/f$2;-><init>(Lcom/intercom/input/gallery/f;)V

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->expanderClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/intercom/input/gallery/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/intercom/input/gallery/f;->showPermissionPermanentlyDeniedDialog()V

    return-void
.end method

.method public static createArguments(Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "expanded"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private setUpAppBar(Lcom/intercom/input/gallery/f$a;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-interface {p1, p2}, Lcom/intercom/input/gallery/f$a;->getToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0}, Landroid/support/v7/app/a;->ep()V

    invoke-virtual {v0}, Landroid/support/v7/app/a;->eq()V

    :cond_0
    return-void
.end method

.method private setUpPreviewViews(Lcom/intercom/input/gallery/f$a;Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Lcom/intercom/input/gallery/f$a;->getExpanderButton(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->expanderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Lcom/intercom/input/gallery/f$a;->getSearchView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->expanderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private showPermissionPermanentlyDeniedDialog()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_photo_access_denied:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_go_to_device_settings:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_app_settings:I

    new-instance v2, Lcom/intercom/input/gallery/f$4;

    invoke-direct {v2, p0}, Lcom/intercom/input/gallery/f$4;-><init>(Lcom/intercom/input/gallery/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_not_now:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    return-void
.end method


# virtual methods
.method checkPermissionAndFetchImages(Z)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v0}, Lcom/intercom/input/gallery/d;->getPermissionStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->fetchImagesIfNotFetched()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/f;->showEmptyOrPermissionScreen(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v0}, Lcom/intercom/input/gallery/d;->requestPermission()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/f;->showEmptyOrPermissionScreen(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/intercom/input/gallery/f;->showPermissionPermanentlyDeniedDialog()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method fetchImagesIfNotFetched()V
    .locals 3

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/intercom/input/gallery/d;->getImages(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract getInjector(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/f$a;
.end method

.method getLayoutRes()I
    .locals 1

    iget-boolean v0, p0, Lcom/intercom/input/gallery/f;->expanded:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/intercom/input/gallery/m$f;->intercom_composer_fragment_composer_gallery_expanded:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/intercom/input/gallery/m$f;->intercom_composer_fragment_composer_gallery:I

    goto :goto_0
.end method

.method launchLightBoxActivity(Lcom/intercom/input/gallery/b;)V
    .locals 4

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0, p0}, Lcom/intercom/input/gallery/f;->getInjector(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/f$a;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/intercom/input/gallery/f$a;->getLightBoxFragmentClass(Lcom/intercom/input/gallery/f;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->a(Landroid/content/Context;Lcom/intercom/input/gallery/b;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Lcom/intercom/input/gallery/m$a;->intercom_composer_slide_up:I

    sget v3, Lcom/intercom/input/gallery/m$a;->intercom_composer_stay:I

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/content/Context;II)Landroid/support/v4/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2, v0}, Lcom/intercom/input/gallery/f;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->galleryOutputListener:Lcom/intercom/input/gallery/i;

    if-eqz v0, :cond_0

    const-string v0, "gallery_image"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/b;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->galleryOutputListener:Lcom/intercom/input/gallery/i;

    invoke-interface {v1, v0}, Lcom/intercom/input/gallery/i;->onGalleryOutputReceived(Lcom/intercom/input/gallery/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/intercom/composer/b/c;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/intercom/composer/b/c;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/intercom/input/gallery/i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intercom/input/gallery/i;

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->galleryOutputListener:Lcom/intercom/input/gallery/i;

    :cond_0
    instance-of v0, p1, Lcom/intercom/input/gallery/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/intercom/input/gallery/e;

    iput-object p1, p0, Lcom/intercom/input/gallery/f;->galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/intercom/composer/b/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "expanded"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intercom/input/gallery/f;->expanded:Z

    :cond_0
    iget-boolean v0, p0, Lcom/intercom/input/gallery/f;->expanded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$e;->intercom_composer_expanded_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/intercom/input/gallery/f;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    :goto_0
    invoke-virtual {p0, p0}, Lcom/intercom/input/gallery/f;->getInjector(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-interface {v0, p0}, Lcom/intercom/input/gallery/f$a;->getDataSource(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/d;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->dataListener:Lcom/intercom/input/gallery/d$a;

    invoke-interface {v0, v1}, Lcom/intercom/input/gallery/d;->setListener(Lcom/intercom/input/gallery/d$a;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-interface {v0, p0}, Lcom/intercom/input/gallery/f$a;->getImageLoader(Lcom/intercom/input/gallery/f;)Lcom/intercom/composer/e;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->imageLoader:Lcom/intercom/composer/e;

    new-instance v0, Lcom/intercom/input/gallery/adapter/a;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v1, p0}, Lcom/intercom/input/gallery/adapter/a;-><init>(Landroid/support/v7/widget/LinearLayoutManager;Lcom/intercom/input/gallery/adapter/b;)V

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->endlessRecyclerScrollListener:Lcom/intercom/input/gallery/adapter/a;

    new-instance v0, Lcom/intercom/input/gallery/adapter/c;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    iget-boolean v3, p0, Lcom/intercom/input/gallery/f;->expanded:Z

    iget-object v5, p0, Lcom/intercom/input/gallery/f;->imageLoader:Lcom/intercom/composer/e;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/intercom/input/gallery/adapter/c;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;ZLcom/intercom/input/gallery/adapter/e;Lcom/intercom/composer/e;)V

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerAdapter:Lcom/intercom/input/gallery/adapter/c;

    return-void

    :cond_1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/intercom/input/gallery/f;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getLayoutRes()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/intercom/input/gallery/m$d;->gallery_root_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/intercom/input/gallery/m$d;->gallery_recycler_view:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    sget v1, Lcom/intercom/input/gallery/m$d;->gallery_empty_view:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/intercom/input/gallery/EmptyView;

    iput-object v1, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    sget v1, Lcom/intercom/input/gallery/m$d;->gallery_content_layout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/intercom/input/gallery/f;->expanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-direct {p0, v1, v0}, Lcom/intercom/input/gallery/f;->setUpAppBar(Lcom/intercom/input/gallery/f$a;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/intercom/input/gallery/j;

    sget v3, Lcom/intercom/input/gallery/m$c;->intercom_composer_toolbar_height:I

    invoke-direct {v1, v3}, Lcom/intercom/input/gallery/j;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    :goto_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    new-instance v1, Lcom/intercom/input/gallery/f$3;

    invoke-direct {v1, p0}, Lcom/intercom/input/gallery/f$3;-><init>(Lcom/intercom/input/gallery/f;)V

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/intercom/input/gallery/f$a;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setThemeColor(I)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-direct {p0, v1, v0}, Lcom/intercom/input/gallery/f;->setUpPreviewViews(Lcom/intercom/input/gallery/f$a;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/intercom/composer/b/c;->onDestroyView()V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->endlessRecyclerScrollListener:Lcom/intercom/input/gallery/adapter/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    return-void
.end method

.method public onImageClicked(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->recyclerAdapter:Lcom/intercom/input/gallery/adapter/c;

    invoke-virtual {v1}, Lcom/intercom/input/gallery/adapter/c;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->recyclerAdapter:Lcom/intercom/input/gallery/adapter/c;

    iget-object v1, v1, Lcom/intercom/input/gallery/adapter/c;->galleryImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/b;

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/f;->launchLightBoxActivity(Lcom/intercom/input/gallery/b;)V

    :cond_0
    return-void
.end method

.method public onInputDeselected()V
    .locals 0

    return-void
.end method

.method public onInputReselected()V
    .locals 0

    return-void
.end method

.method public onInputSelected()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/f;->checkPermissionAndFetchImages(Z)V

    return-void
.end method

.method public onLoadMore()V
    .locals 3

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v0}, Lcom/intercom/input/gallery/d;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/intercom/input/gallery/d;->getImages(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/f;->checkPermissionAndFetchImages(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/intercom/composer/b/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->recyclerAdapter:Lcom/intercom/input/gallery/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->endlessRecyclerScrollListener:Lcom/intercom/input/gallery/adapter/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    iget-boolean v0, p0, Lcom/intercom/input/gallery/f;->expanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->onInputSelected()V

    :cond_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->endlessRecyclerScrollListener:Lcom/intercom/input/gallery/adapter/a;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v1}, Lcom/intercom/input/gallery/d;->getCount()I

    move-result v1

    iput v1, v0, Lcom/intercom/input/gallery/adapter/a;->bmo:I

    return-void
.end method

.method protected passDataOnViewCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setGalleryExpandedListener(Lcom/intercom/input/gallery/e;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/input/gallery/f;->galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

    return-void
.end method

.method public setGalleryListener(Lcom/intercom/input/gallery/i;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/input/gallery/f;->galleryOutputListener:Lcom/intercom/input/gallery/i;

    return-void
.end method

.method showEmptyOrPermissionScreen(I)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v2}, Lcom/intercom/input/gallery/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_photo_access_denied:I

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setTitle(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_allow_storage_access:I

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setSubtitle(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v2}, Lcom/intercom/input/gallery/EmptyView;->setActionButtonVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v2}, Lcom/intercom/input/gallery/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_access_photos:I

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setTitle(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    sget v1, Lcom/intercom/input/gallery/m$g;->intercom_storage_access_request:I

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setSubtitle(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v3}, Lcom/intercom/input/gallery/EmptyView;->setActionButtonVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v2}, Lcom/intercom/input/gallery/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v3}, Lcom/intercom/input/gallery/EmptyView;->setActionButtonVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/intercom/input/gallery/f$a;->getEmptyViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/intercom/input/gallery/f$a;->getEmptyViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v3}, Lcom/intercom/input/gallery/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showErrorScreen()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    invoke-virtual {v0, v3}, Lcom/intercom/input/gallery/EmptyView;->setActionButtonVisibility(I)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/intercom/input/gallery/f$a;->getErrorViewTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->emptyLayout:Lcom/intercom/input/gallery/EmptyView;

    iget-object v1, p0, Lcom/intercom/input/gallery/f;->injector:Lcom/intercom/input/gallery/f$a;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/intercom/input/gallery/f$a;->getErrorViewSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/EmptyView;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/f;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
