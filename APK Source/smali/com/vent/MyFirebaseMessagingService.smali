.class public final Lcom/vent/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/firebase/messaging/b;)V
    .locals 14

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/b;)V

    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/MyApplication;

    if-nez v1, :cond_1

    const-string v0, "Android is buggy (2)"

    invoke-static {v6, v0}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p0}, Lcom/layer/sdk/services/LayerFcmService;->handleMessageReceived(Lcom/google/firebase/messaging/b;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/vent/bb;->ciI:J

    sput-boolean v6, Lcom/vent/bb;->chP:Z

    invoke-virtual {p1}, Lcom/google/firebase/messaging/b;->getData()Ljava/util/Map;

    move-result-object v10

    const-string v1, "type"

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/vent/bb;->EA()V

    goto :goto_0

    :cond_2
    const-string v1, "custom_data"

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v12, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v2, :cond_3

    const-string v0, "GCM am logged out so ignoring"

    invoke-static {v0}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    goto :goto_0

    :cond_3
    const-string v2, "SubscribedUserVent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_e

    :try_start_1
    new-instance v2, Lcom/vent/a/t;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lcom/vent/a/t;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object v8, v2

    :goto_3
    const-string v2, "NewGift"

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/vent/bb;->Ez()V

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/vent/ActMain;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x24000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v11, Lcom/vent/ActMain;

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "id"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "SubscribedUserVent"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v6}, Lcom/vent/bb;->eH(I)V

    const-string v1, "cmd"

    const-string v5, "notification"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_type"

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-boolean v6, Lcom/vent/as;->ceK:Z

    sput-boolean v6, Lcom/vent/ActMain;->bWN:Z

    :cond_5
    :goto_4
    const/high16 v1, 0x8000000

    invoke-static {p0, v4, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-static {p0}, Lcom/vent/MyApplication;->bt(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v4/app/aa$c;

    invoke-direct {v1, p0, v3}, Landroid/support/v4/app/aa$c;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f08011f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa$c;->ad(I)Landroid/support/v4/app/aa$c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800b8

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/aa$c;->zA:Landroid/graphics/Bitmap;

    const v2, 0x7f0f01af

    invoke-virtual {p0, v2}, Lcom/vent/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa$c;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v12

    const-string v1, "message"

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    move-object v4, v0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;ILjava/lang/Object;ZZ)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/support/v4/app/aa$c;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa$c;->cZ()Landroid/support/v4/app/aa$c;

    move-result-object v0

    iput-object v11, v0, Landroid/support/v4/app/aa$c;->zx:Landroid/app/PendingIntent;

    iput v3, v0, Landroid/support/v4/app/aa$c;->gS:I

    const-string v1, "msg"

    iput-object v1, v0, Landroid/support/v4/app/aa$c;->zS:Ljava/lang/String;

    new-instance v1, Landroid/support/v4/app/aa$g;

    invoke-direct {v1}, Landroid/support/v4/app/aa$g;-><init>()V

    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08013e

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/aa$g;->Am:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->a(Landroid/support/v4/app/aa$d;)Landroid/support/v4/app/aa$c;

    move-result-object v1

    const-string v0, "unread_count"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/vent/bb;->setUnreadCount(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_6
    :goto_5
    sget v0, Lcom/vent/bb;->ciF:I

    sget v2, Lcom/vent/bb;->ciG:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v4/app/aa$c;->zC:I

    invoke-static {}, Lcom/vent/bb;->EA()V

    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_b

    sget-object v0, Lcom/vent/MyApplication;->cgD:Ljava/lang/String;

    iput-object v0, v1, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    :cond_7
    :goto_6
    :try_start_3
    invoke-virtual {v1}, Landroid/support/v4/app/aa$c;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vent/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    :goto_7
    const-string v0, "SubscribedUserVent"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vent/ActMain;->bWV:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/c;->i(Landroid/content/Context;)Landroid/support/v4/content/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/c;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :cond_9
    move-object v8, v0

    goto/16 :goto_3

    :cond_a
    invoke-static {v9}, Lcom/vent/bb;->eH(I)V

    const-string v5, "cmd"

    const-string v11, "SubscribedUserVent"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_5

    :try_start_4
    const-string v5, "data"

    new-instance v11, Lcom/vent/a/m;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "group_id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_4

    :cond_b
    iput v3, v1, Landroid/support/v4/app/aa$c;->zD:I

    sget-boolean v0, Lcom/vent/bb;->chX:Z

    if-eqz v0, :cond_c

    move v0, v9

    :goto_8
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa$c;->ae(I)Landroid/support/v4/app/aa$c;

    move-result-object v2

    sget-boolean v0, Lcom/vent/bb;->chW:Z

    if-eqz v0, :cond_d

    if-eqz v8, :cond_d

    iget v0, v8, Lcom/vent/a/t;->ckI:I

    const/high16 v4, -0x1000000

    if-eq v0, v4, :cond_d

    iget v0, v8, Lcom/vent/a/t;->ckI:I

    :goto_9
    const/16 v4, 0x12c

    const/16 v5, 0x3e8

    invoke-virtual {v2, v0, v4, v5}, Landroid/support/v4/app/aa$c;->c(III)Landroid/support/v4/app/aa$c;

    move-result-object v0

    new-array v2, v6, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aa$c;->a([J)Landroid/support/v4/app/aa$c;

    sget-boolean v0, Lcom/vent/bb;->chU:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/2131623937"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa$c;->e(Landroid/net/Uri;)Landroid/support/v4/app/aa$c;

    goto/16 :goto_6

    :cond_c
    move v0, v3

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/vent/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0600e1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_9

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :cond_e
    move-object v2, v0

    goto/16 :goto_2
.end method
