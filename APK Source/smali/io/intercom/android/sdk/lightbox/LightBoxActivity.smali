.class public Lio/intercom/android/sdk/lightbox/LightBoxActivity;
.super Landroid/support/v7/app/d;

# interfaces
.implements Lio/intercom/android/sdk/lightbox/LightBoxListener;


# static fields
.field private static final ANIMATION_TIME_MS:I = 0x12c

.field private static final CACHE_HEIGHT:Ljava/lang/String; = "cache_height"

.field private static final CACHE_WIDTH:Ljava/lang/String; = "cache_width"

.field private static final EXTRA_ACTIVITY_FULLSCREEN:Ljava/lang/String; = "extra_activity_fullscreen"

.field private static final EXTRA_IMAGE_URL:Ljava/lang/String; = "extra_image_url"

.field public static final TRANSITION_KEY:Ljava/lang/String; = "lightbox_image"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method private fadeIn()V
    .locals 5

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_transparent_black_lightbox:I

    invoke-static {p0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lio/intercom/android/sdk/lightbox/LightBoxActivity$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity$1;-><init>(Lio/intercom/android/sdk/lightbox/LightBoxActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private fadeOut()V
    .locals 5

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_transparent_black_lightbox:I

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-static {p0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lio/intercom/android/sdk/lightbox/LightBoxActivity$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity$2;-><init>(Lio/intercom/android/sdk/lightbox/LightBoxActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static imageIntent(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/lightbox/LightBoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_image_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cache_width"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cache_height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_activity_fullscreen"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeLightBox()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->fadeOut()V

    invoke-virtual {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/d;->onBackPressed()V

    invoke-virtual {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->closeLightBox()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v5, 0x400

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "extra_image_url"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->imageUrl:Ljava/lang/String;

    const-string v0, "cache_width"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "cache_height"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "extra_activity_fullscreen"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v7}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    move v1, v0

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_activity_lightbox:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->setContentView(I)V

    sget v0, Lio/intercom/android/sdk/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->rootView:Landroid/view/ViewGroup;

    sget v0, Lio/intercom/android/sdk/R$id;->full_image:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/lightbox/LightBoxImageView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    const-string v2, "lightbox_image"

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/lightbox/LightBoxImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lio/intercom/a/a/a/g/g;

    invoke-direct {v2}, Lio/intercom/a/a/a/g/g;-><init>()V

    new-instance v4, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;

    invoke-virtual {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/intercom/android/sdk/R$dimen;->intercom_image_rounded_corners:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v5}, Lio/intercom/android/sdk/transforms/RoundedCornersTransform;-><init>(I)V

    invoke-virtual {v2, v4, v7}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v2

    sget v4, Lio/intercom/android/sdk/R$drawable;->intercom_error:I

    invoke-virtual {v2, v4}, Lio/intercom/a/a/a/g/g;->fo(I)Lio/intercom/a/a/a/g/g;

    move-result-object v2

    iget-object v4, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v4}, Lio/intercom/android/sdk/utilities/ImageUtils;->getDiskCacheStrategy(Ljava/lang/String;)Lio/intercom/a/a/a/c/b/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v2

    invoke-static {v3, v1}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3, v1}, Lio/intercom/a/a/a/g/g;->aO(II)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    :goto_1
    invoke-static {p0}, Lio/intercom/a/a/a/c;->b(Landroid/support/v4/app/j;)Lio/intercom/a/a/a/j;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v2

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/lightbox/LightBoxImageView;->setLightBoxListener(Lio/intercom/android/sdk/lightbox/LightBoxListener;)V

    invoke-direct {p0}, Lio/intercom/android/sdk/lightbox/LightBoxActivity;->fadeIn()V

    return-void

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move v1, v2

    move v3, v2

    goto :goto_0
.end method
