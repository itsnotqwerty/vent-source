.class public final Lio/branch/referral/y;
.super Lio/branch/referral/r;


# instance fields
.field private cBu:Lio/branch/referral/d$j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lio/branch/referral/n$c;->cAp:Lio/branch/referral/n$c;

    iget-object v0, v0, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/y;->cBu:Lio/branch/referral/d$j;

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
    invoke-virtual {p0, v0}, Lio/branch/referral/y;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/referral/y;->cBc:Z

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
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_session_id"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_install_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_session_params"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_identity"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/referral/q;->GW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/branch/referral/q;->k(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lio/branch/referral/y;->cBu:Lio/branch/referral/d$j;

    if-eqz v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lio/branch/referral/q;->c(Ljava/util/ArrayList;)V

    invoke-static {}, Lio/branch/referral/q;->GX()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lio/branch/referral/q;->GX()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lio/branch/referral/q;->d(Ljava/util/ArrayList;)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bnc_total_base_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/branch/referral/q;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bnc_balance_base_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/branch/referral/q;->setInteger(Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lio/branch/referral/q;->d(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lio/branch/referral/y;->cBu:Lio/branch/referral/d$j;

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BranchSDK"

    const-string v1, "Trouble executing your request. Please add \'android.permission.INTERNET\' in your applications manifest file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lio/branch/referral/y;->cBu:Lio/branch/referral/d$j;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    const-string v1, "Logout failed"

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

    iput-object v0, p0, Lio/branch/referral/y;->cBu:Lio/branch/referral/d$j;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/branch/referral/y;->cBu:Lio/branch/referral/d$j;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logout error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
