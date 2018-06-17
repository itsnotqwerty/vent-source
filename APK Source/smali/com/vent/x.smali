.class public Lcom/vent/x;
.super Lcom/vent/ad;


# instance fields
.field bUq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/p;",
            ">;"
        }
    .end annotation
.end field

.field caK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private final ccN:Z


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    iput-boolean p7, p0, Lcom/vent/x;->ccN:Z

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    iget v0, p0, Lcom/vent/x;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/vent/x;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/vent/x;->ccN:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/vent/a/l;

    :goto_0
    iget-object v2, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vent/x;->ccN:Z

    const v4, 0x7fffffff

    invoke-static {v0, v2, v3, v4}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;ZI)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/x;->caK:Ljava/util/ArrayList;

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/vent/x;->ccN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    const-string v2, "interests"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/vent/a/p;

    iget-object v2, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    const-string v3, "interests"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/x;->bUq:Ljava/util/HashMap;

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    const-class v0, Lcom/vent/a/k;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/x;->caK:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    const-string v2, "group"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    const-string v2, "group"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/vent/x;->caK:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/vent/x;->ccN:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/vent/a/l;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/vent/a/l;-><init>(Lorg/json/JSONObject;Z)V

    :goto_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/x;->ccV:Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v0, Lcom/vent/a/k;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/vent/a/k;-><init>(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/x;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
