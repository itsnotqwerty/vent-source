.class final Lcom/vent/ActRegister1$3;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister1;->dU(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXu:Lcom/vent/ActRegister1;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    const/4 v1, 0x0

    const v6, 0x7f0f00f3

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
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iput-boolean v1, v0, Lcom/vent/ActRegister1;->bUV:Z

    if-eqz p1, :cond_4

    :try_start_0
    iget v0, p0, Lcom/vent/ActRegister1$3;->ccY:I

    const/16 v2, 0x1a6

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->ccV:Lorg/json/JSONObject;

    const-string v2, "errors"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v2, v1

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :sswitch_0
    :try_start_1
    const-string v7, "username"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string v7, "password"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v7, "email"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/vent/ActRegister1$3;->ccY:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/vent/ActRegister1$3;->ccY:I

    const/16 v1, 0x12b

    if-le v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v1, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget v2, p0, Lcom/vent/ActRegister1$3;->ccU:I

    iget-object v3, p0, Lcom/vent/ActRegister1$3;->ccV:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/vent/ActRegister1$3;->ccV:Lorg/json/JSONObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    invoke-static {v1}, Lcom/vent/ax;->aJ(Landroid/content/Context;)V

    new-instance v1, Lcom/vent/a/y;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/vent/a/y;-><init>(Lorg/json/JSONObject;Z)V

    sput-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    const-string v1, "authentication_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vent/bb;->ceg:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/bb;->ciB:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/bb;->ciE:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    iget-object v0, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v1, p0, Lcom/vent/ActRegister1$3;->bXu:Lcom/vent/ActRegister1;

    iget-object v1, v1, Lcom/vent/ActRegister1;->bTI:Lcom/vent/views/b;

    invoke-virtual {v1}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lcom/vent/ActRegister2;->a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/util/HashSet;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0xfd6772a -> :sswitch_0
        0x5c24b9c -> :sswitch_2
        0x4889ba9b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
