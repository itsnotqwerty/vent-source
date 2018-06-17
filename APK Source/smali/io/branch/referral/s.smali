.class final Lio/branch/referral/s;
.super Lio/branch/referral/r;


# instance fields
.field private final cBk:Lio/branch/referral/l$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/s;->cBk:Lio/branch/referral/l$b;

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

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 5

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->czz:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    sget-object v2, Lio/branch/referral/n$a;->cym:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/branch/referral/n$a;->cym:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lio/branch/referral/n$a;->czz:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v3

    iget-object v4, p0, Lio/branch/referral/s;->cBk:Lio/branch/referral/l$b;

    invoke-virtual {v3, v2, v1, v0, v4}, Lio/branch/referral/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;Lio/branch/referral/l$b;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :goto_2
    iget-object v1, p0, Lio/branch/referral/s;->cBk:Lio/branch/referral/l$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/s;->cBk:Lio/branch/referral/l$b;

    invoke-interface {v1, v0}, Lio/branch/referral/l$b;->eC(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_0
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
