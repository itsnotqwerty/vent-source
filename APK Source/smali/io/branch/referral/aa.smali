.class final Lio/branch/referral/aa;
.super Lio/branch/referral/r;


# instance fields
.field cBq:Lio/branch/referral/d$f;

.field cBz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/referral/aa;->cBz:I

    return-void
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    sget-object v2, Lio/branch/referral/n$a;->cyd:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/branch/referral/n$a;->cyf:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Lio/branch/referral/n$a;->cyf:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lio/branch/referral/n$a;->cyd:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1}, Lio/branch/referral/q;->eL(Ljava/lang/String;)I

    move-result v3

    sub-int v2, v3, v2

    invoke-static {v1, v2}, Lio/branch/referral/q;->k(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lio/branch/referral/aa;->cBq:Lio/branch/referral/d$f;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Lio/branch/referral/f;

    const-string v1, "Trouble redeeming rewards."

    const/16 v2, -0x6b

    invoke-direct {v0, v1, v2}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/referral/aa;->cBq:Lio/branch/referral/d$f;

    if-eqz v1, :cond_0

    new-instance v1, Lio/branch/referral/f;

    const-string v2, "Trouble redeeming rewards."

    const/16 v3, -0x66

    invoke-direct {v1, v2, v3}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lio/branch/referral/aa;->cBz:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lio/branch/referral/aa;->cBq:Lio/branch/referral/d$f;

    if-eqz v1, :cond_0

    new-instance v1, Lio/branch/referral/f;

    const-string v2, "Trouble redeeming rewards."

    const/16 v3, -0x6b

    invoke-direct {v1, v2, v3}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/aa;->cBq:Lio/branch/referral/d$f;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/branch/referral/aa;->cBq:Lio/branch/referral/d$f;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trouble redeeming rewards. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
