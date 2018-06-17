.class abstract Lio/branch/referral/x;
.super Lio/branch/referral/r;


# instance fields
.field private final cBt:Lio/branch/a/c;

.field private final cvX:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/branch/referral/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lio/branch/referral/x;->cvX:Landroid/content/Context;

    iget-object v0, p0, Lio/branch/referral/x;->cvX:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/a/c;->bP(Landroid/content/Context;)Lio/branch/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/x;->cBt:Lio/branch/a/c;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    iput-object p3, p0, Lio/branch/referral/x;->cvX:Landroid/content/Context;

    iget-object v0, p0, Lio/branch/referral/x;->cvX:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/a/c;->bP(Landroid/content/Context;)Lio/branch/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/x;->cBt:Lio/branch/a/c;

    return-void
.end method

.method static eQ(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "open"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "install"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public final Hf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract Hk()Z
.end method

.method public abstract Hl()Ljava/lang/String;
.end method

.method public a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 4

    :try_start_0
    const-string v0, "bnc_no_value"

    const-string v1, "bnc_link_click_identifier"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_google_search_install_identifier"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_google_play_install_referrer_extras"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_external_intent_uri"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_external_intent_extra"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_app_link"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_push_identifier"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "bnc_triggered_by_fb_app_link"

    invoke-static {v1, v0}, Lio/branch/referral/q;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "bnc_no_value"

    const-string v1, "bnc_install_referrer"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lio/branch/referral/q;->br(Z)V

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lio/branch/referral/ac;

    if-eqz v0, :cond_1

    const-string v0, "Branch Install"

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lio/branch/referral/n$a;->cyz:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lio/branch/referral/p;

    invoke-direct {v2}, Lio/branch/referral/p;-><init>()V

    const-string v3, "bnc_identity_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lio/branch/referral/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "Branch Open"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final a(Lio/branch/referral/ae;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$a;->czz:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$a;->czz:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0}, Lio/branch/referral/x;->Hl()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    iget-object v1, v1, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    iget-object v1, v1, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    iget-object v1, v1, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lio/branch/referral/d$h;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lio/branch/referral/d$h;

    move-object v2, v0

    invoke-interface {v2}, Lio/branch/referral/d$h;->GI()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v1, v3}, Lio/branch/referral/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;Lio/branch/referral/l$b;)Z

    move-result v4

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lio/branch/referral/l;->i(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lio/branch/referral/l;->i(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method final b(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 4

    iget-object v0, p0, Lio/branch/referral/x;->cBt:Lio/branch/a/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/branch/referral/x;->cBt:Lio/branch/a/c;

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/branch/a/c;->cvk:Z

    :try_start_0
    const-string v2, "cd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "mv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mv"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/branch/a/c;->cvg:Ljava/lang/String;

    :cond_0
    const-string v2, "mhl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mhl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lio/branch/a/c;->cvi:I

    :cond_1
    const-string v2, "m"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "m"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v0, Lio/branch/a/c;->cvl:Lorg/json/JSONArray;

    :cond_2
    const-string v2, "mtl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mtl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    iput v2, v0, Lio/branch/a/c;->cvh:I

    :cond_3
    const-string v2, "mps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "mps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lio/branch/a/c;->cvj:I

    :cond_4
    iget-object v1, v0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    const-string v2, "mv"

    iget-object v3, v0, Lio/branch/a/c;->cvg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    const-string v2, "m"

    iget-object v3, v0, Lio/branch/a/c;->cvl:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lio/branch/a/c;->cvm:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BNC_CD_MANIFEST"

    iget-object v0, v0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p2, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {}, Lio/branch/a/b;->Gq()Lio/branch/a/b;

    move-result-object v1

    iget-object v0, p2, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p2, Lio/branch/referral/d;->cwq:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lio/branch/a/b;->cuY:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lio/branch/a/b;->d(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/branch/a/c;->cvk:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final k(Lorg/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1}, Lio/branch/referral/r;->k(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lio/branch/referral/x;->cvX:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lio/branch/referral/n$a;->czR:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    :goto_1
    sget-object v1, Lio/branch/referral/n$a;->czP:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lio/branch/referral/n$a;->czQ:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final onPreExecute()V
    .locals 4

    iget-object v0, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "bnc_app_link"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lio/branch/referral/n$a;->czd:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_app_link"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "bnc_push_identifier"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/branch/referral/n$a;->czf:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_push_identifier"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "bnc_external_intent_uri"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lio/branch/referral/n$a;->czt:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_external_intent_uri"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "bnc_external_intent_extra"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lio/branch/referral/n$a;->czu:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v2, "bnc_external_intent_extra"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lio/branch/referral/x;->cBt:Lio/branch/a/c;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "mv"

    iget-object v3, p0, Lio/branch/referral/x;->cBt:Lio/branch/a/c;

    invoke-virtual {v3}, Lio/branch/a/c;->Gr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pn"

    iget-object v3, p0, Lio/branch/referral/x;->cvX:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cd"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
