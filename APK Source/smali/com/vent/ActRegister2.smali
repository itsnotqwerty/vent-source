.class public final Lcom/vent/ActRegister2;
.super Lcom/vent/a;


# instance fields
.field bTI:Lcom/vent/views/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActRegister2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "interest_ids"

    invoke-static {v0, v1, p2}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Set;)V

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister2;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActRegister2;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister2;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister2;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    :cond_2
    new-instance v0, Lcom/vent/views/b;

    const-string v1, "gradientpos"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActRegister2;->bTI:Lcom/vent/views/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/vent/ActRegister2;->bTx:Z

    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister2;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister2;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActRegister2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActRegister2;->bTI:Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActRegister2;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgInterests;

    invoke-virtual {p0}, Lcom/vent/ActRegister2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "interest_ids"

    invoke-static {v1, v2}, Lcom/vent/d/d;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/vent/FrgInterests;->a(Ljava/util/HashSet;III)V

    invoke-virtual {v0, v4, v3}, Lcom/vent/FrgInterests;->f(ZZ)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActRegister2;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/vent/ActRegister2;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgInterests;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "interests"

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/vent/a/m;->h(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "user"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    new-instance v0, Lcom/vent/ActRegister2$1;

    const-string v3, "api/v1/my/user.json"

    const-string v4, "PUT"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActRegister2$1;-><init>(Lcom/vent/ActRegister2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901ed
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/ax;->cfM:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
