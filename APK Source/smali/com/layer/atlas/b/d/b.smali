.class public final Lcom/layer/atlas/b/d/b;
.super Lcom/layer/atlas/b/c;


# instance fields
.field private final bpf:I


# direct methods
.method public constructor <init>(Lcom/layer/sdk/messaging/Identity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layer/atlas/b/d/b;-><init>(Lcom/layer/sdk/messaging/Identity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/layer/sdk/messaging/Identity;B)V
    .locals 1

    invoke-direct {p0}, Lcom/layer/atlas/b/c;-><init>()V

    iput-object p1, p0, Lcom/layer/atlas/b/d/b;->bov:Lcom/layer/sdk/messaging/Identity;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/layer/atlas/b/d/b;->bpf:I

    return-void
.end method


# virtual methods
.method public final dt(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "No text to send"

    invoke-static {v0}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-static {v7}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Sending text message"

    invoke-static {v0}, Lcom/layer/atlas/util/b;->du(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/layer/atlas/b/d/b;->bov:Lcom/layer/sdk/messaging/Identity;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_1
    iget-object v3, p0, Lcom/layer/atlas/b/c;->mContext:Landroid/content/Context;

    sget v4, Lcom/layer/atlas/b$i;->atlas_notification_text:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v6, p0, Lcom/layer/atlas/b/d/b;->bpf:I

    if-ge v0, v6, :cond_7

    move-object v0, p1

    :goto_2
    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/atlas/b/c;->bmU:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v3, p1}, Lcom/layer/sdk/LayerClient;->newMessagePart(Ljava/lang/String;)Lcom/layer/sdk/messaging/MessagePart;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    invoke-direct {v4}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->text(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->build()Lcom/layer/sdk/messaging/PushNotificationPayload;

    move-result-object v0

    iget-object v4, p0, Lcom/layer/atlas/b/c;->bmU:Lcom/layer/sdk/LayerClient;

    new-instance v5, Lcom/layer/sdk/messaging/MessageOptions;

    invoke-direct {v5}, Lcom/layer/sdk/messaging/MessageOptions;-><init>()V

    invoke-virtual {v5, v0}, Lcom/layer/sdk/messaging/MessageOptions;->defaultPushNotificationPayload(Lcom/layer/sdk/messaging/PushNotificationPayload;)Lcom/layer/sdk/messaging/MessageOptions;

    move-result-object v0

    new-array v5, v2, [Lcom/layer/sdk/messaging/MessagePart;

    aput-object v3, v5, v1

    invoke-virtual {v4, v0, v5}, Lcom/layer/sdk/LayerClient;->newMessage(Lcom/layer/sdk/messaging/MessageOptions;[Lcom/layer/sdk/messaging/MessagePart;)Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/atlas/b/c;->bou:Lcom/layer/atlas/b/c$a;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/layer/atlas/b/c;->bou:Lcom/layer/atlas/b/c$a;

    invoke-interface {v3}, Lcom/layer/atlas/b/c$a;->wn()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/layer/atlas/b/c;->bmV:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/messaging/Conversation;->send(Lcom/layer/sdk/messaging/Message;)V

    invoke-static {v7}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message sent by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->du(Ljava/lang/String;)V

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/layer/atlas/b/d/b;->bov:Lcom/layer/sdk/messaging/Identity;

    invoke-static {v0}, Lcom/layer/atlas/util/c;->b(Lcom/layer/sdk/messaging/Identity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/layer/atlas/b/d/b;->bpf:I

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u2026"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-static {v7}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Message sending aborted by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/atlas/util/b;->du(Ljava/lang/String;)V

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method
