.class final Lcom/vent/ActForgotPassword$1;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActForgotPassword;->wf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVG:Lcom/vent/ActForgotPassword;


# direct methods
.method constructor <init>(Lcom/vent/ActForgotPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActForgotPassword$1;->bVG:Lcom/vent/ActForgotPassword;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/vent/ActForgotPassword$1;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActForgotPassword$1;->bVG:Lcom/vent/ActForgotPassword;

    iget-boolean v0, v1, Lcom/vent/ActForgotPassword;->bTT:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "email"

    iget-object v2, v1, Lcom/vent/ActForgotPassword;->bTP:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/vent/ActForgotPassword;->bTT:Z

    new-instance v0, Lcom/vent/ActForgotPassword$2;

    const-string v3, "api/v1/forgot_password"

    const-string v4, "POST"

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActForgotPassword$2;-><init>(Lcom/vent/ActForgotPassword;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
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
