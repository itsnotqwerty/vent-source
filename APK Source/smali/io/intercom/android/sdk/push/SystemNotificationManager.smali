.class public Lio/intercom/android/sdk/push/SystemNotificationManager;
.super Ljava/lang/Object;


# static fields
.field static final ACTIONS_CHANNEL:Ljava/lang/String; = "intercom_actions_channel"

.field static final CHAT_REPLIES_CHANNEL:Ljava/lang/String; = "intercom_chat_replies_channel"

.field static final NEW_CHATS_CHANNEL:Ljava/lang/String; = "intercom_new_chats_channel"

.field private static final NOTIFICATION_ID:I = 0x98967d


# instance fields
.field private final androidNotificationManager:Landroid/app/NotificationManager;

.field final receivedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/push/PushPayload;",
            ">;"
        }
    .end annotation
.end field

.field private final systemNotificationFactory:Lio/intercom/android/sdk/push/SystemNotificationFactory;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/push/SystemNotificationFactory;

    invoke-direct {v0}, Lio/intercom/android/sdk/push/SystemNotificationFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/push/SystemNotificationManager;-><init>(Landroid/app/NotificationManager;Lio/intercom/android/sdk/push/SystemNotificationFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/app/NotificationManager;Lio/intercom/android/sdk/push/SystemNotificationFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->systemNotificationFactory:Lio/intercom/android/sdk/push/SystemNotificationFactory;

    return-void
.end method

.method private setUpNotificationChannels()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v5, 0x4

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "intercom_chat_replies_channel"

    const-string v2, "Chat replies"

    invoke-direct {v0, v1, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Reply notifications from chats in this app"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "intercom_new_chats_channel"

    const-string v3, "New chats"

    invoke-direct {v1, v2, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "New chat messages sent from this app"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "intercom_actions_channel"

    const-string v4, "Actions"

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "Contain links to take an action in this app"

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/app/NotificationChannel;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Removing Intercom push notifications."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x98967d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method createNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->systemNotificationFactory:Lio/intercom/android/sdk/push/SystemNotificationFactory;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->createSingleNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/app/Notification;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x98967d

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->systemNotificationFactory:Lio/intercom/android/sdk/push/SystemNotificationFactory;

    iget-object v1, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->receivedPayloads:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->createGroupedNotification(Ljava/util/List;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_1
.end method

.method createPushOnlyNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->systemNotificationFactory:Lio/intercom/android/sdk/push/SystemNotificationFactory;

    invoke-virtual {v0, p1, p2}, Lio/intercom/android/sdk/push/SystemNotificationFactory;->createPushOnlyNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/push/PushPayload;->getPushOnlyConversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public deleteNotificationChannels()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "intercom_chat_replies_channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "intercom_new_chats_channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/push/SystemNotificationManager;->androidNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "intercom_actions_channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUpNotificationChannelsIfSupported()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/push/SystemNotificationManager;->setUpNotificationChannels()V

    :cond_0
    return-void
.end method
