.class public Lcom/layer/sdk/services/LayerFcmService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/services/LayerFcmService$Origin;
    }
.end annotation


# static fields
.field public static final KEY_LAYER:Ljava/lang/String; = "layer"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user-id"

.field public static final PUBLIC_KEY_CONVERSATION_ID:Ljava/lang/String; = "layer-conversation-id"

.field public static final PUBLIC_KEY_MESSAGE_ID:Ljava/lang/String; = "layer-message-id"

.field public static final PUBLIC_KEY_SOURCE:Ljava/lang/String; = "layer-source"

.field public static final PUBLIC_KEY_USER_ID:Ljava/lang/String; = "user-id"

.field public static final PUSH_ACTION:Ljava/lang/String; = "com.layer.sdk.PUSH"

.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private static final b:Ljava/util/concurrent/TimeUnit;

.field private static final c:Lcom/layer/sdk/internal/lsdkk/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkk/i",
            "<",
            "Ljava/util/UUID;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/layer/sdk/services/LayerFcmService;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/layer/sdk/services/LayerFcmService;->b:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/i;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkk/i;-><init>(J)V

    sput-object v0, Lcom/layer/sdk/services/LayerFcmService;->c:Lcom/layer/sdk/internal/lsdkk/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Lcom/layer/sdk/services/LayerFcmService$Origin;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/layer/sdk/services/LayerFcmService$Origin;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    invoke-static {p2}, Lcom/layer/sdk/internal/lsdkd/n;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "layer-conversation-id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "layer-message-id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string v1, "layer-source"

    invoke-virtual {p3}, Lcom/layer/sdk/services/LayerFcmService$Origin;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/UUID;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Lcom/layer/sdk/services/LayerFcmService$Origin;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/layer/sdk/services/LayerFcmService$Origin;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_3

    invoke-static {}, Lcom/layer/sdk/internal/a;->b()Lcom/layer/sdk/internal/a;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->E()Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->A()Lcom/layer/sdk/internal/lsdkg/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->g()Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, p3, p4, p5}, Lcom/layer/sdk/services/LayerFcmService;->a(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Lcom/layer/sdk/services/LayerFcmService$Origin;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "user-id"

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->A()Lcom/layer/sdk/internal/lsdkg/b;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/layer/sdk/internal/lsdkg/b;->a(Lcom/layer/sdk/LayerClient;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->close()V

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    sget-object v1, Lcom/layer/sdk/services/LayerFcmService;->c:Lcom/layer/sdk/internal/lsdkk/i;

    invoke-virtual {v1, p1, p3}, Lcom/layer/sdk/internal/lsdkk/i;->a(Ljava/lang/Object;Ljava/lang/Comparable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Aborting broadcast due to deduplication."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->close()V

    throw v0

    :cond_3
    move v1, v0

    const-string v0, "alert"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Aborting broadcast due to empty message."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Aborting broadcast due to LayerClient suppressing broadcast."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p2, p3, p4, p5}, Lcom/layer/sdk/services/LayerFcmService;->a(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Lcom/layer/sdk/services/LayerFcmService$Origin;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.layer.sdk.PUSH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Broadcasting com.layer.sdk.PUSH to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/a;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/a;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/services/LayerFcmService$1;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/services/LayerFcmService$1;-><init>(Lcom/layer/sdk/internal/a;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/a;->registerConnectionListener(Lcom/layer/sdk/listeners/LayerConnectionListener;)Lcom/layer/sdk/LayerClient;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/a;->connect()Lcom/layer/sdk/LayerClient;

    return-void
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/layer/sdk/services/LayerFcmService;->e()V

    return-void
.end method

.method private static d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/layer/sdk/services/LayerFcmService;->d:J

    return-void
.end method

.method private static e()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/layer/sdk/services/LayerFcmService;->d:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FROM_PUSH_TO_DATA_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    invoke-static {v2, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    return-void
.end method

.method public static handleMessageReceived(Lcom/google/firebase/messaging/b;Landroid/content/Context;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/layer/sdk/services/LayerFcmService;->isLayerMessage(Lcom/google/firebase/messaging/b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Received non-Layer FCM push. Skipping message processing."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/layer/sdk/services/LayerFcmService;->d()V

    iget-object v0, p0, Lcom/google/firebase/messaging/b;->Cs:Landroid/os/Bundle;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "layer_silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Received silent Layer FCM push. Skipping message processing."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Processing Layer FCM push..."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/messaging/b;->getData()Ljava/util/Map;

    move-result-object v4

    const-string v0, "user-id"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v0, "layer"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "conversation_identifier"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "conversation_identifier"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_6

    :try_start_1
    const-string v0, "channel_identifier"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "channel_identifier"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v9, "Received FCM push for a channel. Converting URI to a conversation."

    invoke-static {v5, v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/m;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_6
    const-string v0, "message_identifier"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "message_identifier"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_3
    :try_start_2
    const-string v5, "announcement_identifier"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "announcement_identifier"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    :goto_4
    if-nez v0, :cond_7

    if-eqz v5, :cond_7

    move-object v0, v5

    :cond_7
    move-object v3, v0

    :goto_5
    invoke-static {}, Lcom/layer/sdk/internal/a;->b()Lcom/layer/sdk/internal/a;

    move-result-object v0

    if-eqz v0, :cond_8

    move v6, v8

    :cond_8
    if-nez v6, :cond_e

    new-instance v9, Lcom/layer/sdk/internal/lsdke/h;

    invoke-direct {v9, p1}, Lcom/layer/sdk/internal/lsdke/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdke/h;->c()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdke/h;->b()Lcom/layer/b/a/a$a;

    move-result-object v9

    if-eqz v10, :cond_e

    if-eqz v9, :cond_e

    iget-object v11, v9, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    if-eqz v11, :cond_e

    iget-object v9, v9, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    if-eqz v9, :cond_e

    new-instance v0, Lcom/layer/sdk/LayerClient$Options;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/layer/sdk/LayerClient$Options;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v10, v0}, Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->isAuthenticated()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->close()V

    move v0, v8

    goto/16 :goto_0

    :cond_9
    move-object v2, v7

    goto/16 :goto_1

    :cond_a
    move-object v0, v7

    goto/16 :goto_2

    :cond_b
    move-object v0, v7

    goto :goto_3

    :cond_c
    move-object v5, v7

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v3, v7

    move-object v2, v7

    :goto_6
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v9, "Failed to process Layer push notification due to a JSONException"

    invoke-static {v0, v9, v5}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    move-object v5, v7

    goto :goto_5

    :cond_e
    move-object v9, v0

    if-eqz v9, :cond_12

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_f

    :try_start_3
    invoke-virtual {v9, v2}, Lcom/layer/sdk/internal/a;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    :try_end_3
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_7
    if-eqz v5, :cond_11

    :try_start_4
    invoke-virtual {v9}, Lcom/layer/sdk/internal/a;->o()Lcom/layer/sdk/internal/lsdkd/lsdka/a;
    :try_end_4
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v7

    :cond_10
    :goto_8
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/a;->j()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {v9, v10}, Lcom/layer/sdk/services/LayerFcmService;->a(Lcom/layer/sdk/internal/a;Ljava/util/HashSet;)V

    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Lcom/layer/sdk/services/LayerFcmService$Origin;->FCM:Lcom/layer/sdk/services/LayerFcmService$Origin;

    invoke-static/range {v0 .. v6}, Lcom/layer/sdk/services/LayerFcmService;->a(Landroid/content/Context;Ljava/util/UUID;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Lcom/layer/sdk/services/LayerFcmService$Origin;Z)V

    move v0, v8

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getType()Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NOT_AUTHENTICATED:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/exceptions/LayerException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "A valid session is not found. Exiting"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    move v0, v8

    goto/16 :goto_0

    :cond_14
    if-nez v5, :cond_f

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/m;->c(Landroid/net/Uri;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getType()Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v0

    sget-object v5, Lcom/layer/sdk/exceptions/LayerException$Type;->NOT_AUTHENTICATED:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0, v5}, Lcom/layer/sdk/exceptions/LayerException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v5, "A valid session is not found. Exiting"

    invoke-static {v0, v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v3, v7

    goto/16 :goto_6

    :catch_4
    move-exception v5

    move-object v3, v0

    goto/16 :goto_6
.end method

.method public static isLayerMessage(Lcom/google/firebase/messaging/b;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/b;->getData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Not a Layer push due to empty FCM data."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const-string v0, "layer"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "layer"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Not a Layer push due to no Layer data."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "user-id"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "user-id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Not a Layer push due to empty user-id."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic wK()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->b:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/b;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/layer/sdk/services/LayerFcmService;->handleMessageReceived(Lcom/google/firebase/messaging/b;Landroid/content/Context;)Z

    return-void
.end method
