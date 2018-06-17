.class final Lcom/vent/ActGift$1;
.super Lcom/vent/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActGift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVJ:Lcom/vent/b/a;

.field final synthetic bVK:Lcom/vent/ActGift;


# direct methods
.method constructor <init>(Lcom/vent/ActGift;Lcom/vent/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iput-object p2, p0, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    invoke-direct {p0}, Lcom/vent/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final aQ(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActGift$1;->clx:Lcom/vent/b/f;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    iget-object v1, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v1}, Lcom/vent/ActGift;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    :goto_0
    return-void

    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "emotion_category_id"

    iget-object v2, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget-object v2, v2, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    iget-object v2, v2, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "receipt"

    iget-object v2, p0, Lcom/vent/ActGift$1;->clx:Lcom/vent/b/f;

    iget-object v2, v2, Lcom/vent/b/f;->cmm:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v0, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    const v3, 0x7f0901e1

    invoke-virtual {v0, v3}, Lcom/vent/ActGift;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_anonymous"

    iget-object v0, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    const v3, 0x7f090141

    invoke-virtual {v0, v3}, Lcom/vent/ActGift;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "gift"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lcom/vent/ActGift$1$1;

    iget-object v2, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/users/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget-object v3, v3, Lcom/vent/ActGift;->bVI:Lcom/vent/a/x;

    iget-object v3, v3, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/gifts/android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActGift$1$1;-><init>(Lcom/vent/ActGift$1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
