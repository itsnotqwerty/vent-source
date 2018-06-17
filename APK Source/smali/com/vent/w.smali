.class public Lcom/vent/w;
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

.field final ccI:Ljava/lang/String;

.field private final ccJ:Ljava/lang/String;

.field ccK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private final ccL:Ljava/lang/String;

.field private final ccM:Z


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    iput-object p4, p0, Lcom/vent/w;->ccI:Ljava/lang/String;

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/vent/w;->ccL:Ljava/lang/String;

    if-eqz p6, :cond_1

    :goto_1
    iput-object p6, p0, Lcom/vent/w;->ccJ:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/vent/w;->ccM:Z

    return-void

    :cond_0
    const-string p5, "user_id"

    goto :goto_0

    :cond_1
    const-string p6, "users"

    goto :goto_1
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    iget v0, p0, Lcom/vent/w;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/vent/w;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/vent/w;->ccI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/vent/w;->ccI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/w;->ccL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/vent/a/i;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/w;->ccK:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/vent/w;->ccJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/vent/a/x;

    iget-object v2, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/vent/w;->ccJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vent/w;->ccM:Z

    invoke-static {v0, v2, v3}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/w;->bUd:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    const-string v2, "invite_tiers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/vent/a/q;

    iget-object v2, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    const-string v3, "invite_tiers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/w;->caq:Ljava/util/HashMap;

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/w;->ccK:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/w;->ccV:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/w;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
