.class public final Lcom/vent/ActSettingsAdvanced;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private bYf:Landroid/widget/TextView;

.field private bYg:Landroid/widget/TextView;

.field private bYh:Lcom/vent/a/h;

.field private bYi:Landroid/widget/SeekBar;

.field private bYj:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method private Ch()V
    .locals 3

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/vent/ActSettingsAdvanced;->bYf:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYh:Lcom/vent/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYh:Lcom/vent/a/h;

    invoke-virtual {v0, v1}, Lcom/vent/a/h;->bo(Z)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/vent/ActSettingsAdvanced;->bYf:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYh:Lcom/vent/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYh:Lcom/vent/a/h;

    invoke-virtual {v0, v1}, Lcom/vent/a/h;->bm(Z)I

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/vent/ActSettingsAdvanced;->bYg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYh:Lcom/vent/a/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYh:Lcom/vent/a/h;

    invoke-virtual {v0, v1}, Lcom/vent/a/h;->bm(Z)I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const v0, -0x7f7f80

    goto :goto_1

    :cond_2
    const/high16 v0, -0x1000000

    goto :goto_2
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActSettingsAdvanced;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-boolean v0, Lcom/vent/MyApplication;->cgC:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lio/intercom/android/sdk/Intercom;->client()Lio/intercom/android/sdk/Intercom;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Intercom;->displayConversationsList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/vent/ActSettingsAdvanced;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DY()Lcom/vent/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-static {v0, p0}, Lcom/layer/sdk/LayerClient;->sendLogs(Lcom/layer/sdk/LayerClient;Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_2
    sput v1, Lcom/vent/bb;->cil:I

    sput v1, Lcom/vent/bb;->cim:I

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYi:Landroid/widget/SeekBar;

    sget v1, Lcom/vent/bb;->cil:I

    add-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/vent/ActSettingsAdvanced;->bYj:Landroid/widget/SeekBar;

    sget v1, Lcom/vent/bb;->cim:I

    add-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/vent/ActSettingsAdvanced;->Ch()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/vent/ActSettingsAdvanced;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DX()V

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DW()V

    const-string v0, "IAB restarted"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900e1 -> :sswitch_2
        0x7f09014b -> :sswitch_0
        0x7f0901a9 -> :sswitch_1
        0x7f090247 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f090247

    const v5, 0x7f0901a9

    const v4, 0x7f0901a8

    const v3, 0x7f09014b

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActSettingsAdvanced;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActSettingsAdvanced;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f0117

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->cib:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->cik:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f0900e2

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09023d

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v6}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActSettingsAdvanced;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 1

    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cia:Z

    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cib:Z

    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cij:Z

    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cid:Z

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cie:Z

    const v0, 0x7f0901a8

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cii:Z

    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/vent/ActSettingsAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cik:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    invoke-super {p0}, Lcom/vent/a;->onPause()V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/vent/ActSettingsAdvanced;->Ch()V

    return-void

    :sswitch_0
    add-int/lit16 v0, p2, -0xff

    sput v0, Lcom/vent/bb;->cil:I

    goto :goto_0

    :sswitch_1
    add-int/lit16 v0, p2, -0xff

    sput v0, Lcom/vent/bb;->cim:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900e0 -> :sswitch_0
        0x7f0900e6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/ax;->cfQ:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
