.class final Lio/branch/referral/v;
.super Lio/branch/referral/r;


# instance fields
.field cBq:Lio/branch/referral/d$f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final He()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lio/branch/referral/r;->He()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bnc_identity_id"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 3

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Lio/branch/referral/q;->eL(Ljava/lang/String;)I

    invoke-static {v0, v2}, Lio/branch/referral/q;->k(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/v;->cBq:Lio/branch/referral/d$f;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    const-string v1, "Trouble retrieving user credits."

    const/16 v2, -0x66

    invoke-direct {v0, v1, v2}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/v;->cBq:Lio/branch/referral/d$f;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/branch/referral/v;->cBq:Lio/branch/referral/d$f;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trouble retrieving user credits. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
