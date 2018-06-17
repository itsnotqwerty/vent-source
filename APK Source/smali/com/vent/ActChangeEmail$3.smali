.class final Lcom/vent/ActChangeEmail$3;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActChangeEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTU:Lcom/vent/ActChangeEmail;


# direct methods
.method constructor <init>(Lcom/vent/ActChangeEmail;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    const/4 v1, 0x0

    const v6, 0x7f0f0108

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_3

    :try_start_0
    iget v0, p0, Lcom/vent/ActChangeEmail$3;->ccY:I

    const/16 v1, 0x1a6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->ccV:Lorg/json/JSONObject;

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "email"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    iget-object v0, v0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    iget-object v0, v0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    invoke-virtual {v0}, Lcom/vent/ActChangeEmail;->Bd()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/vent/ActChangeEmail$3;->ccY:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/vent/ActChangeEmail$3;->ccY:I

    const/16 v1, 0x12b

    if-le v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    iget-object v1, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    iget v2, p0, Lcom/vent/ActChangeEmail$3;->ccU:I

    iget-object v3, p0, Lcom/vent/ActChangeEmail$3;->ccV:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->ccV:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/vent/bb;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    invoke-static {v0}, Lcom/vent/ax;->aZ(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    invoke-static {v0}, Lcom/vent/bb;->bA(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vent/ActChangeEmail$3;->bTU:Lcom/vent/ActChangeEmail;

    invoke-static {v0}, Lcom/vent/ActChangeEmail;->n(Landroid/app/Activity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
