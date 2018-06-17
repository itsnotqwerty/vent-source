.class public Lcom/intercom/input/gallery/GalleryLightBoxActivity;
.super Landroid/support/v7/app/d;


# instance fields
.field blH:Landroid/support/v4/app/n;

.field private bmi:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/intercom/input/gallery/h;",
            ">;"
        }
    .end annotation
.end field

.field galleryImage:Lcom/intercom/input/gallery/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/intercom/input/gallery/b;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/intercom/input/gallery/b;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/intercom/input/gallery/h;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intercom/input/gallery/GalleryLightBoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gallery_image"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fragment_class"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/d;->onBackPressed()V

    sget v0, Lcom/intercom/input/gallery/m$a;->intercom_composer_stay:I

    sget v1, Lcom/intercom/input/gallery/m$a;->intercom_composer_slide_down:I

    invoke-virtual {p0, v0, v1}, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    sget v1, Lcom/intercom/input/gallery/m$f;->intercom_composer_activity_gallery_lightbox:I

    invoke-virtual {p0, v1}, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->setContentView(I)V

    sget v1, Lcom/intercom/input/gallery/m$b;->intercom_composer_status_bar:I

    invoke-static {v0, v1}, Lcom/intercom/composer/h;->a(Landroid/view/Window;I)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "gallery_image"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/b;

    iput-object v0, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->galleryImage:Lcom/intercom/input/gallery/b;

    const-string v0, "fragment_class"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->bmi:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->blH:Landroid/support/v4/app/n;

    iget-object v0, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->blH:Landroid/support/v4/app/n;

    sget v1, Lcom/intercom/input/gallery/m$d;->fragment_container:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->bmi:Ljava/lang/Class;

    invoke-static {v0}, Lcom/intercom/input/gallery/a;->u(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/h;

    iget-object v1, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->galleryImage:Lcom/intercom/input/gallery/b;

    invoke-static {v1}, Lcom/intercom/input/gallery/h;->createArgs(Lcom/intercom/input/gallery/b;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/h;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/intercom/input/gallery/GalleryLightBoxActivity;->blH:Landroid/support/v4/app/n;

    invoke-virtual {v1}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v1

    sget v2, Lcom/intercom/input/gallery/m$d;->fragment_container:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/i;)Landroid/support/v4/app/t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/t;->commit()I

    :cond_0
    return-void
.end method
