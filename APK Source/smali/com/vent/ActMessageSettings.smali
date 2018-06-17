.class public final Lcom/vent/ActMessageSettings;
.super Lcom/vent/a;


# instance fields
.field private bXm:Landroid/support/v7/widget/SwitchCompat;

.field private bXn:Landroid/support/v7/widget/SwitchCompat;

.field private bXo:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActMessageSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method final Cb()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMessageSettings;->bXm:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/vent/ActMessageSettings;->bXn:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    iget-object v1, p0, Lcom/vent/ActMessageSettings;->bXo:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/vent/ActMessageSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActMessageSettings;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v3, 0x7f0f00b1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActMessageSettings;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActMessageSettings;->finish()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/vent/ActMessageSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/vent/ActMessageSettings;->bXm:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lcom/vent/ActMessageSettings;->bXm:Landroid/support/v7/widget/SwitchCompat;

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v3}, Lcom/vent/a/y;->Fg()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/vent/ActMessageSettings;->bXm:Landroid/support/v7/widget/SwitchCompat;

    new-instance v3, Lcom/vent/ActMessageSettings$1;

    invoke-direct {v3, p0}, Lcom/vent/ActMessageSettings$1;-><init>(Lcom/vent/ActMessageSettings;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090241

    invoke-virtual {p0, v0}, Lcom/vent/ActMessageSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/vent/ActMessageSettings;->bXn:Landroid/support/v7/widget/SwitchCompat;

    iget-object v3, p0, Lcom/vent/ActMessageSettings;->bXn:Landroid/support/v7/widget/SwitchCompat;

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v0, v0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f0902c7

    invoke-virtual {p0, v0}, Lcom/vent/ActMessageSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/vent/ActMessageSettings;->bXo:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lcom/vent/ActMessageSettings;->bXo:Landroid/support/v7/widget/SwitchCompat;

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v3, v3, Lcom/vent/a/x;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/vent/ActMessageSettings;->Cb()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActMessageSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/vent/ActMessageSettings;->finish()V

    move v0, v6

    goto :goto_0

    :sswitch_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "messages_enabled"

    iget-object v2, p0, Lcom/vent/ActMessageSettings;->bXm:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "typing_indicators_enabled"

    iget-object v2, p0, Lcom/vent/ActMessageSettings;->bXo:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "read_receipts_enabled"

    iget-object v2, p0, Lcom/vent/ActMessageSettings;->bXn:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "bio"

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/vent/ActMessageSettings$2;

    const-string v3, "api/v1/my/user.json"

    const-string v4, "PUT"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActMessageSettings$2;-><init>(Lcom/vent/ActMessageSettings;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090254 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "MessageSettings"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
