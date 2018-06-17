.class final Lcom/vent/ActReport1$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActReport1;->Cf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXG:Lcom/vent/ActReport1;


# direct methods
.method constructor <init>(Lcom/vent/ActReport1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

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

    iget-object v0, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    iget-object v0, v0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    iget-object v0, v0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->setRefreshing(Z)V

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vent/ActReport1;->bXB:Ljava/util/ArrayList;

    const-class v0, Lcom/vent/a/u;

    iget-object v1, p0, Lcom/vent/ActReport1$1;->ccV:Lorg/json/JSONObject;

    const-string v2, "report_reasons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/u;

    iget v2, v0, Lcom/vent/a/u;->ckL:I

    iget-object v3, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    iget v3, v3, Lcom/vent/ActReport1;->type:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    iget-object v2, v2, Lcom/vent/ActReport1;->bXB:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    iget-object v0, v0, Lcom/vent/ActReport1;->bXC:Lcom/vent/ActReport1$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    iget-object v0, v0, Lcom/vent/ActReport1;->bXC:Lcom/vent/ActReport1$a;

    invoke-virtual {v0}, Lcom/vent/ActReport1$a;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, p0, Lcom/vent/ActReport1$1;->bXG:Lcom/vent/ActReport1;

    invoke-virtual {v0}, Lcom/vent/ActReport1;->supportInvalidateOptionsMenu()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
