.class public final Lio/branch/referral/w;
.super Lio/branch/referral/r;


# instance fields
.field public cBr:Lio/branch/referral/d$e;

.field cBs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lio/branch/referral/n$c;->cAo:Lio/branch/referral/n$c;

    iget-object v0, v0, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/branch/referral/w;->cBs:Ljava/lang/String;

    iput-object v1, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    iput-object p2, p0, Lio/branch/referral/w;->cBs:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_identity_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_device_fingerprint_id"

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
    sget-object v1, Lio/branch/referral/n$a;->cxS:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/branch/referral/w;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/referral/w;->cBc:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/w;->cBs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Hc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Hj()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cxS:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bnc_identity"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cxS:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cxS:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_identity"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_identity_id"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyv:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_user_url"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyw:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyw:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_install_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    invoke-virtual {p2}, Lio/branch/referral/d;->Gx()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    const/4 v2, 0x0

    new-instance v3, Lio/branch/referral/f;

    const-string v4, "Trouble setting the user alias."

    const/16 v5, -0x66

    invoke-direct {v3, v4, v5}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Lio/branch/referral/d$e;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cxS:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "bnc_identity"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final gH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

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
    iget-object v0, p0, Lio/branch/referral/w;->cBr:Lio/branch/referral/d$e;

    new-instance v2, Lio/branch/referral/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trouble setting the user alias. "

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
