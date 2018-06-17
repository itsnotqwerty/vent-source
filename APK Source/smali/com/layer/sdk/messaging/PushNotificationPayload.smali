.class public Lcom/layer/sdk/messaging/PushNotificationPayload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;
    }
.end annotation


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_LOC_ARGS:Ljava/lang/String; = "loc-args"

.field public static final KEY_LOC_KEY:Ljava/lang/String; = "loc-key"

.field public static final KEY_SOUND:Ljava/lang/String; = "sound"

.field public static final KEY_TEXT:Ljava/lang/String; = "text"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TITLE_LOC_ARGS:Ljava/lang/String; = "title-loc-args"

.field public static final KEY_TITLE_LOC_KEY:Ljava/lang/String; = "title-loc-key"

.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Ljava/util/Map;
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

.field private l:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/layer/sdk/messaging/PushNotificationPayload;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "title-loc-key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "title-loc-args"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "loc-key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    const-string v1, "loc-args"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->a(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->b(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->c(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->d(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->e(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->f(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->h:[Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->g(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->h(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->j:[Ljava/lang/String;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->i(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->k:Ljava/util/Map;

    invoke-static {p1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->j(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->l:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/messaging/PushNotificationPayload;-><init>(Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x2

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/layer/sdk/messaging/PushNotificationPayload;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/layer/sdk/messaging/PushNotificationPayload;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v5, "Skipping key \'%s\' because value \'%s\' is not a String."

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static fromLayerPushExtras(Landroid/os/Bundle;)Lcom/layer/sdk/messaging/PushNotificationPayload;
    .locals 6

    const-string v0, "title-loc-key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title-loc-args"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "loc-key"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loc-args"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    invoke-direct {v4}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;-><init>()V

    const-string v5, "title"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->title(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->text(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v4

    const-string v5, "sound"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->sound(Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->titleLocalization(Ljava/lang/String;[Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->localization(Ljava/lang/String;[Ljava/lang/String;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/layer/sdk/messaging/PushNotificationPayload;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->data(Ljava/util/Map;)Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/PushNotificationPayload$Builder;->build()Lcom/layer/sdk/messaging/PushNotificationPayload;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApnsData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->l:Ljava/util/Map;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getLocalizationArguments()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationArguments()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushNotificationPayload{mTitle=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSound=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitleLocalizationKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitleLocalizationArguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalizationKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalizationArguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->j:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->k:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnsData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/messaging/PushNotificationPayload;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
