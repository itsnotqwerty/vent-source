.class final Lcom/vent/ActEditProfile$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEditProfile;->a(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUW:Lcom/vent/ActEditProfile;

.field final synthetic bUX:Lorg/json/JSONObject;

.field final synthetic bUY:Z


# direct methods
.method constructor <init>(Lcom/vent/ActEditProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iput-object p6, p0, Lcom/vent/ActEditProfile$2;->bUX:Lorg/json/JSONObject;

    iput-boolean p7, p0, Lcom/vent/ActEditProfile$2;->bUY:Z

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

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iput-boolean v3, v0, Lcom/vent/ActEditProfile;->bUV:Z

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    invoke-virtual {v0, v3}, Lcom/vent/ActEditProfile;->aT(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/vent/ActEditProfile$2;->ccY:I

    const/16 v1, 0x1a6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->ccV:Lorg/json/JSONObject;

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v1, v1, Lcom/vent/a/y;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/vent/ActEditProfile$2;->ccY:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/vent/ActEditProfile$2;->ccY:I

    const/16 v1, 0x12b

    if-le v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v1, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget v2, p0, Lcom/vent/ActEditProfile$2;->ccU:I

    iget-object v3, p0, Lcom/vent/ActEditProfile$2;->ccV:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->ccV:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/vent/bb;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    invoke-static {v0}, Lcom/vent/bb;->bA(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/vent/ActEditProfile$2;->bUY:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    iget-object v0, v0, Lcom/vent/ActEditProfile;->bUG:Ljava/io/File;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vent/ActEditProfile;->bUV:Z

    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    invoke-virtual {v0}, Lcom/vent/ActEditProfile;->Bp()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/ActEditProfile;->aS(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/vent/ActEditProfile$2;->bUW:Lcom/vent/ActEditProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/ActEditProfile;->aS(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
