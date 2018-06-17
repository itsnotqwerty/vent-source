.class public final Lcom/vent/ActReport2;
.super Lcom/vent/a;


# instance fields
.field bTT:Z

.field bXD:Landroid/os/Parcelable;

.field bXE:Lcom/vent/a/x;

.field bXL:Lcom/vent/a/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/u;Lcom/vent/a/x;Landroid/os/Parcelable;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActReport2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x17

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/vent/ActReport2;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActReport2;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/vent/ActReport2;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActReport2;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActReport2;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f00fd

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActReport2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/u;

    iput-object v0, p0, Lcom/vent/ActReport2;->bXL:Lcom/vent/a/u;

    iget-object v0, p0, Lcom/vent/ActReport2;->bXL:Lcom/vent/a/u;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActReport2;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActReport2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActReport2;->bXE:Lcom/vent/a/x;

    invoke-virtual {p0}, Lcom/vent/ActReport2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActReport2;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000f

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
    invoke-virtual {p0}, Lcom/vent/ActReport2;->finish()V

    move v0, v6

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/vent/ActReport2;->bTT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport2;->bXL:Lcom/vent/a/u;

    if-eqz v0, :cond_0

    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/vent/ActReport2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "comment"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "report_reason_id"

    iget-object v1, p0, Lcom/vent/ActReport2;->bXL:Lcom/vent/a/u;

    iget-object v1, v1, Lcom/vent/a/u;->cjy:Lcom/vent/a/m;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "report"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/vent/ActReport2;->bXL:Lcom/vent/a/u;

    iget v0, v0, Lcom/vent/a/u;->ckL:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_2
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    instance-of v0, v0, Lcom/vent/a/z;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "api/v1/vents/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    check-cast v0, Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reports.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    iput-boolean v6, p0, Lcom/vent/ActReport2;->bTT:Z

    new-instance v0, Lcom/vent/ActReport2$1;

    const-string v4, "POST"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActReport2$1;-><init>(Lcom/vent/ActReport2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    instance-of v0, v0, Lcom/vent/a/d;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "api/v1/comments/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    check-cast v0, Lcom/vent/a/d;

    iget-object v0, v0, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reports.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/vent/ActReport2;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/users/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActReport2;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reports.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    instance-of v0, v0, Lcom/vent/a/k;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "api/v1/groups/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActReport2;->bXD:Landroid/os/Parcelable;

    check-cast v0, Lcom/vent/a/k;

    iget-object v0, v0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reports.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09024c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "ReportDescription"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
