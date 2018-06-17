.class Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/d;


# static fields
.field private static final DEBOUNCE_DELAY_MS:J = 0x12cL


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

.field private currentCount:I

.field private final debouncer:Lio/intercom/android/sdk/conversation/composer/galleryinput/Debouncer;

.field private lastQuery:Ljava/lang/String;

.field private listener:Lcom/intercom/input/gallery/d$a;

.field private loading:Z

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/galleryinput/Debouncer;

    invoke-direct {v0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/Debouncer;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->debouncer:Lio/intercom/android/sdk/conversation/composer/galleryinput/Debouncer;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->currentCount:I

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->getImagesFromResponse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->loading:Z

    return p1
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)Lcom/intercom/input/gallery/d$a;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->listener:Lcom/intercom/input/gallery/d$a;

    return-object v0
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->lastQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)Lio/intercom/android/sdk/api/Api;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->api:Lio/intercom/android/sdk/api/Api;

    return-object v0
.end method

.method private getImagesFromResponse(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/input/gallery/b;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->currentCount:I

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->currentCount:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    new-instance v3, Lcom/intercom/input/gallery/b$a;

    invoke-direct {v3}, Lcom/intercom/input/gallery/b$a;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/intercom/input/gallery/b$a;->path:Ljava/lang/String;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/intercom/input/gallery/b$a;->bme:Ljava/lang/String;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getAttribution()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/intercom/input/gallery/b$a;->attribution:Ljava/lang/String;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/intercom/input/gallery/b$a;->imageHeight:I

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getWidth()I

    move-result v0

    iput v0, v3, Lcom/intercom/input/gallery/b$a;->imageWidth:I

    invoke-virtual {v3}, Lcom/intercom/input/gallery/b$a;->wa()Lcom/intercom/input/gallery/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private loadDefaultGifs()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->api:Lio/intercom/android/sdk/api/Api;

    new-instance v1, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$1;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/api/Api;->fetchDefaultGifs(Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method private searchGifs(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/metrics/MetricTracker;->searchedGifInput(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->debouncer:Lio/intercom/android/sdk/conversation/composer/galleryinput/Debouncer;

    new-instance v1, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource$2;-><init>(Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/conversation/composer/galleryinput/Debouncer;->call(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->currentCount:I

    return v0
.end method

.method public getImages(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->loading:Z

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->lastQuery:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->loadDefaultGifs()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->searchGifs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPermissionStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->loading:Z

    return v0
.end method

.method public requestPermission()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/intercom/input/gallery/d$a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/galleryinput/GifInputDataSource;->listener:Lcom/intercom/input/gallery/d$a;

    return-void
.end method
