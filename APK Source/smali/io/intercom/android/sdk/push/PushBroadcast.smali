.class Lio/intercom/android/sdk/push/PushBroadcast;
.super Ljava/lang/Object;


# instance fields
.field private final pushData:Landroid/net/Uri;

.field private final pushOnlyId:Ljava/lang/String;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->twig:Lio/intercom/android/sdk/twig/Twig;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushData:Landroid/net/Uri;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushOnlyId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v0, "push_only_convo_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The uri had no push only id"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushOnlyId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The uri had no push data"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushData:Landroid/net/Uri;

    :goto_1
    return-void

    :cond_0
    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushOnlyId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushData:Landroid/net/Uri;

    goto :goto_1
.end method


# virtual methods
.method getPushData()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushData:Landroid/net/Uri;

    return-object v0
.end method

.method getPushOnlyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushOnlyId:Ljava/lang/String;

    return-object v0
.end method

.method hasPushOnlyId()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushOnlyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushBroadcast;->pushOnlyId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
