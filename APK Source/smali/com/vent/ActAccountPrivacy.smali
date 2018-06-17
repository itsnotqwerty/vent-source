.class public final Lcom/vent/ActAccountPrivacy;
.super Lcom/vent/a;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActAccountPrivacy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f09022f

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/vent/ActAccountPrivacy;->setContentView(I)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActAccountPrivacy;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActAccountPrivacy;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActAccountPrivacy;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0, v4}, Lcom/vent/ActAccountPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Ff()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/vent/ActAccountPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090230

    invoke-virtual {p0, v0}, Lcom/vent/ActAccountPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/x;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActAccountPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const v0, 0x7f09022f

    invoke-virtual {p0, v0}, Lcom/vent/ActAccountPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v3}, Lcom/vent/a/y;->Ff()Z

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {p0}, Lcom/vent/ax;->ba(Landroid/content/Context;)V

    :cond_0
    const-string v3, "account_is_public"

    if-eqz v0, :cond_3

    move v0, v6

    :goto_2
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "has_private_bio"

    const v0, 0x7f090230

    invoke-virtual {p0, v0}, Lcom/vent/ActAccountPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    :goto_3
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "user"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v0, Lcom/vent/ActAccountPrivacy$1;

    const-string v3, "api/v1/my/user.json"

    const-string v4, "PUT"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActAccountPrivacy$1;-><init>(Lcom/vent/ActAccountPrivacy;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x7f090254
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
