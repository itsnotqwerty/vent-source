.class public Lcom/vent/ac;
.super Lcom/vent/ad;


# instance fields
.field ccb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/z;",
            ">;"
        }
    .end annotation
.end field

.field ccc:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method static synthetic a(Lcom/vent/ac;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/vent/ad;->b(Ljava/lang/Void;)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v3

    iget v0, p0, Lcom/vent/ac;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/vent/ac;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/vent/ac;->ccV:Lorg/json/JSONObject;

    const-string v2, "vents"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/vent/a/z;

    iget-object v2, p0, Lcom/vent/ac;->ccV:Lorg/json/JSONObject;

    const-string v4, "vents"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v4, Landroid/support/v4/g/b;

    invoke-direct {v4, v2}, Landroid/support/v4/g/b;-><init>(I)V

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ac;->ccV:Lorg/json/JSONObject;

    const-string v1, "vent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/a/z;

    iget-object v2, p0, Lcom/vent/ac;->ccV:Lorg/json/JSONObject;

    const-string v4, "vent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vent/a/z;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/vent/ac;->ccV:Lorg/json/JSONObject;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "vents_per_ad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/ac;->ccc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ac;->ccV:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method protected aQ(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/f;->z(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 7

    const/4 v3, 0x0

    iget v0, p0, Lcom/vent/ac;->ccU:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/vent/ac;->ccU:I

    const/16 v1, 0x12b

    if-ge v0, v1, :cond_7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ciQ:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciS:J

    iget-object v0, p0, Lcom/vent/ac;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/vent/ac$1;

    invoke-direct {v1, p0}, Lcom/vent/ac$1;-><init>(Lcom/vent/ac;)V

    invoke-static {v0, v1}, Lcom/vent/ActMain;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ac;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    sget-object v1, Lcom/vent/bb;->ciP:Ljava/util/Map;

    iget-object v2, v0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/g;

    if-nez v1, :cond_4

    const/4 v2, 0x0

    :goto_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_5

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/vent/bb;->ciO:Ljava/util/Map;

    iget-object v6, v1, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vent/a/h;

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/n;

    sget-object v2, Lcom/vent/bb;->ciQ:Ljava/util/Map;

    iget-object v0, v0, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_7
    invoke-super {p0, p1}, Lcom/vent/ad;->b(Ljava/lang/Void;)V

    goto :goto_1

    :cond_8
    move v0, v4

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ac;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ac;->b(Ljava/lang/Void;)V

    return-void
.end method
