.class public abstract Lio/branch/referral/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/branch/referral/j;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected cvT:Lio/branch/referral/d;

.field private final cvX:Landroid/content/Context;

.field protected cxm:Lorg/json/JSONObject;

.field protected cxn:Ljava/lang/String;

.field protected cxo:Ljava/lang/String;

.field protected cxp:Ljava/lang/String;

.field protected cxq:Ljava/lang/String;

.field protected cxr:Ljava/lang/String;

.field protected cxs:I

.field protected cxt:I

.field protected cxu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cxv:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lio/branch/referral/j;->cxs:I

    iput v0, p0, Lio/branch/referral/j;->cxt:I

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/j;->cvT:Lio/branch/referral/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/j;->cvX:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/referral/j;->cxv:Z

    return-void
.end method


# virtual methods
.method public final C(Ljava/util/List;)Lio/branch/referral/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/referral/j;->cxu:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/referral/j;->cxu:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lio/branch/referral/j;->cxu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)Lio/branch/referral/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final b(Lio/branch/referral/d$b;)V
    .locals 14

    const/4 v13, 0x0

    iget-object v0, p0, Lio/branch/referral/j;->cvT:Lio/branch/referral/d;

    if-eqz v0, :cond_4

    new-instance v0, Lio/branch/referral/t;

    iget-object v1, p0, Lio/branch/referral/j;->cvX:Landroid/content/Context;

    iget-object v2, p0, Lio/branch/referral/j;->cxr:Ljava/lang/String;

    iget v3, p0, Lio/branch/referral/j;->cxs:I

    iget v4, p0, Lio/branch/referral/j;->cxt:I

    iget-object v5, p0, Lio/branch/referral/j;->cxu:Ljava/util/ArrayList;

    iget-object v6, p0, Lio/branch/referral/j;->cxn:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/referral/j;->cxo:Ljava/lang/String;

    iget-object v8, p0, Lio/branch/referral/j;->cxp:Ljava/lang/String;

    iget-object v9, p0, Lio/branch/referral/j;->cxq:Ljava/lang/String;

    iget-object v10, p0, Lio/branch/referral/j;->cxm:Lorg/json/JSONObject;

    invoke-static {v10}, Lio/branch/referral/k;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iget-boolean v12, p0, Lio/branch/referral/j;->cxv:Z

    move-object v11, p1

    invoke-direct/range {v0 .. v12}, Lio/branch/referral/t;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/referral/d$b;Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/branch/referral/t;->cBo:Z

    iget-object v1, p0, Lio/branch/referral/j;->cvT:Lio/branch/referral/d;

    iget-boolean v2, v0, Lio/branch/referral/t;->cBc:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lio/branch/referral/d;->cvX:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lio/branch/referral/t;->bU(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lio/branch/referral/d;->cwc:Ljava/util/Map;

    iget-object v3, v0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lio/branch/referral/d;->cwc:Ljava/util/Map;

    iget-object v2, v0, Lio/branch/referral/t;->cBl:Lio/branch/referral/g;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lio/branch/referral/t;->cBn:Lio/branch/referral/d$b;

    invoke-interface {v2, v1, v13}, Lio/branch/referral/d$b;->a(Ljava/lang/String;Lio/branch/referral/f;)V

    :cond_0
    invoke-virtual {v0}, Lio/branch/referral/t;->Hi()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, v0, Lio/branch/referral/t;->cBm:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/r;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/t;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    new-instance v0, Lio/branch/referral/f;

    const-string v1, "session has not been initialized"

    const/16 v2, -0x65

    invoke-direct {v0, v1, v2}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v13, v0}, Lio/branch/referral/d$b;->a(Ljava/lang/String;Lio/branch/referral/f;)V

    :cond_5
    const-string v0, "BranchSDK"

    const-string v1, "Branch Warning: User session has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
