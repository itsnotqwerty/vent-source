.class public Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/PushNotificationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->j:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public apnsData(Ljava/util/Map;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->j:Ljava/util/Map;

    return-object p0
.end method

.method public build()Lcom/layer/sdk/messaging/PushNotificationPayload;
    .locals 2

    new-instance v0, Lcom/layer/sdk/messaging/PushNotificationPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layer/sdk/messaging/PushNotificationPayload;-><init>(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;B)V

    return-object v0
.end method

.method public category(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public data(Ljava/util/Map;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->i:Ljava/util/Map;

    return-object p0
.end method

.method public varargs localization(Ljava/lang/String;[Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 1

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iput-object p2, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->h:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public sound(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public varargs titleLocalization(Ljava/lang/String;[Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    .locals 1

    iput-object p1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->e:Ljava/lang/String;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iput-object p2, p0, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->f:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method
