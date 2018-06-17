.class final Lcom/vent/ActMain$14;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->b(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    iget v0, p0, Lcom/vent/ActMain$14;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/vent/ActMain$14;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_0

    :try_start_0
    const-class v0, Lcom/vent/a/h;

    iget-object v2, p0, Lcom/vent/ActMain$14;->ccV:Lorg/json/JSONObject;

    const-string v3, "emotion_categories"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    const-class v0, Lcom/vent/a/g;

    iget-object v2, p0, Lcom/vent/ActMain$14;->ccV:Lorg/json/JSONObject;

    const-string v3, "emotions"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/vent/bb$b;

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    invoke-direct {v2, v0}, Lcom/vent/bb$b;-><init>(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput-object v4, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/vent/bb;->c(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final aQ(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXg:Ljava/util/HashMap;

    sput-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$14;->bXh:Ljava/util/HashMap;

    sput-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    :cond_1
    invoke-static {}, Lcom/vent/ActMain;->BR()V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ActMain$14;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
