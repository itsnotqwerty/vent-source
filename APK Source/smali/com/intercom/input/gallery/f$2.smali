.class final Lcom/intercom/input/gallery/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intercom/input/gallery/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmh:Lcom/intercom/input/gallery/f;


# direct methods
.method constructor <init>(Lcom/intercom/input/gallery/f;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

    invoke-interface {v0}, Lcom/intercom/input/gallery/e;->onInputExpanded()V

    :cond_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v0}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v2}, Lcom/intercom/input/gallery/f;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v1}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    sget v2, Lcom/intercom/input/gallery/m$a;->intercom_composer_slide_up:I

    sget v3, Lcom/intercom/input/gallery/m$a;->intercom_composer_stay:I

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/content/Context;II)Landroid/support/v4/app/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/input/gallery/f$2;->bmh:Lcom/intercom/input/gallery/f;

    const/16 v3, 0xe

    invoke-virtual {v2, v0, v3, v1}, Lcom/intercom/input/gallery/f;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
