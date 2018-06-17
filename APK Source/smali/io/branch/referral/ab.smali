.class final Lio/branch/referral/ab;
.super Lio/branch/referral/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lio/branch/referral/n$c;->cAh:Lio/branch/referral/n$c;

    iget-object v0, v0, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_device_fingerprint_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_identity_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_session_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bnc_link_click_id"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_link_click_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lio/branch/a/b;->Gq()Lio/branch/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/branch/a/b;->bO(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lio/branch/referral/n$a;->czO:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lio/branch/referral/o;->GN()Lio/branch/referral/o;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lio/branch/referral/n$a;->cyG:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-static {}, Lio/branch/referral/o;->GN()Lio/branch/referral/o;

    move-result-object v2

    iget-object v2, v2, Lio/branch/referral/o;->cAI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0, v0}, Lio/branch/referral/ab;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/referral/ab;->cBc:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 2

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_session_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BranchSDK"

    const-string v1, "Trouble executing your request. Please add \'android.permission.INTERNET\' in your applications manifest file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gH()V
    .locals 0

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
