.class public abstract Lio/branch/referral/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/r$a;
    }
.end annotation


# instance fields
.field protected cAX:Ljava/lang/String;

.field cAY:J

.field private cAZ:Z

.field private cBa:I

.field final cBb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/branch/referral/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public cBc:Z

.field cBd:Z

.field protected cvV:Lio/branch/referral/q;

.field private final cvW:Lio/branch/referral/ag;

.field cxm:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/referral/r;->cAY:J

    iput v2, p0, Lio/branch/referral/r;->cBa:I

    iput-boolean v2, p0, Lio/branch/referral/r;->cBc:Z

    iput-boolean v2, p0, Lio/branch/referral/r;->cBd:Z

    iput-object p2, p0, Lio/branch/referral/r;->cAX:Ljava/lang/String;

    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/r;->cvV:Lio/branch/referral/q;

    new-instance v0, Lio/branch/referral/ag;

    invoke-direct {v0, p1}, Lio/branch/referral/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/r;->cvW:Lio/branch/referral/ag;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    invoke-static {}, Lio/branch/referral/d;->Gu()Z

    move-result v0

    iput-boolean v0, p0, Lio/branch/referral/r;->cAZ:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/referral/r;->cBb:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/referral/r;->cAY:J

    iput v2, p0, Lio/branch/referral/r;->cBa:I

    iput-boolean v2, p0, Lio/branch/referral/r;->cBc:Z

    iput-boolean v2, p0, Lio/branch/referral/r;->cBd:Z

    iput-object p1, p0, Lio/branch/referral/r;->cAX:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    invoke-static {p3}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/r;->cvV:Lio/branch/referral/q;

    new-instance v0, Lio/branch/referral/ag;

    invoke-direct {v0, p3}, Lio/branch/referral/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/r;->cvW:Lio/branch/referral/ag;

    invoke-static {}, Lio/branch/referral/d;->Gu()Z

    move-result v0

    iput-boolean v0, p0, Lio/branch/referral/r;->cAZ:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/referral/r;->cBb:Ljava/util/Set;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)Lio/branch/referral/r;
    .locals 4

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    const-string v0, "REQ_POST"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "REQ_POST"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v3, v0

    :goto_1
    :try_start_1
    const-string v0, "REQ_POST_PATH"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "REQ_POST_PATH"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lio/branch/referral/n$c;->cAn:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lio/branch/referral/s;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/s;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    :cond_0
    :goto_3
    return-object v1

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    sget-object v2, Lio/branch/referral/n$c;->cAf:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lio/branch/referral/t;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/t;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_3
    sget-object v2, Lio/branch/referral/n$c;->cAm:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lio/branch/referral/u;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/u;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    sget-object v2, Lio/branch/referral/n$c;->cAl:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lio/branch/referral/v;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/v;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_5
    sget-object v2, Lio/branch/referral/n$c;->cAo:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lio/branch/referral/w;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/w;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    sget-object v2, Lio/branch/referral/n$c;->cAp:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lio/branch/referral/y;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/y;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_7
    sget-object v2, Lio/branch/referral/n$c;->cAe:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lio/branch/referral/aa;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/aa;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_8
    sget-object v2, Lio/branch/referral/n$c;->cAh:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lio/branch/referral/ab;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_3

    :cond_9
    sget-object v2, Lio/branch/referral/n$c;->cAg:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Lio/branch/referral/ac;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/ac;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_a
    sget-object v2, Lio/branch/referral/n$c;->cAi:Lio/branch/referral/n$c;

    iget-object v2, v2, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lio/branch/referral/ad;

    invoke-direct {v1, v0, v3, p1}, Lio/branch/referral/ad;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected static bV(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract Hb()Z
.end method

.method public Hc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Hd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/r;->cAX:Ljava/lang/String;

    return-object v0
.end method

.method public He()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/branch/referral/q;->GS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/r;->cAX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Hg()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "REQ_POST"

    iget-object v2, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "REQ_POST_PATH"

    iget-object v2, p0, Lio/branch/referral/r;->cAX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/concurrent/ConcurrentHashMap;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lio/branch/referral/n$a;->czx:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public abstract a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
.end method

.method public final a(Lio/branch/referral/r$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/branch/referral/r;->cBb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract bU(Landroid/content/Context;)Z
.end method

.method public abstract gH()V
.end method

.method public abstract i(ILjava/lang/String;)V
.end method

.method protected k(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lio/branch/referral/r;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAV:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lio/branch/referral/r;->cvV:Lio/branch/referral/q;

    iget-object v3, v3, Lio/branch/referral/q;->cAV:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "BranchSDK"

    const-string v1, "Could not merge metadata, ignoring user metadata."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object p1, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    invoke-static {}, Lio/branch/referral/q;->Ha()Z

    move-result v0

    iget-object v1, p0, Lio/branch/referral/r;->cvW:Lio/branch/referral/ag;

    iget-boolean v2, p0, Lio/branch/referral/r;->cAZ:Z

    invoke-static {v0, v1, v2}, Lio/branch/referral/o;->a(ZLio/branch/referral/ag;Z)Lio/branch/referral/o;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    :try_start_1
    iget-object v2, v0, Lio/branch/referral/o;->cAw:Ljava/lang/String;

    const-string v3, "bnc_no_value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/branch/referral/n$a;->cyB:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/branch/referral/o;->cAw:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cyF:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-boolean v3, v0, Lio/branch/referral/o;->cAx:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, v0, Lio/branch/referral/o;->cAy:Ljava/lang/String;

    const-string v3, "bnc_no_value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lio/branch/referral/n$a;->cyS:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/branch/referral/o;->cAy:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, v0, Lio/branch/referral/o;->cAz:Ljava/lang/String;

    const-string v3, "bnc_no_value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lio/branch/referral/n$a;->cyT:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/branch/referral/o;->cAz:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    sget-object v2, Lio/branch/referral/n$a;->cyU:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget v3, v0, Lio/branch/referral/o;->cAA:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cyV:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget v3, v0, Lio/branch/referral/o;->cAB:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cyW:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget v3, v0, Lio/branch/referral/o;->cAC:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cyX:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-boolean v3, v0, Lio/branch/referral/o;->cAD:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, v0, Lio/branch/referral/o;->cAF:Ljava/lang/String;

    const-string v3, "bnc_no_value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lio/branch/referral/n$a;->cyA:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/branch/referral/o;->cAF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    sget-object v2, Lio/branch/referral/n$a;->cyH:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget v3, v0, Lio/branch/referral/o;->cAG:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v0, Lio/branch/referral/o;->cAJ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lio/branch/referral/n$a;->cyI:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/branch/referral/o;->cAJ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v2, v0, Lio/branch/referral/o;->cAK:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lio/branch/referral/n$a;->cyJ:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v3, v0, Lio/branch/referral/o;->cAK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v2, v0, Lio/branch/referral/o;->cAE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lio/branch/referral/n$a;->cyY:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v0, v0, Lio/branch/referral/o;->cAE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    :try_start_2
    sget-object v0, Lio/branch/referral/n$a;->cyn:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lio/branch/referral/n$a;->cyn:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lio/branch/referral/n$a;->cyn:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_8
    sget-object v0, Lio/branch/referral/n$a;->cyn:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
