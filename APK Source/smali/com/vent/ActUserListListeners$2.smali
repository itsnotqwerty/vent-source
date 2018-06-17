.class final Lcom/vent/ActUserListListeners$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActUserListListeners;->Cl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYR:Lcom/vent/ActUserListListeners;


# direct methods
.method constructor <init>(Lcom/vent/ActUserListListeners;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActUserListListeners$2;->bYR:Lcom/vent/ActUserListListeners;

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

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/ActUserListListeners$2;->bYR:Lcom/vent/ActUserListListeners;

    iput-boolean v1, v0, Lcom/vent/ActUserListListeners;->bYP:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/ActUserListListeners$2;->ccV:Lorg/json/JSONObject;

    const-string v2, "listen_requests"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/vent/ActUserListListeners$2;->bYR:Lcom/vent/ActUserListListeners;

    iget-object v0, v0, Lcom/vent/ActUserListListeners;->bYO:Landroid/view/View;

    if-eqz v0, :cond_0

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/vent/ActUserListListeners$2;->bYR:Lcom/vent/ActUserListListeners;

    iget-object v0, v0, Lcom/vent/ActUserListListeners;->bYO:Landroid/view/View;

    const v3, 0x7f0900a5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActUserListListeners$2;->bYR:Lcom/vent/ActUserListListeners;

    iget-object v0, v0, Lcom/vent/ActUserListListeners;->bYO:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/vent/ActUserListListeners$2;->bYR:Lcom/vent/ActUserListListeners;

    iget-object v0, v0, Lcom/vent/ActUserListListeners;->bYO:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method
