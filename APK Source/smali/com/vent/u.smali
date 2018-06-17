.class public Lcom/vent/u;
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

.field bZV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    iget v0, p0, Lcom/vent/u;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/vent/u;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    const-string v2, "comments"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/vent/a/d;

    iget-object v2, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    const-string v3, "comments"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/u;->bZV:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/vent/a/x;

    iget-object v2, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    const-string v3, "users"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/u;->bUd:Ljava/util/HashMap;

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/u;->bZV:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    const-string v2, "comment"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/u;->bZV:Ljava/util/ArrayList;

    new-instance v2, Lcom/vent/a/d;

    iget-object v3, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    const-string v4, "comment"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vent/a/d;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/u;->ccV:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/u;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
