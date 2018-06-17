.class Lio/intercom/android/sdk/push/SystemNotificationFactory;
.super Ljava/lang/Object;


# static fields
.field private static final CONVERSATION_URI:Ljava/lang/String; = "conversation_id=%s"

.field private static final INTERCOM_SDK_GCM:Ljava/lang/String; = "intercom_sdk_gcm"

.field private static final LARGE_ICON_SIZE_DP:I = 0x30

.field private static final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/push/SystemNotificationFactory;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBuilder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/support/v4/app/aa$c;
    .locals 9

    const/high16 v8, 0x8000000

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "io.intercom.android.sdk.INTERCOM_PUSH_OPENED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "io.intercom.android.sdk.INTERCOM_PUSH_DISMISSED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lio/intercom/android/sdk/push/SystemNotificationFactory;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t get launch Intent for package \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' - tapping on notification will do nothing"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const-string v4, "host_app_intent"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "host_app_intent"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0, p3, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {p0, p3, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v0, "android.permission.VIBRATE"

    invoke-static {p0, v0}, Lio/intercom/android/sdk/commons/utilities/DeviceUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    new-instance v0, Landroid/support/v4/app/aa$c;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/app/aa$c;-><init>(Landroid/content/Context;B)V

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_push_icon:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aa$c;->ad(I)Landroid/support/v4/app/aa$c;

    move-result-object v0

    const-string v2, "msg"

    iput-object v2, v0, Landroid/support/v4/app/aa$c;->zS:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/app/aa$c;->cZ()Landroid/support/v4/app/aa$c;

    move-result-object v2

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/aa$c;->zT:I

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    const/16 v5, 0x1f4

    const/16 v6, 0x7d0

    invoke-virtual {v2, v0, v5, v6}, Landroid/support/v4/app/aa$c;->c(III)Landroid/support/v4/app/aa$c;

    move-result-object v0

    iput-object v4, v0, Landroid/support/v4/app/aa$c;->zx:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/aa$c;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->ae(I)Landroid/support/v4/app/aa$c;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "intercom_push_key"

    const-string v5, "intercom_sdk_gcm"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v4, "push_only_convo_id"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private generateAvatar(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lio/intercom/android/sdk/push/PushAvatarUtils;->getNotificationInitialsBitmap(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2, p3}, Lio/intercom/android/sdk/push/PushAvatarUtils;->getNotificationDefaultBitmap(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 v0, 0x42400000    # 48.0f

    :try_start_0
    invoke-static {v0, p2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/intercom/a/a/a/c;->ca(Landroid/content/Context;)Lio/intercom/a/a/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/a/a/a/j;->HC()Lio/intercom/a/a/a/i;

    move-result-object v2

    new-instance v3, Lio/intercom/a/a/a/g/g;

    invoke-direct {v3}, Lio/intercom/a/a/a/g/g;-><init>()V

    invoke-virtual {v3, v1}, Lio/intercom/a/a/a/g/g;->p(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    new-instance v4, Lio/intercom/android/sdk/transforms/RoundTransform;

    invoke-direct {v4}, Lio/intercom/android/sdk/transforms/RoundTransform;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/i;->aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;

    move-result-object v2

    new-instance v3, Lio/intercom/a/a/a/g/e;

    iget-object v4, v2, Lio/intercom/a/a/a/i;->cFu:Lio/intercom/a/a/a/e;

    iget-object v4, v4, Lio/intercom/a/a/a/e;->mainHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v0, v0}, Lio/intercom/a/a/a/g/e;-><init>(Landroid/os/Handler;II)V

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lio/intercom/a/a/a/i;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lio/intercom/a/a/a/i$1;

    invoke-direct {v4, v2, v3}, Lio/intercom/a/a/a/i$1;-><init>(Lio/intercom/a/a/a/i;Lio/intercom/a/a/a/g/e;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-interface {v3}, Lio/intercom/a/a/a/g/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3, v3}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lio/intercom/android/sdk/push/SystemNotificationFactory;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Failed to retrieve the notification image"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getConversationChannelId(Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->isFirstPart()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "intercom_new_chats_channel"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "intercom_chat_replies_channel"

    goto :goto_0
.end method

.method private groupMessageBody(Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method createGroupedNotification(Ljava/util/List;Landroid/content/Context;)Landroid/app/Notification;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/push/PushPayload;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v9, 0x1

    const-string v0, "intercom_sdk/multiple_notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_0

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_one_new_message:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v3, Landroid/support/v4/app/aa$e;

    invoke-direct {v3}, Landroid/support/v4/app/aa$e;-><init>()V

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_new_notifications:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/aa$e;->h(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$e;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/push/PushPayload;

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->groupMessageBody(Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/PushPayload;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x21

    invoke-interface {v5, v6, v7, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v5}, Landroid/support/v4/app/aa$e;->i(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$e;

    goto :goto_1

    :cond_0
    sget v0, Lio/intercom/android/sdk/R$string;->intercom_new_messages:I

    invoke-static {p2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "n"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-static {p2, v2, v0, v4}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->createBuilder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/support/v4/app/aa$c;

    move-result-object v0

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_new_notifications:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aa$c;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/push/PushPayload;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->getConversationChannelId(Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/push/PushPayload;

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/PushPayload;->getPriority()I

    move-result v0

    iput v0, v1, Landroid/support/v4/app/aa$c;->zD:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/aa$c;->a(Landroid/support/v4/app/aa$f;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa$c;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method createPushOnlyNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;)Landroid/app/Notification;
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getPushOnlyConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {p2, v1, v0, v2}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->createBuilder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->getTitle(Landroid/content/Context;Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->messageOrBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getPriority()I

    move-result v1

    iput v1, v0, Landroid/support/v4/app/aa$c;->zD:I

    const-string v1, "intercom_actions_channel"

    iput-object v1, v0, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    new-instance v1, Landroid/support/v4/app/aa$b;

    invoke-direct {v1}, Landroid/support/v4/app/aa$b;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->messageOrBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa$b;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->a(Landroid/support/v4/app/aa$f;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa$c;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method createSingleNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/app/Notification;
    .locals 4

    const-string v0, "intercom_sdk/conversation_id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getConversationId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->createBuilder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->getTitle(Landroid/content/Context;Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->getConversationChannelId(Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getPriority()I

    move-result v1

    iput v1, v0, Landroid/support/v4/app/aa$c;->zD:I

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->generateAvatar(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/aa$c;->zA:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/support/v4/app/aa$b;

    invoke-direct {v1}, Landroid/support/v4/app/aa$b;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa$b;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa$c;->a(Landroid/support/v4/app/aa$f;)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa$c;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method getTitle(Landroid/content/Context;Lio/intercom/android/sdk/push/PushPayload;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    invoke-virtual {p2}, Lio/intercom/android/sdk/push/PushPayload;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lio/intercom/android/sdk/push/PushPayload;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/intercom/android/sdk/push/PushPayload;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_teammate_from_company:I

    invoke-static {p1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "company"

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
