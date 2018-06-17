.class final Lio/branch/referral/t;
.super Lio/branch/referral/r;


# instance fields
.field cBl:Lio/branch/referral/g;

.field cBm:Z

.field cBn:Lio/branch/referral/d$b;

.field cBo:Z

.field cxv:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/referral/d$b;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/referral/d$b;",
            "Z)V"
        }
    .end annotation

    sget-object v1, Lio/branch/referral/n$c;->cAf:Lio/branch/referral/n$c;

    iget-object v1, v1, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lio/branch/referral/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/branch/referral/t;->cBm:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/branch/referral/t;->cxv:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/branch/referral/t;->cBm:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lio/branch/referral/t;->cxv:Z

    new-instance v1, Lio/branch/referral/g;

    invoke-direct {v1}, Lio/branch/referral/g;-><init>()V

    iput-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    :try_start_0
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    sget-object v2, Lio/branch/referral/n$a;->cxR:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v3, "bnc_identity_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    sget-object v2, Lio/branch/referral/n$a;->cxT:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v3, "bnc_device_fingerprint_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    sget-object v2, Lio/branch/referral/n$a;->cxU:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v3, "bnc_session_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bnc_link_click_id"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    sget-object v2, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v2, v2, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    const-string v3, "bnc_link_click_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p3, :cond_1

    iput p3, v1, Lio/branch/referral/g;->type:I

    sget-object v2, Lio/branch/referral/n$b;->czV:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lio/branch/referral/g;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-lez p4, :cond_2

    iput p4, v1, Lio/branch/referral/g;->duration:I

    sget-object v2, Lio/branch/referral/n$b;->czW:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p4}, Lio/branch/referral/g;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v2, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p5, :cond_4

    iput-object p5, v2, Lio/branch/referral/g;->cwN:Ljava/util/Collection;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/branch/referral/t;->cBc:Z

    :goto_1
    return-void

    :cond_3
    :try_start_1
    sget-object v1, Lio/branch/referral/n$b;->czT:Lio/branch/referral/n$b;

    iget-object v1, v1, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p2, :cond_5

    iput-object p2, v1, Lio/branch/referral/g;->cwO:Ljava/lang/String;

    sget-object v2, Lio/branch/referral/n$b;->czU:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p6, :cond_6

    iput-object p6, v1, Lio/branch/referral/g;->cwP:Ljava/lang/String;

    sget-object v2, Lio/branch/referral/n$b;->czX:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p6}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p7, :cond_7

    iput-object p7, v1, Lio/branch/referral/g;->cwQ:Ljava/lang/String;

    sget-object v2, Lio/branch/referral/n$b;->czY:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p7}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p8, :cond_8

    iput-object p8, v1, Lio/branch/referral/g;->cwR:Ljava/lang/String;

    sget-object v2, Lio/branch/referral/n$b;->czZ:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p8}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    if-eqz p9, :cond_9

    iput-object p9, v1, Lio/branch/referral/g;->cwS:Ljava/lang/String;

    sget-object v2, Lio/branch/referral/n$b;->cAa:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p9}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iput-object p10, v1, Lio/branch/referral/g;->cwT:Ljava/lang/String;

    sget-object v2, Lio/branch/referral/n$b;->cAb:Lio/branch/referral/n$b;

    iget-object v2, v2, Lio/branch/referral/n$b;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p10}, Lio/branch/referral/g;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    invoke-virtual {p0, v1}, Lio/branch/referral/t;->k(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    iput-boolean v0, p0, Lio/branch/referral/t;->cBm:Z

    iput-boolean v0, p0, Lio/branch/referral/t;->cxv:Z

    return-void
.end method

.method private eP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v1, v1, Lio/branch/referral/g;->cwN:Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lio/branch/referral/n$b;->czT:Lio/branch/referral/n$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v0, v0, Lio/branch/referral/g;->cwO:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$b;->czU:Lio/branch/referral/n$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v0, v0, Lio/branch/referral/g;->cwP:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$b;->czX:Lio/branch/referral/n$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v0, v0, Lio/branch/referral/g;->cwQ:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$b;->czY:Lio/branch/referral/n$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v0, v0, Lio/branch/referral/g;->cwR:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$b;->czZ:Lio/branch/referral/n$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v0, v0, Lio/branch/referral/g;->cwS:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/branch/referral/n$b;->cAa:Lio/branch/referral/n$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget v0, v0, Lio/branch/referral/g;->type:I

    int-to-long v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$b;->czV:Lio/branch/referral/n$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget v1, v1, Lio/branch/referral/g;->duration:I

    int-to-long v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$b;->czW:Lio/branch/referral/n$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    iget-object v1, v1, Lio/branch/referral/g;->cwT:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lio/branch/referral/c;->A([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source=android&data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Hh()Ljava/lang/String;
    .locals 2

    const-string v0, "bnc_user_url"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bnc_user_url"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/referral/t;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://bnc.lt/a/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/referral/t;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final Hi()V
    .locals 4

    iget-object v0, p0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    invoke-virtual {v0}, Lio/branch/referral/g;->GJ()Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p0, Lio/branch/referral/t;->cBo:Z

    if-eqz v1, :cond_0

    new-instance v1, Lio/branch/referral/p;

    invoke-direct {v1}, Lio/branch/referral/p;-><init>()V

    const-string v2, "Branch Share"

    const-string v3, "bnc_identity_id"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lio/branch/referral/p;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ae;->Hr()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lio/branch/referral/d$b;->a(Ljava/lang/String;Lio/branch/referral/f;)V

    :cond_0
    invoke-virtual {p0}, Lio/branch/referral/t;->Hi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    const/4 v2, 0x0

    new-instance v3, Lio/branch/referral/f;

    const-string v4, "Trouble creating a URL."

    const/16 v5, -0x66

    invoke-direct {v3, v4, v5}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Lio/branch/referral/d$b;->a(Ljava/lang/String;Lio/branch/referral/f;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lio/branch/referral/t;->cBm:Z

    if-nez v2, :cond_2

    const-string v2, "bnc_identity_id"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bnc_no_value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public final gH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lio/branch/referral/t;->cxv:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/branch/referral/t;->Hh()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    new-instance v2, Lio/branch/referral/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trouble creating a URL. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lio/branch/referral/d$b;->a(Ljava/lang/String;Lio/branch/referral/f;)V

    :cond_1
    return-void
.end method
