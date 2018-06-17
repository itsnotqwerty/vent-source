.class final Lcom/vent/ActSubscriptions$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActSubscriptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYG:Lcom/vent/ActSubscriptions;


# direct methods
.method constructor <init>(Lcom/vent/ActSubscriptions;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActSubscriptions$1;->bYG:Lcom/vent/ActSubscriptions;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/ActSubscriptions$1;->bYG:Lcom/vent/ActSubscriptions;

    const-class v1, Lcom/vent/a/w;

    iget-object v2, p0, Lcom/vent/ActSubscriptions$1;->ccV:Lorg/json/JSONObject;

    const-string v3, "subscriptions"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/ActSubscriptions;->bYD:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActSubscriptions$1;->bYG:Lcom/vent/ActSubscriptions;

    const-class v1, Lcom/vent/a/w;

    iget-object v2, p0, Lcom/vent/ActSubscriptions$1;->ccV:Lorg/json/JSONObject;

    const-string v3, "subscriptions"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/ActSubscriptions;->bYE:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActSubscriptions$1;->bYG:Lcom/vent/ActSubscriptions;

    iget-object v0, v0, Lcom/vent/ActSubscriptions;->bYF:Lcom/vent/ActSubscriptions$a;

    invoke-virtual {v0}, Lcom/vent/ActSubscriptions$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vent/ActSubscriptions$1;->bYG:Lcom/vent/ActSubscriptions;

    invoke-virtual {v0}, Lcom/vent/ActSubscriptions;->supportInvalidateOptionsMenu()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
