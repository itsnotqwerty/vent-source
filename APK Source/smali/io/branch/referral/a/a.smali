.class public abstract Lio/branch/referral/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/a/a$a;,
        Lio/branch/referral/a/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;ILjava/lang/String;)Lio/branch/referral/ae;
    .locals 5

    new-instance v1, Lio/branch/referral/ae;

    invoke-direct {v1, p3, p2}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V

    const-string v0, "BranchSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lio/branch/referral/ae;->cBC:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lio/branch/referral/ae;->cBC:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static j(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    const-string v0, "sdk"

    const-string v1, "android2.11.1"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bnc_no_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/branch/referral/n$a;->cyc:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_0

    const-string v0, "?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/referral/a/a$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/a/a$a;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/ae;
    .locals 7

    const/16 v6, -0x6f

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {p2, p4}, Lio/branch/referral/a/a;->j(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lio/branch/referral/a/a;->l(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "BranchSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lio/branch/referral/a/a;->eS(Ljava/lang/String;)Lio/branch/referral/a/a$b;

    move-result-object v0

    iget-object v1, v0, Lio/branch/referral/a/a$b;->cBM:Ljava/lang/String;

    iget v0, v0, Lio/branch/referral/a/a$b;->responseCode:I

    invoke-direct {p0, v1, v0, p3}, Lio/branch/referral/a/a;->c(Ljava/lang/String;ILjava/lang/String;)Lio/branch/referral/ae;
    :try_end_0
    .catch Lio/branch/referral/a/a$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/branch/referral/ae;

    const/16 v1, -0x72

    invoke-direct {v0, p3, v1}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lio/branch/referral/a/a$a;->a(Lio/branch/referral/a/a$a;)I

    move-result v0

    if-ne v0, v6, :cond_3

    new-instance v0, Lio/branch/referral/ae;

    const/16 v1, -0x6f

    invoke-direct {v0, p3, v1}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_2
    new-instance v0, Lio/branch/referral/ae;

    const/16 v1, -0x71

    invoke-direct {v0, p3, v1}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    throw v0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/ae;
    .locals 6

    const/16 v5, -0x6f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p1, p4}, Lio/branch/referral/a/a;->j(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lio/branch/referral/ae;

    const/16 v1, -0x72

    invoke-direct {v0, p3, v1}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "BranchSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "posting to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BranchSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Post value = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lio/branch/referral/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/referral/a/a$b;

    move-result-object v0

    iget-object v1, v0, Lio/branch/referral/a/a$b;->cBM:Ljava/lang/String;

    iget v0, v0, Lio/branch/referral/a/a$b;->responseCode:I

    invoke-direct {p0, v1, v0, p3}, Lio/branch/referral/a/a;->c(Ljava/lang/String;ILjava/lang/String;)Lio/branch/referral/ae;
    :try_end_0
    .catch Lio/branch/referral/a/a$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lio/branch/referral/a/a$a;->a(Lio/branch/referral/a/a$a;)I

    move-result v0

    if-ne v0, v5, :cond_3

    new-instance v0, Lio/branch/referral/ae;

    const/16 v1, -0x6f

    invoke-direct {v0, p3, v1}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :try_start_2
    new-instance v0, Lio/branch/referral/ae;

    const/16 v1, -0x71

    invoke-direct {v0, p3, v1}, Lio/branch/referral/ae;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v1, v2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/branch/referral/n$a;->czw:Lio/branch/referral/n$a;

    iget-object v4, v4, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/branch/referral/d;->T(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    throw v0
.end method

.method public abstract eS(Ljava/lang/String;)Lio/branch/referral/a/a$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/a/a$a;
        }
    .end annotation
.end method
