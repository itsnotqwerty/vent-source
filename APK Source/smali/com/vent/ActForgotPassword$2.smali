.class final Lcom/vent/ActForgotPassword$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActForgotPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVG:Lcom/vent/ActForgotPassword;


# direct methods
.method constructor <init>(Lcom/vent/ActForgotPassword;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    const/4 v1, 0x0

    const v6, 0x7f0f0105

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

    iget-object v0, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    iput-boolean v2, v0, Lcom/vent/ActForgotPassword;->bTT:Z

    if-eqz p1, :cond_2

    :try_start_0
    iget v0, p0, Lcom/vent/ActForgotPassword$2;->ccY:I

    const/16 v1, 0x1a6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vent/ActForgotPassword$2;->ccV:Lorg/json/JSONObject;

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

    const-string v0, "cannot be found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    const v1, 0x7f0f0137

    invoke-virtual {v0, v1}, Lcom/vent/ActForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    iget-object v1, v1, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    iget-object v1, v1, Lcom/vent/ActForgotPassword;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget v0, p0, Lcom/vent/ActForgotPassword$2;->ccY:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/vent/ActForgotPassword$2;->ccY:I

    const/16 v1, 0x12b

    if-le v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    iget-object v1, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    iget v2, p0, Lcom/vent/ActForgotPassword$2;->ccU:I

    iget-object v3, p0, Lcom/vent/ActForgotPassword$2;->ccV:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Lcom/vent/ActForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    iget-object v3, v3, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/c$a;

    iget-object v2, p0, Lcom/vent/ActForgotPassword$2;->bVG:Lcom/vent/ActForgotPassword;

    invoke-direct {v1, v2}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0129

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
