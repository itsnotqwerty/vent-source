.class final Lcom/vent/LayerPushReceiver$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/LayerPushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cfR:Lcom/vent/ba;

.field final synthetic cfS:Lcom/vent/LayerPushReceiver;

.field intent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vent/LayerPushReceiver;Lcom/vent/ba;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/LayerPushReceiver$1;->cfS:Lcom/vent/LayerPushReceiver;

    iput-object p2, p0, Lcom/vent/LayerPushReceiver$1;->cfR:Lcom/vent/ba;

    iput-object p3, p0, Lcom/vent/LayerPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/vent/LayerPushReceiver$1;->intent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/LayerPushReceiver$1;->cfR:Lcom/vent/ba;

    iget v2, v2, Lcom/vent/ba;->state:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/LayerPushReceiver$1;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    const-string v0, "layer-conversation-id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v2, v0

    :goto_1
    if-eqz v3, :cond_3

    const-string v0, "layer-message-id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_2
    iget-object v1, p0, Lcom/vent/LayerPushReceiver$1;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vent/LayerPushReceiver$1;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.layer.sdk.PUSH"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/vent/LayerPushReceiver$1;->cfR:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v1, :cond_0

    new-instance v3, Lcom/vent/LayerPushReceiver$1$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/vent/LayerPushReceiver$1$1;-><init>(Lcom/vent/LayerPushReceiver$1;Landroid/net/Uri;Lcom/layer/sdk/LayerClient;)V

    :try_start_0
    invoke-virtual {v1, v0, v3}, Lcom/layer/sdk/LayerClient;->waitForContent(Landroid/net/Uri;Lcom/layer/sdk/LayerClient$ContentAvailableCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/vent/LayerPushReceiver$1;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vent.CANCEL_PUSH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_3
.end method
