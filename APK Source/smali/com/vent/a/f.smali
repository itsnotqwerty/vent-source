.class public final Lcom/vent/a/f;
.super Lcom/vent/a/a;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/a;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vent/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bUb:Lcom/vent/a/e;

.field public cjL:Landroid/net/Uri;

.field public cjM:Ljava/lang/Long;

.field public cjN:Ljava/lang/String;

.field public cjO:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/f;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    const-class v0, Lcom/vent/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/e;

    iput-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    return-void

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    :try_start_0
    const-string v1, "layerConversationId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "layerConversationId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    const-string v1, "conversation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/vent/a/e;

    const-string v1, "conversation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/a/e;-><init>(Lorg/json/JSONObject;)V

    :cond_0
    iput-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vent/a/f;->d(Lcom/layer/sdk/messaging/Conversation;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/layer/sdk/messaging/Conversation;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/messaging/Conversation;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "muted_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/layer/sdk/messaging/Metadata;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private eg(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/vent/a/f;->n(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/vent/a/m;

    invoke-direct {v0, p1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/a/f;->b(Lcom/vent/a/m;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final EK()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "layerConversationId"

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "conversation"

    iget-object v3, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    invoke-virtual {v1}, Lcom/vent/a/e;->EK()Lorg/json/JSONObject;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final EQ()Lcom/vent/a/x;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    invoke-virtual {v0}, Lcom/vent/a/e;->EQ()Lcom/vent/a/x;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)V
    .locals 1

    if-nez p2, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/a/f;->cjN:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/layer/atlas/util/c;->a(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/f;->cjN:Ljava/lang/String;

    invoke-interface {p2}, Lcom/layer/sdk/messaging/Message;->getSentAt()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    iget-object v0, p0, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/layer/sdk/messaging/Message;->getReceivedAt()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    goto :goto_0
.end method

.method public final b(Lcom/vent/a/m;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iget-object v0, v0, Lcom/vent/a/e;->cjy:Lcom/vent/a/m;

    invoke-static {v0, p1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/vent/a/f;

    check-cast p2, Lcom/vent/a/f;

    iget-object v0, p1, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    iget-object v1, p1, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/vent/a/f;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/vent/a/f;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/vent/a/f;->n(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/vent/a/e;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/vent/a/e;

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/vent/a/e;->cjy:Lcom/vent/a/m;

    invoke-virtual {p0, v2}, Lcom/vent/a/f;->b(Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/vent/a/f;->n(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/vent/a/m;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/vent/a/m;

    invoke-virtual {p0, p1}, Lcom/vent/a/f;->b(Lcom/vent/a/m;)Z

    move-result v0

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vent/a/f;->eg(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public final n(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iget-object v0, v0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iget-object v2, v2, Lcom/vent/a/e;->cjI:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iget-object v2, v2, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    iget-object v2, v2, Lcom/vent/a/e;->cjI:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
