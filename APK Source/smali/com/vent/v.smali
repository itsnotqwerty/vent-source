.class public Lcom/vent/v;
.super Lcom/vent/ad;


# instance fields
.field bUd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field

.field caq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/q;",
            ">;"
        }
    .end annotation
.end field

.field ccH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    iget v1, p0, Lcom/vent/v;->ccU:I

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_1

    iget v1, p0, Lcom/vent/v;->ccU:I

    const/16 v3, 0x12b

    if-gt v1, v3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v3, "conversations"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/vent/a/e;

    iget-object v3, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v4, "conversations"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/v;->ccH:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v3, "users"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/vent/v;->bUd:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v3, "invite_tiers"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iput-object v0, p0, Lcom/vent/v;->caq:Ljava/util/HashMap;

    :cond_1
    :goto_3
    return-object v2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/vent/v;->ccH:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v3, "conversation"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vent/v;->ccH:Ljava/util/ArrayList;

    new-instance v3, Lcom/vent/a/e;

    iget-object v4, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v5, "conversation"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vent/a/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    goto :goto_3

    :cond_3
    :try_start_1
    const-class v1, Lcom/vent/a/x;

    iget-object v3, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v4, "users"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-class v0, Lcom/vent/a/q;

    iget-object v1, p0, Lcom/vent/v;->ccV:Lorg/json/JSONObject;

    const-string v3, "invite_tiers"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/v;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
