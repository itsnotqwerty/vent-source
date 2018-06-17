.class public Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/ImageClickListener;


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/api/Api;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;->api:Lio/intercom/android/sdk/api/Api;

    return-void
.end method


# virtual methods
.method public onImageClicked(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;->api:Lio/intercom/android/sdk/api/Api;

    invoke-static {p2, v0, v1}, Lio/intercom/android/sdk/utilities/LinkOpener;->handleUrl(Ljava/lang/String;Landroid/content/Context;Lio/intercom/android/sdk/api/Api;)V

    :goto_0
    return-void

    :cond_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, p1, v1, p4, p5}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->imageIntent(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/content/Intent;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const-string v2, "lightbox_image"

    invoke-static {v0, p3, v2}, Landroid/support/v4/app/b;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/b;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p1, v1, p4, p5}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->imageIntent(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
