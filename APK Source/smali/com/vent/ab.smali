.class public Lcom/vent/ab;
.super Lcom/vent/ad;


# instance fields
.field bXg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/h;",
            ">;"
        }
    .end annotation
.end field

.field bXh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/g;",
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

.field private final ccJ:Ljava/lang/String;

.field private final ccM:Z

.field public ccR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZLjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/vent/ab;->ccJ:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/vent/ab;->ccM:Z

    return-void

    :cond_0
    const-string p8, "users"

    goto :goto_0
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    iget v0, p0, Lcom/vent/ab;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/vent/ab;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/vent/ab;->ccJ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/vent/ab;->ccM:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/vent/a/y;

    :goto_0
    iget-object v2, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/vent/ab;->ccJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vent/ab;->ccM:Z

    const v4, 0x7fffffff

    invoke-static {v0, v2, v3, v4}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;ZI)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ab;->ccR:Ljava/util/ArrayList;

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    const-string v2, "invite_tiers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/vent/a/q;

    iget-object v2, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    const-string v3, "invite_tiers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ab;->caq:Ljava/util/HashMap;

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    const-class v0, Lcom/vent/a/x;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/ab;->ccR:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/vent/ab;->ccR:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/vent/ab;->ccM:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/vent/a/y;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/vent/a/y;-><init>(Lorg/json/JSONObject;Z)V

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

    iput-object v0, p0, Lcom/vent/ab;->ccV:Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    :try_start_1
    new-instance v0, Lcom/vent/a/x;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/vent/a/x;-><init>(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ab;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
