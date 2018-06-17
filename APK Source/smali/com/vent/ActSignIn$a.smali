.class final Lcom/vent/ActSignIn$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final bUO:Landroid/support/v7/app/c;

.field final synthetic bYm:Lcom/vent/ActSignIn;

.field final bYn:Lorg/json/JSONObject;

.field bYo:I

.field bYp:Lorg/json/JSONObject;

.field final bYq:[[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vent/ActSignIn;Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/vent/ActSignIn$a;->bYn:Lorg/json/JSONObject;

    const v0, 0x7f0f0120

    invoke-static {p1, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActSignIn$a;->bUO:Landroid/support/v7/app/c;

    sget-object v0, Lcom/vent/bb;->bYq:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/c;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/ActSignIn$a;->bYq:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "POST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vent/bb;->Er()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "api/v1/sign_in.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActSignIn$a;->bYq:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/vent/ActSignIn$a;->bYn:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/vent/az;->a(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lorg/json/JSONObject;)Lcom/vent/az$a;

    move-result-object v0

    iget v1, v0, Lcom/vent/az$a;->bYo:I

    iput v1, p0, Lcom/vent/ActSignIn$a;->bYo:I

    iget-object v0, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/vent/ActSignIn$a;->bYp:Lorg/json/JSONObject;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iput-boolean v4, v0, Lcom/vent/ActSignIn;->bUV:Z

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    invoke-virtual {v0}, Lcom/vent/ActSignIn;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bUO:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget v0, p0, Lcom/vent/ActSignIn$a;->bYo:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/vent/ActSignIn$a;->bYo:I

    const/16 v2, 0x12b

    if-le v0, v2, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    invoke-static {v0, v4, v1}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    iget v0, p0, Lcom/vent/ActSignIn$a;->bYo:I

    const/16 v2, 0x190

    if-lt v0, v2, :cond_6

    iget v0, p0, Lcom/vent/ActSignIn$a;->bYo:I

    const/16 v2, 0x1f3

    if-gt v0, v2, :cond_6

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYp:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    const-string v2, "Cloudflare"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget-object v0, v0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget-object v0, v0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    const v1, 0x7f0f01c8

    invoke-static {v0, v1, v3}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYp:Lorg/json/JSONObject;

    const-string v2, "html_title"

    invoke-static {v0, v2}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/vent/ActSignIn$a;->bYo:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget-object v0, v0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget-object v0, v0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    const v2, 0x7f0f0015

    invoke-virtual {v1, v2}, Lcom/vent/ActSignIn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget-object v1, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget v2, p0, Lcom/vent/ActSignIn$a;->bYo:I

    iget-object v3, p0, Lcom/vent/ActSignIn$a;->bYp:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget-object v1, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    iget v2, p0, Lcom/vent/ActSignIn$a;->bYo:I

    iget-object v3, p0, Lcom/vent/ActSignIn$a;->bYp:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYp:Lorg/json/JSONObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

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

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->ciE:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    iget-object v0, p0, Lcom/vent/ActSignIn$a;->bYm:Lcom/vent/ActSignIn;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vent/ActSignIn;->es(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
