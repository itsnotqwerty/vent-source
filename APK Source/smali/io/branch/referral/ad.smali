.class final Lio/branch/referral/ad;
.super Lio/branch/referral/x;


# instance fields
.field cBr:Lio/branch/referral/d$e;

.field final cvW:Lio/branch/referral/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/branch/referral/d$e;Lio/branch/referral/ag;)V
    .locals 3

    sget-object v0, Lio/branch/referral/n$c;->cAi:Lio/branch/referral/n$c;

    iget-object v0, v0, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lio/branch/referral/ad;->cvW:Lio/branch/referral/ag;

    iput-object p2, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

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

    sget-object v1, Lio/branch/referral/n$a;->cyK:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-static {}, Lio/branch/referral/q;->GV()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lio/branch/referral/ag;->Ht()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lio/branch/referral/n$a;->cyG:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p3}, Lio/branch/referral/ag;->Ht()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object v1, Lio/branch/referral/n$a;->cxY:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_triggered_by_fb_app_link"

    invoke-static {v2}, Lio/branch/referral/q;->eN(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cyL:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p3}, Lio/branch/referral/ag;->Hu()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cyR:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-static {}, Lio/branch/referral/q;->Ha()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/branch/referral/ad;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/referral/ad;->cBc:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/x;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    new-instance v0, Lio/branch/referral/ag;

    invoke-direct {v0, p3}, Lio/branch/referral/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/ad;->cvW:Lio/branch/referral/ag;

    return-void
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Hk()Z
    .locals 1

    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hl()Ljava/lang/String;
    .locals 1

    const-string v0, "open"

    return-object v0
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lio/branch/referral/x;->a(Lio/branch/referral/ae;Lio/branch/referral/d;)V

    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_link_click_id"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/branch/referral/n$a;->cyZ:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/branch/referral/n$a;->cyZ:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bnc_install_params"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/q;->GV()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_install_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_session_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    invoke-virtual {p2}, Lio/branch/referral/d;->Gy()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    :cond_1
    iget-object v0, p0, Lio/branch/referral/ad;->cvW:Lio/branch/referral/ag;

    invoke-virtual {v0}, Lio/branch/referral/ag;->Ht()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_app_version"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lio/branch/referral/ad;->b(Lio/branch/referral/ae;Lio/branch/referral/d;)V

    return-void

    :cond_2
    :try_start_1
    const-string v0, "bnc_no_value"

    const-string v1, "bnc_link_click_id"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_2
    const-string v0, "bnc_no_value"

    const-string v1, "bnc_session_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p1}, Lio/branch/referral/x;->bV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    const/4 v1, 0x0

    new-instance v2, Lio/branch/referral/f;

    const-string v3, "Trouble initializing Branch."

    const/16 v4, -0x66

    invoke-direct {v2, v3, v4}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

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

    iput-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error_message"

    const-string v2, "Trouble reaching server. Please try again in a few minutes"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    new-instance v2, Lio/branch/referral/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trouble initializing Branch. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
