.class public Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;
.super Ljava/lang/Object;


# static fields
.field private static final INPUT_EXPANDED_PREFIX:Ljava/lang/String; = "expanded_"


# instance fields
.field private conversationId:Ljava/lang/String;

.field private final galleryIcon:Landroid/graphics/drawable/Drawable;

.field private final gifIcon:Landroid/graphics/drawable/Drawable;

.field private final listener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->listener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    iput-object p4, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p5, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->conversationId:Ljava/lang/String;

    sget v0, Lio/intercom/android/sdk/R$drawable;->intercom_input_gallery:I

    invoke-virtual {p2, p1, v0}, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;->createDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->galleryIcon:Landroid/graphics/drawable/Drawable;

    sget v0, Lio/intercom/android/sdk/R$drawable;->intercom_input_gif:I

    invoke-virtual {p2, p1, v0}, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;->createDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->gifIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->galleryIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->listener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Lio/intercom/android/sdk/metrics/MetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-object v0
.end method

.method static synthetic access$400(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->gifIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public createGalleryInput()Lcom/intercom/composer/b/b;
    .locals 6

    new-instance v2, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$1;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v3, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$2;

    invoke-direct {v3, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$2;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v4, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$3;

    invoke-direct {v4, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$3;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v5, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$4;

    invoke-direct {v5, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$4;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v0, Lcom/intercom/input/gallery/c;

    const-string v1, "gallery_input"

    invoke-direct/range {v0 .. v5}, Lcom/intercom/input/gallery/c;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/input/gallery/i;Lcom/intercom/input/gallery/e;Lcom/intercom/composer/d;)V

    return-object v0
.end method

.method public createGifInput()Lcom/intercom/composer/b/b;
    .locals 6

    new-instance v2, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$5;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$5;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v3, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$6;

    invoke-direct {v3, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$6;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v4, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$7;

    invoke-direct {v4, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$7;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v5, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$8;

    invoke-direct {v5, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager$8;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;)V

    new-instance v0, Lcom/intercom/input/gallery/c;

    const-string v1, "gif_input"

    invoke-direct/range {v0 .. v5}, Lcom/intercom/input/gallery/c;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/input/gallery/i;Lcom/intercom/input/gallery/e;Lcom/intercom/composer/d;)V

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GalleryInputManager;->conversationId:Ljava/lang/String;

    return-void
.end method
