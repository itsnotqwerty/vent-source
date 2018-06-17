.class public Lio/intercom/android/sdk/conversation/SoundPlayer;
.super Ljava/lang/Object;


# static fields
.field static final NOT_FOUND_ID:I = -0x1

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;


# instance fields
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

.field final messageReceivedId:I

.field messageReceivedLoaded:Z

.field final replyDeliveredId:I

.field replyDeliveredLoaded:Z

.field final replyFailedId:I

.field replyFailedLoaded:Z

.field final replySentId:I

.field replySentLoaded:Z

.field private final soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;Landroid/media/SoundPool;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;Landroid/media/SoundPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Landroid/media/SoundPool;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->soundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->soundPool:Landroid/media/SoundPool;

    new-instance v1, Lio/intercom/android/sdk/conversation/SoundPlayer$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/SoundPlayer$1;-><init>(Lio/intercom/android/sdk/conversation/SoundPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    sget v0, Lio/intercom/android/sdk/R$raw;->intercom_birdy_done_1:I

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->loadSound(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->messageReceivedId:I

    sget v0, Lio/intercom/android/sdk/R$raw;->intercom_wood_done_1:I

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->loadSound(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyFailedId:I

    sget v0, Lio/intercom/android/sdk/R$raw;->intercom_wood_done_2:I

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->loadSound(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replySentId:I

    sget v0, Lio/intercom/android/sdk/R$raw;->intercom_wood_done_3:I

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->loadSound(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyDeliveredId:I

    return-void
.end method

.method private loadSound(Landroid/content/Context;I)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lio/intercom/android/sdk/conversation/SoundPlayer;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Could not play sound"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method playIfLoaded(ZI)V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->isAudioEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p2

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method public playMessageReceivedSound()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->messageReceivedLoaded:Z

    iget v1, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->messageReceivedId:I

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playIfLoaded(ZI)V

    return-void
.end method

.method public playReplyDeliveredSound()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyDeliveredLoaded:Z

    iget v1, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyDeliveredId:I

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playIfLoaded(ZI)V

    return-void
.end method

.method public playReplyFailedSound()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyFailedLoaded:Z

    iget v1, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyFailedId:I

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playIfLoaded(ZI)V

    return-void
.end method

.method public playReplySentSound()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replySentLoaded:Z

    iget v1, p0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replySentId:I

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playIfLoaded(ZI)V

    return-void
.end method
