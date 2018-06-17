.class public final Lcom/vent/ActSettings;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final bXR:[Ljava/lang/String;

.field private static final bXS:[J

.field private static final bXT:[Ljava/lang/String;

.field static final bXU:[I

.field private static final bXV:[Ljava/lang/String;

.field private static final bXW:[I

.field private static final bXX:[Ljava/lang/String;

.field private static final bXY:[I

.field private static final bYc:[Ljava/lang/String;


# instance fields
.field bXZ:Z

.field private bYa:Z

.field private final bYb:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xc

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "1 second"

    aput-object v1, v0, v4

    const-string v1, "2 seconds"

    aput-object v1, v0, v5

    const-string v1, "3 seconds"

    aput-object v1, v0, v3

    const-string v1, "5 seconds"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "10 seconds"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "15 seconds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "30 seconds"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1 minute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "2 minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3 minutes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "5 minutes"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "10 minutes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vent/ActSettings;->bXR:[Ljava/lang/String;

    new-array v0, v7, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vent/ActSettings;->bXS:[J

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Auto"

    aput-object v1, v0, v4

    const-string v1, "On"

    aput-object v1, v0, v5

    const-string v1, "Off"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vent/ActSettings;->bXT:[Ljava/lang/String;

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vent/ActSettings;->bXU:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Normal"

    aput-object v1, v0, v4

    const-string v1, "System"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vent/ActSettings;->bXV:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vent/ActSettings;->bXW:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Off"

    aput-object v1, v0, v4

    const-string v1, "On"

    aput-object v1, v0, v5

    const-string v1, "Emotions"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vent/ActSettings;->bXX:[Ljava/lang/String;

    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/vent/ActSettings;->bXY:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vent/ActSettings;->bYc:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0x7d0
        0xbb8
        0x1388
        0x2710
        0x3a98
        0x7530
        0xea60
        0x1d4c0
        0x2bf20
        0x493e0
        0x927c0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/vent/ActSettings;->bYb:[Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;)V
    .locals 3

    const/16 v2, 0x1c

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private er(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActSettings;->bYb:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->ep(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final aR(Z)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/vent/bb;->chT:Z

    sget v4, Lcom/vent/bb;->cif:I

    sget-boolean v5, Lcom/vent/bb;->ciz:Z

    const v0, 0x7f0902d2

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->chT:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v0, v6, :cond_0

    const v0, 0x7f090283

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/vent/bb;->chU:Z

    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/vent/bb;->chV:Z

    const v0, 0x7f090285

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/vent/bb;->chW:Z

    const v0, 0x7f0902de

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->chX:Z

    const v0, 0x7f0902df

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->chY:Z

    :cond_0
    const v0, 0x7f0901f2

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->chZ:Z

    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->cic:Z

    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/bb;->pin:Ljava/lang/String;

    sget-object v6, Lcom/vent/ActSettings;->bXS:[J

    const v0, 0x7f090224

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    long-to-int v0, v8

    aget-wide v6, v6, v0

    sput-wide v6, Lcom/vent/bb;->cih:J

    sget-object v6, Lcom/vent/ActSettings;->bXU:[I

    const v0, 0x7f0901ee

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    long-to-int v0, v8

    aget v0, v6, v0

    sput v0, Lcom/vent/bb;->civ:I

    sget-object v6, Lcom/vent/ActSettings;->bXW:[I

    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    long-to-int v0, v8

    aget v0, v6, v0

    sput v0, Lcom/vent/bb;->ciw:I

    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/vent/bb;->ciz:Z

    sget-object v6, Lcom/vent/ActSettings;->bXY:[I

    const v0, 0x7f090201

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    long-to-int v0, v8

    aget v0, v6, v0

    sput v0, Lcom/vent/bb;->cif:I

    invoke-static {}, Lcom/vent/bb;->EB()V

    sget v0, Lcom/vent/bb;->cif:I

    if-ne v4, v0, :cond_1

    sget-boolean v0, Lcom/vent/bb;->chT:Z

    if-eq v3, v0, :cond_2

    :cond_1
    sput-boolean v2, Lcom/vent/d/e;->cnh:Z

    sput v2, Lcom/vent/d/e;->cnj:I

    invoke-static {p0}, Lcom/vent/d/e;->bM(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/vent/d/e;->u(Landroid/app/Activity;)V

    iput-boolean v1, p0, Lcom/vent/ActSettings;->bYa:Z

    sput-wide v10, Lcom/vent/bb;->ciS:J

    :cond_2
    sget-boolean v0, Lcom/vent/bb;->ciz:Z

    if-ne v5, v0, :cond_3

    sget v0, Lcom/vent/bb;->cif:I

    if-eq v4, v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/vent/bb;->Eu()V

    iput-boolean v1, p0, Lcom/vent/ActSettings;->bYa:Z

    sput-wide v10, Lcom/vent/bb;->ciS:J

    :cond_4
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    sget v3, Lcom/vent/bb;->civ:I

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v4

    if-eq v3, v4, :cond_5

    iput-boolean v2, p0, Lcom/vent/ActSettings;->bYa:Z

    :cond_5
    sget v2, Lcom/vent/bb;->civ:I

    invoke-static {v2}, Landroid/support/v7/app/f;->aO(I)V

    sget v2, Lcom/vent/bb;->civ:I

    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/MyApplication;->cgD:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "dorecreate"

    iget-boolean v3, p0, Lcom/vent/ActSettings;->bYa:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "backLongPress"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/vent/ActSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActSettings;->finish()V

    return v1

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method final ep(I)V
    .locals 3

    sget-object v0, Lcom/vent/ActSettings;->bYc:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActSettings;->bYb:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    invoke-direct {p0, p1}, Lcom/vent/ActSettings;->er(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/ActSettings;->bYc:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0270

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/vent/ActSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/vent/ActSettings$2;-><init>(Lcom/vent/ActSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/vent/ActSettings;->eq(I)V

    goto :goto_0
.end method

.method final eq(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/vent/ActSettings;->bYc:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/vent/ActSettingsAdvanced;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Lcom/vent/ActSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package"

    invoke-virtual {p0}, Lcom/vent/ActSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    invoke-virtual {p0}, Lcom/vent/ActSettings;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vent/ActSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0901fa -> :sswitch_1
        0x7f090278 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v5, 0x7f0901fa

    const/16 v4, 0x8

    const/4 v2, 0x1

    const v10, 0x7f0b00ed

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActSettings;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActSettings;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f0116

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    if-eqz p1, :cond_0

    const-string v0, "dorecreate"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/ActSettings;->bYa:Z

    :cond_0
    const v0, 0x7f0902d2

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chT:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    const v0, 0x7f090283

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chU:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chV:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f090285

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chW:Z

    if-nez v1, :cond_6

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f0902de

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chX:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f0902df

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chY:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0, v5}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0901f2

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->chZ:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->cic:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    sget-boolean v1, Lcom/vent/bb;->ciz:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v0, Lcom/vent/bb;->chS:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090221

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/vent/bb;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    sget-object v1, Lcom/vent/bb;->pin:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vent/bb;->pin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/vent/bb;->pin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_2
    const v0, 0x7f090224

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/vent/ActSettings;->bXR:[Ljava/lang/String;

    invoke-direct {v1, p0, v10, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-wide v4, 0x7fffffffffffffffL

    move v1, v3

    move v2, v3

    :goto_5
    sget-object v6, Lcom/vent/ActSettings;->bXS:[J

    array-length v6, v6

    if-ge v1, v6, :cond_9

    sget-object v6, Lcom/vent/ActSettings;->bXS:[J

    aget-wide v6, v6, v1

    sget-wide v8, Lcom/vent/bb;->cih:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_3

    move-wide v4, v6

    move v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto/16 :goto_1

    :cond_6
    move v2, v3

    goto/16 :goto_2

    :cond_7
    const v0, 0x7f0901f9

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_8
    move v0, v4

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f0901ee

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/vent/ActSettings;->bXT:[Ljava/lang/String;

    invoke-direct {v1, p0, v10, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v3

    :goto_6
    sget-object v2, Lcom/vent/ActSettings;->bXU:[I

    array-length v2, v2

    if-ge v1, v2, :cond_f

    sget-object v2, Lcom/vent/ActSettings;->bXU:[I

    aget v2, v2, v1

    sget v4, Lcom/vent/bb;->civ:I

    if-ne v2, v4, :cond_a

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Lcom/vent/ActSettings$1;

    invoke-direct {v1, p0}, Lcom/vent/ActSettings$1;-><init>(Lcom/vent/ActSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/vent/ActSettings;->bXV:[Ljava/lang/String;

    invoke-direct {v1, p0, v10, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v3

    :goto_8
    sget-object v2, Lcom/vent/ActSettings;->bXW:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    sget-object v2, Lcom/vent/ActSettings;->bXW:[I

    aget v2, v2, v1

    sget v4, Lcom/vent/bb;->ciw:I

    if-ne v2, v4, :cond_b

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f090201

    invoke-virtual {p0, v0}, Lcom/vent/ActSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/vent/ActSettings;->bXX:[Ljava/lang/String;

    invoke-direct {v1, p0, v10, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v3

    :goto_a
    sget-object v2, Lcom/vent/ActSettings;->bXY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_d

    sget-object v2, Lcom/vent/ActSettings;->bXY:[I

    aget v2, v2, v1

    sget v4, Lcom/vent/bb;->cif:I

    if-ne v2, v4, :cond_c

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_d
    move v1, v3

    goto :goto_b

    :cond_e
    move v1, v3

    goto :goto_9

    :cond_f
    move v1, v3

    goto :goto_7
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActSettings;->bYb:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActSettings;->bYb:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/vent/ActSettings;->er(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActSettings;->bYb:[Z

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "Settings"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "dorecreate"

    iget-boolean v1, p0, Lcom/vent/ActSettings;->bYa:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
