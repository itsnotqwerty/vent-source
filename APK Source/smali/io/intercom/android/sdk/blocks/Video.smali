.class Lio/intercom/android/sdk/blocks/Video;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/VideoBlock;


# static fields
.field private static final PLAY_BUTTON_DIAMETER_DP:I = 0x30


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final style:Lio/intercom/android/sdk/blocks/StyleType;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/api/Api;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/Video;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Video;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Video;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/Video;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/Video;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/Video;)Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method private getBaseLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v1}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    return-object v0
.end method

.method private getPlayButtonView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_play_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_solid_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method private getVideoImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v1
.end method


# virtual methods
.method public addVideo(Ljava/lang/String;Lio/intercom/android/sdk/blocks/VideoProvider;Ljava/lang/String;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Video;->getBaseLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Video;->getVideoImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Video;->getPlayButtonView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/Video;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v5, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    if-ne v4, v5, :cond_0

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ColorUtils;->lightenColor(I)I

    move-result v0

    :cond_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p2, p3, v2, v3}, Lio/intercom/android/sdk/blocks/Video;->fetchThumbnail(Lio/intercom/android/sdk/blocks/VideoProvider;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const/4 v0, 0x3

    invoke-static {v1, v0, p5}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v1
.end method

.method createThumbnail(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v0, p3}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v2

    new-instance v0, Lio/intercom/a/a/a/g/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/g;-><init>()V

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_video_thumbnail_fallback:I

    :goto_0
    iget-boolean v4, v0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput v3, v0, Lio/intercom/a/a/a/g/g;->cPV:I

    iget v3, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_video_thumbnail_fallback:I

    invoke-virtual {v0, v3}, Lio/intercom/a/a/a/g/g;->fo(I)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v0

    new-instance v2, Lio/intercom/android/sdk/blocks/Video$3;

    invoke-direct {v2, p0, p4, v1, p1}, Lio/intercom/android/sdk/blocks/Video$3;-><init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v2, v0, Lio/intercom/a/a/a/i;->cGl:Lio/intercom/a/a/a/g/f;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v2, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v0, v2, :cond_1

    new-instance v0, Lio/intercom/android/sdk/blocks/Video$4;

    invoke-direct {v0, p0, p2, v1}, Lio/intercom/android/sdk/blocks/Video$4;-><init>(Lio/intercom/android/sdk/blocks/Video;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method fetchThumbnail(Lio/intercom/android/sdk/blocks/VideoProvider;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    sget-object v0, Lio/intercom/android/sdk/blocks/Video$6;->$SwitchMap$io$intercom$android$blocks$VideoProvider:[I

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/VideoProvider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video;->api:Lio/intercom/android/sdk/api/Api;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://fast.wistia.com/oembed?url=https://home.wistia.com/medias/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/blocks/Video$1;

    invoke-direct {v2, p0, p3, p2, p4}, Lio/intercom/android/sdk/blocks/Video$1;-><init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/api/Api;->getVideo(Ljava/lang/String;Lio/intercom/okhttp3/Callback;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.youtube.com/watch?v="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://img.youtube.com/vi/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/default.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1, p4}, Lio/intercom/android/sdk/blocks/Video;->createThumbnail(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://vimeo.com/api/v2/video/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Video;->api:Lio/intercom/android/sdk/api/Api;

    new-instance v2, Lio/intercom/android/sdk/blocks/Video$2;

    invoke-direct {v2, p0, p3, p2, p4}, Lio/intercom/android/sdk/blocks/Video$2;-><init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/api/Api;->getVideo(Ljava/lang/String;Lio/intercom/okhttp3/Callback;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setFailedImage(Landroid/widget/ImageView;)V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/Video$5;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/blocks/Video$5;-><init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
