.class final Lio/branch/referral/d$d;
.super Lio/branch/referral/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/referral/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lio/branch/referral/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cwx:Lio/branch/referral/d;

.field cwz:Lio/branch/referral/r;


# direct methods
.method public constructor <init>(Lio/branch/referral/d;Lio/branch/referral/r;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-direct {p0}, Lio/branch/referral/e;-><init>()V

    iput-object p2, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    return-void
.end method

.method private varargs GH()Lio/branch/referral/ae;
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/x;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    check-cast v0, Lio/branch/referral/x;

    const-string v1, "bnc_link_click_identifier"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "bnc_no_value"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v5, Lio/branch/referral/n$a;->cyO:Lio/branch/referral/n$a;

    iget-object v5, v5, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    const-string v1, "bnc_google_search_install_identifier"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "bnc_no_value"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_1
    iget-object v4, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v5, Lio/branch/referral/n$a;->cxW:Lio/branch/referral/n$a;

    iget-object v5, v5, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    const-string v1, "bnc_google_play_install_referrer_extras"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "bnc_no_value"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    iget-object v4, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v5, Lio/branch/referral/n$a;->cxX:Lio/branch/referral/n$a;

    iget-object v5, v5, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    const-string v1, "bnc_is_full_app_conversion"

    invoke-static {v1}, Lio/branch/referral/q;->eN(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v4, Lio/branch/referral/n$a;->czd:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v5, "bnc_app_link"

    invoke-static {v5}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v1, Lio/branch/referral/n$a;->cyy:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    iget-object v4, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v1}, Lio/branch/referral/r;->Hd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->czy:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    iget-wide v6, v0, Lio/branch/referral/r;->cAY:J

    cmp-long v1, v6, v2

    if-lez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Lio/branch/referral/r;->cAY:J

    sub-long v0, v2, v0

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v0}, Lio/branch/referral/r;->Hf()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->f(Lio/branch/referral/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/k;->bS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    iget-object v1, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v1}, Lio/branch/referral/d;->j(Lio/branch/referral/d;)Lio/branch/referral/ag;

    move-result-object v1

    iget-object v2, v1, Lio/branch/referral/ag;->cBF:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_4
    iget-object v2, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v3, Lio/branch/referral/n$a;->cyP:Lio/branch/referral/n$a;

    iget-object v3, v3, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v4, v1, Lio/branch/referral/ag;->cBF:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v0, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    sget-object v2, Lio/branch/referral/n$a;->cyQ:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget v1, v1, Lio/branch/referral/ag;->cBG:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_5
    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v0}, Lio/branch/referral/r;->Hb()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->i(Lio/branch/referral/d;)Lio/branch/referral/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v1}, Lio/branch/referral/r;->He()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    iget-object v2, v2, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v3}, Lio/branch/referral/r;->Hd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v4}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/branch/referral/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/ae;

    move-result-object v0

    :goto_6
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->i(Lio/branch/referral/d;)Lio/branch/referral/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    iget-object v2, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v2}, Lio/branch/referral/d;->k(Lio/branch/referral/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/branch/referral/r;->a(Ljava/util/concurrent/ConcurrentHashMap;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v2}, Lio/branch/referral/r;->He()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v3}, Lio/branch/referral/r;->Hd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v4}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/branch/referral/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/ae;

    move-result-object v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :cond_6
    move-wide v0, v2

    goto/16 :goto_4
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lio/branch/referral/d$d;->GH()Lio/branch/referral/ae;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    check-cast p1, Lio/branch/referral/ae;

    invoke-super {p0, p1}, Lio/branch/referral/e;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    :try_start_0
    iget v3, p1, Lio/branch/referral/ae;->cBA:I

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Z)Z

    const/16 v0, 0xc8

    if-eq v3, v0, :cond_a

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    invoke-static {v0, v1}, Lio/branch/referral/d;->b(Lio/branch/referral/d;I)I

    :cond_0
    const/16 v0, 0x199

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r;)Z

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    check-cast v0, Lio/branch/referral/t;

    iget-object v1, v0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    const/4 v1, 0x0

    new-instance v2, Lio/branch/referral/f;

    const-string v3, "Trouble creating a URL."

    const/16 v4, -0x69

    invoke-direct {v2, v3, v4}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lio/branch/referral/d$b;->a(Ljava/lang/String;Lio/branch/referral/f;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->l(Lio/branch/referral/d;)I

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->r(Lio/branch/referral/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->e(Lio/branch/referral/d;)I

    move-result v0

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->c(Lio/branch/referral/d;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "BranchSDK"

    const-string v1, "Branch API Error: Conflicting resource error code from API"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0, v3}, Lio/branch/referral/d;->c(Lio/branch/referral/d;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Z)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/z;->getSize()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/branch/referral/z;->fc(I)Lio/branch/referral/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/branch/referral/r;->Hc()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_7
    iget-object v4, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v4}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/branch/referral/z;->b(Lio/branch/referral/r;)Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->l(Lio/branch/referral/d;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lio/branch/referral/r;->i(ILjava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/referral/r;->Hc()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lio/branch/referral/r;->gH()V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Z)Z

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/t;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->m(Lio/branch/referral/d;)Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    check-cast v0, Lio/branch/referral/t;

    iget-object v0, v0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/z;->Hn()Lio/branch/referral/r;

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/x;

    if-nez v0, :cond_c

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/w;

    if-eqz v0, :cond_14

    :cond_c
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v0, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    sget-object v0, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bnc_session_id"

    invoke-static {v2, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_6
    sget-object v2, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v4}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    const-string v4, "bnc_identity_id"

    invoke-static {v4}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->m(Lio/branch/referral/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    sget-object v0, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bnc_identity_id"

    invoke-static {v2, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_d
    sget-object v2, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    sget-object v0, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bnc_device_fingerprint_id"

    invoke-static {v2, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_e
    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->n(Lio/branch/referral/d;)V

    :cond_f
    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/x;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    sget v1, Lio/branch/referral/d$k;->cwH:I

    invoke-static {v0, v1}, Lio/branch/referral/d;->b(Lio/branch/referral/d;I)I

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-static {}, Lio/branch/referral/d;->GF()Lio/branch/referral/d;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/branch/referral/r;->a(Lio/branch/referral/ae;Lio/branch/referral/d;)V

    iget-object v1, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    check-cast v0, Lio/branch/referral/x;

    invoke-virtual {v0}, Lio/branch/referral/x;->Hk()Z

    move-result v0

    invoke-static {v1, v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;Z)Z

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    check-cast v0, Lio/branch/referral/x;

    invoke-virtual {v0, p1}, Lio/branch/referral/x;->a(Lio/branch/referral/ae;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->o(Lio/branch/referral/d;)V

    :cond_10
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->p(Lio/branch/referral/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->p(Lio/branch/referral/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_11
    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->q(Lio/branch/referral/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->q(Lio/branch/referral/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    instance-of v0, v0, Lio/branch/referral/y;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->m(Lio/branch/referral/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/branch/referral/d$d;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/z;->clear()V

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-static {}, Lio/branch/referral/d;->GF()Lio/branch/referral/d;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/branch/referral/r;->a(Lio/branch/referral/ae;Lio/branch/referral/d;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-static {}, Lio/branch/referral/d;->GF()Lio/branch/referral/d;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/branch/referral/r;->a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_6
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Lio/branch/referral/e;->onPreExecute()V

    iget-object v0, p0, Lio/branch/referral/d$d;->cwz:Lio/branch/referral/r;

    invoke-virtual {v0}, Lio/branch/referral/r;->onPreExecute()V

    return-void
.end method
