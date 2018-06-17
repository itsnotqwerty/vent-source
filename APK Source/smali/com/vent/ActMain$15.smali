.class final Lcom/vent/ActMain$15;
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
.field bXi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/o;",
            ">;"
        }
    .end annotation
.end field

.field bXj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/m;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    iget v0, p0, Lcom/vent/ActMain$15;->ccU:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/vent/ActMain$15;->ccU:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_0

    :try_start_0
    const-class v0, Lcom/vent/a/o;

    iget-object v2, p0, Lcom/vent/ActMain$15;->ccV:Lorg/json/JSONObject;

    const-string v3, "interaction_types"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    sget-object v2, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    iget-object v2, v2, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    sget-object v3, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    sget-object v2, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    iget-object v2, v2, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    sget-object v3, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ActMain$15;->ccV:Lorg/json/JSONObject;

    const-string v2, "emotion_interaction_mapping"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/vent/bb;->a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain$15;->bXj:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vent/ActMain$15;->bXj:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/vent/bb;->d(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final aQ(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$15;->bXi:Ljava/util/HashMap;

    sput-object v0, Lcom/vent/bb;->ciQ:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActMain$15;->bXj:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$15;->bXj:Ljava/util/HashMap;

    sput-object v0, Lcom/vent/bb;->ciR:Ljava/util/Map;

    :cond_1
    invoke-static {}, Lcom/vent/ActMain;->BR()V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ActMain$15;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
