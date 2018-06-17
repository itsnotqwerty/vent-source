.class public final Lcom/vent/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/b/c$a;,
        Lcom/vent/b/c$c;,
        Lcom/vent/b/c$b;,
        Lcom/vent/b/c$f;,
        Lcom/vent/b/c$d;,
        Lcom/vent/b/c$e;
    }
.end annotation


# instance fields
.field clA:Z

.field clB:Z

.field clC:Z

.field clD:Z

.field clE:Z

.field clF:Z

.field final clG:Ljava/lang/Object;

.field private clH:Ljava/lang/String;

.field clI:Lcom/android/a/a/a;

.field clJ:Landroid/content/ServiceConnection;

.field clK:I

.field clL:Ljava/lang/String;

.field private final clM:Ljava/lang/String;

.field clN:Lcom/vent/b/c$d;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/vent/b/c;->clA:Z

    iput-boolean v0, p0, Lcom/vent/b/c;->clB:Z

    iput-boolean v0, p0, Lcom/vent/b/c;->clC:Z

    iput-boolean v0, p0, Lcom/vent/b/c;->clD:Z

    iput-boolean v0, p0, Lcom/vent/b/c;->clE:Z

    iput-boolean v0, p0, Lcom/vent/b/c;->clF:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vent/b/c;->clG:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/b/c;->clH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/vent/b/c;->clM:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/vent/b/e;Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v1}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/vent/b/c;->v(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v1

    :cond_0
    :goto_1
    return v3

    :cond_1
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v3, -0x3ea

    goto :goto_1

    :cond_3
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move v2, v3

    move v4, v0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/vent/b/c;->clM:Ljava/lang/String;

    invoke-static {v8, v0, v1}, Lcom/vent/b/g;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Lcom/vent/b/f;

    invoke-direct {v8, p2, v0, v1}, Lcom/vent/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/vent/b/f;->cmm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p1, Lcom/vent/b/e;->cmf:Ljava/util/Map;

    iget-object v1, v8, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto :goto_1

    :cond_6
    move v0, v4

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/vent/b/e;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vent/b/e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/vent/b/e;->ep(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v4, v0, 0x14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v5, v0, 0x14

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v7, v0, 0x14

    mul-int/lit8 v8, v0, 0x14

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v2, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v6, v4, 0x14

    mul-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ITEM_ID_LIST"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, p1, v3}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/vent/b/c;->v(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x3ea

    goto :goto_1

    :cond_7
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/vent/b/h;

    invoke-direct {v4, p1, v0}, Lcom/vent/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/vent/b/e;->cme:Ljava/util/Map;

    iget-object v5, v4, Lcom/vent/b/h;->cmi:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public static eP(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method static eo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x4d

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    const/16 v4, 0x6d

    if-gt v0, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0xd

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/16 v4, 0x4e

    if-lt v0, v4, :cond_3

    const/16 v4, 0x5a

    if-le v0, v4, :cond_4

    :cond_3
    const/16 v4, 0x6e

    if-lt v0, v4, :cond_5

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0xd

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method static v(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method final Fu()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vent/b/c$a;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/vent/b/c;->clG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/vent/b/c;->clF:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vent/b/c$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t dispose because an async operation ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/b/c;->clH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vent/b/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/b/c;->clA:Z

    iget-object v0, p0, Lcom/vent/b/c;->clJ:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vent/b/c;->clJ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/b/c;->clB:Z

    iput-object v2, p0, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/vent/b/c;->clJ:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    iput-object v2, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    return-void
.end method

.method public final Fv()V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/b/c;->clB:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method final Fw()V
    .locals 2

    iget-object v1, p0, Lcom/vent/b/c;->clG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/vent/b/c;->clH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/b/c;->clF:Z

    iget-boolean v0, p0, Lcom/vent/b/c;->clC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/vent/b/c;->Fu()V
    :try_end_1
    .catch Lcom/vent/b/c$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a(ZLjava/util/List;Ljava/util/List;)Lcom/vent/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vent/b/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vent/b/b;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vent/b/c;->Fv()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/vent/b/c;->em(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/vent/b/e;

    invoke-direct {v0}, Lcom/vent/b/e;-><init>()V

    const-string v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/vent/b/c;->a(Lcom/vent/b/e;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/vent/b/b;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/vent/b/b;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/vent/b/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lcom/vent/b/c;->a(Ljava/lang/String;Lcom/vent/b/e;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/vent/b/b;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/vent/b/b;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/vent/b/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/vent/b/c;->clD:Z

    if-eqz v1, :cond_3

    const-string v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/vent/b/c;->a(Lcom/vent/b/e;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/vent/b/b;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/vent/b/b;

    const/16 v2, -0x3e8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_3
    const-string v1, "subs"

    invoke-direct {p0, v1, v0, p3}, Lcom/vent/b/c;->a(Ljava/lang/String;Lcom/vent/b/e;Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/vent/b/b;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/vent/b/b;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    return-object v0
.end method

.method public final a(ZLjava/util/List;Ljava/util/List;Lcom/vent/b/c$f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vent/b/c$f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vent/b/c$a;
        }
    .end annotation

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/vent/b/c;->Fv()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/vent/b/c;->em(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/vent/b/c;->en(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/vent/b/c$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/vent/b/c$2;-><init>(Lcom/vent/b/c;ZLjava/util/List;Ljava/util/List;Lcom/vent/b/c$f;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c(IILandroid/content/Intent;)Z
    .locals 9

    const/4 v6, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/vent/b/c;->clK:I

    if-eq p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/b/c;->Fv()V

    const-string v0, "handleActivityResult"

    invoke-virtual {p0, v0}, Lcom/vent/b/c;->em(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vent/b/c;->Fw()V

    if-nez p3, :cond_2

    new-instance v0, Lcom/vent/b/d;

    const-string v1, "Null data in IAB result"

    invoke-direct {v0, v8, v1}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v3}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    move v5, v1

    :goto_1
    if-nez p3, :cond_8

    move-object v4, v3

    :goto_2
    if-nez p3, :cond_9

    move-object v0, v3

    :goto_3
    if-ne p2, v6, :cond_f

    if-nez v5, :cond_f

    if-eqz v4, :cond_3

    if-nez v0, :cond_a

    :cond_3
    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3f0

    const-string v4, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v1, v4}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v3}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_6
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v0, v4

    move v5, v0

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_9
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    :try_start_0
    new-instance v5, Lcom/vent/b/f;

    iget-object v6, p0, Lcom/vent/b/c;->clL:Ljava/lang/String;

    invoke-direct {v5, v6, v4, v0}, Lcom/vent/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v5, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    iget-object v7, p0, Lcom/vent/b/c;->clM:Ljava/lang/String;

    invoke-static {v7, v4, v0}, Lcom/vent/b/g;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Signature verification failed for sku "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v5}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/vent/b/d;

    const-string v1, "Failed to parse purchase data."

    invoke-direct {v0, v8, v1}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v3}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    new-instance v3, Lcom/vent/b/d;

    const-string v4, "Success"

    invoke-direct {v3, v1, v4}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3, v5}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    :cond_e
    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_f
    if-ne p2, v6, :cond_10

    iget-object v0, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/vent/b/d;

    const-string v1, "Problem purchashing item."

    invoke-direct {v0, v5, v1}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v3}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    goto :goto_4

    :cond_10
    if-nez p2, :cond_11

    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3ed

    const-string v4, "User canceled."

    invoke-direct {v0, v1, v4}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v3}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    goto :goto_4

    :cond_11
    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3ee

    const-string v4, "Unknown purchase response."

    invoke-direct {v0, v1, v4}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    invoke-interface {v1, v0, v3}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V

    goto :goto_4
.end method

.method public final em(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/vent/b/c;->clA:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final en(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vent/b/c$a;
        }
    .end annotation

    iget-object v1, p0, Lcom/vent/b/c;->clG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/vent/b/c;->clF:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vent/b/c$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t start async operation ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because another async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vent/b/c;->clH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vent/b/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/vent/b/c;->clH:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/b/c;->clF:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
