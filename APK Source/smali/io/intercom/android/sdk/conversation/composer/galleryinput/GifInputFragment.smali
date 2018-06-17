.class public Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputFragment;
.super Lcom/intercom/input/gallery/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intercom/input/gallery/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInjector(Lcom/intercom/input/gallery/f;)Lcom/intercom/input/gallery/f$a;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;

    invoke-static {p0}, Lio/intercom/a/a/a/c;->r(Landroid/support/v4/app/i;)Lio/intercom/a/a/a/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputInjector;-><init>(Lio/intercom/a/a/a/j;)V

    return-object v0
.end method
