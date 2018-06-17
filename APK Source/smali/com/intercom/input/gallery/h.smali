.class public abstract Lcom/intercom/input/gallery/h;
.super Landroid/support/v4/app/i;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intercom/input/gallery/h$a;
    }
.end annotation


# instance fields
.field galleryImage:Lcom/intercom/input/gallery/b;

.field private imageLoader:Lcom/intercom/composer/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    return-void
.end method

.method public static createArgs(Lcom/intercom/input/gallery/b;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gallery_image"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method


# virtual methods
.method public abstract getInjector(Lcom/intercom/input/gallery/h;)Lcom/intercom/input/gallery/h$a;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/intercom/input/gallery/m$d;->lightbox_send_button:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gallery_image"

    iget-object v2, p0, Lcom/intercom/input/gallery/h;->galleryImage:Lcom/intercom/input/gallery/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/intercom/input/gallery/h;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/j;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/intercom/input/gallery/h;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gallery_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/b;

    iput-object v0, p0, Lcom/intercom/input/gallery/h;->galleryImage:Lcom/intercom/input/gallery/b;

    invoke-virtual {p0, p0}, Lcom/intercom/input/gallery/h;->getInjector(Lcom/intercom/input/gallery/h;)Lcom/intercom/input/gallery/h$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intercom/input/gallery/h$a;->getImageLoader(Lcom/intercom/input/gallery/h;)Lcom/intercom/composer/e;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/h;->imageLoader:Lcom/intercom/composer/e;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/intercom/input/gallery/m$f;->intercom_composer_gallery_lightbox_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/intercom/input/gallery/m$d;->lightbox_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/intercom/input/gallery/h;->imageLoader:Lcom/intercom/composer/e;

    iget-object v2, p0, Lcom/intercom/input/gallery/h;->galleryImage:Lcom/intercom/input/gallery/b;

    invoke-interface {v1, v2, v0}, Lcom/intercom/composer/e;->loadImageIntoView(Lcom/intercom/input/gallery/b;Landroid/widget/ImageView;)V

    sget v0, Lcom/intercom/input/gallery/m$d;->lightbox_send_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/intercom/input/gallery/m$d;->lightbox_close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
