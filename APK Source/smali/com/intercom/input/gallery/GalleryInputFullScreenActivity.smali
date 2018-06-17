.class public Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;
.super Landroid/support/v7/app/d;

# interfaces
.implements Lcom/intercom/input/gallery/i;


# instance fields
.field private bmi:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/intercom/input/gallery/f;",
            ">;"
        }
    .end annotation
.end field

.field private bmj:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/intercom/input/gallery/f;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fragment_class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/d;->onBackPressed()V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    sget v0, Lcom/intercom/input/gallery/m$a;->intercom_composer_stay:I

    sget v1, Lcom/intercom/input/gallery/m$a;->intercom_composer_slide_down:I

    invoke-virtual {p0, v0, v1}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/intercom/input/gallery/m$f;->intercom_composer_activity_input_full_screen:I

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$b;->intercom_composer_status_bar:I

    invoke-static {v0, v1}, Lcom/intercom/composer/h;->a(Landroid/view/Window;I)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "fragment_class"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->bmi:Ljava/lang/Class;

    const-string v0, "fragment_args"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->bmj:Landroid/os/Bundle;

    return-void
.end method

.method public onGalleryOutputReceived(Lcom/intercom/input/gallery/b;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gallery_image"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->onBackPressed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v2

    const-class v0, Lcom/intercom/input/gallery/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->bmi:Ljava/lang/Class;

    invoke-static {v0}, Lcom/intercom/input/gallery/a;->u(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/f;

    iget-object v1, p0, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->bmj:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/intercom/input/gallery/f;->createArguments(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/f;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/intercom/input/gallery/f;->setGalleryListener(Lcom/intercom/input/gallery/i;)V

    invoke-virtual {v2}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v1

    sget v2, Lcom/intercom/input/gallery/m$d;->expanded_fragment:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/t;->b(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/t;->commit()I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    iget-object v4, p0, Lcom/intercom/input/gallery/GalleryInputFullScreenActivity;->bmj:Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
