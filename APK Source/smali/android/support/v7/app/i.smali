.class Landroid/support/v7/app/i;
.super Landroid/support/v7/app/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/i$b;,
        Landroid/support/v7/app/i$a;
    }
.end annotation


# instance fields
.field private MT:I

.field private MU:Z

.field MV:Z

.field private MW:Landroid/support/v7/app/i$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V

    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/i;->MT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/i;->MV:Z

    return-void
.end method

.method private eA()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    if-nez v0, :cond_1

    new-instance v1, Landroid/support/v7/app/i$b;

    iget-object v0, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/app/p;->Ox:Landroid/support/v7/app/p;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/support/v7/app/p;

    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v3, v2, v0}, Landroid/support/v7/app/p;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v3, Landroid/support/v7/app/p;->Ox:Landroid/support/v7/app/p;

    :cond_0
    sget-object v0, Landroid/support/v7/app/p;->Ox:Landroid/support/v7/app/p;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/app/i$b;-><init>(Landroid/support/v7/app/i;Landroid/support/v7/app/p;)V

    iput-object v1, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    :cond_1
    return-void
.end method

.method private eB()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v7/app/i;->MU:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/i$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/i$a;-><init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method aR(I)I
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/i;->eA()V

    iget-object v0, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    iget-object v1, v0, Landroid/support/v7/app/i$b;->MY:Landroid/support/v7/app/p;

    invoke-virtual {v1}, Landroid/support/v7/app/p;->eI()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/app/i$b;->MZ:Z

    iget-boolean v0, v0, Landroid/support/v7/app/i$b;->MZ:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ew()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v7/app/i;->MT:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/support/v7/app/i;->MT:I

    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/app/i;->aR(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    iget-object v4, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    const/16 v0, 0x20

    :goto_1
    if-eq v6, v0, :cond_9

    invoke-direct {p0}, Landroid/support/v7/app/i;->eB()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    :goto_2
    move v0, v2

    :goto_3
    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/support/v7/app/i;->eA()V

    iget-object v1, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    invoke-virtual {v1}, Landroid/support/v7/app/i$b;->cleanup()V

    iget-object v3, v1, Landroid/support/v7/app/i$b;->Na:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    new-instance v3, Landroid/support/v7/app/i$b$1;

    invoke-direct {v3, v1}, Landroid/support/v7/app/i$b$1;-><init>(Landroid/support/v7/app/i$b;)V

    iput-object v3, v1, Landroid/support/v7/app/i$b;->Na:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v3, v1, Landroid/support/v7/app/i$b;->Nb:Landroid/content/IntentFilter;

    if-nez v3, :cond_2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v1, Landroid/support/v7/app/i$b;->Nb:Landroid/content/IntentFilter;

    iget-object v3, v1, Landroid/support/v7/app/i$b;->Nb:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/support/v7/app/i$b;->Nb:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/support/v7/app/i$b;->Nb:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v1, Landroid/support/v7/app/i$b;->MX:Landroid/support/v7/app/i;

    iget-object v3, v3, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/support/v7/app/i$b;->Na:Landroid/content/BroadcastReceiver;

    iget-object v1, v1, Landroid/support/v7/app/i$b;->Nb:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/app/i;->MU:Z

    return v0

    :cond_4
    sget v0, Landroid/support/v7/app/f;->Mz:I

    move v1, v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    goto :goto_1

    :cond_6
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v0, v6

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_7

    invoke-static {v4}, Landroid/support/v7/app/m;->c(Landroid/content/res/Resources;)Z

    goto :goto_2

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_8

    invoke-static {v4}, Landroid/support/v7/app/m;->b(Landroid/content/res/Resources;)Z

    goto :goto_2

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    invoke-static {v4}, Landroid/support/v7/app/m;->a(Landroid/content/res/Resources;)Z

    goto/16 :goto_2

    :cond_9
    move v0, v3

    goto/16 :goto_3

    :cond_a
    move v0, v3

    goto/16 :goto_3
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, -0x64

    invoke-super {p0, p1}, Landroid/support/v7/app/k;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/i;->MT:I

    if-ne v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/i;->MT:I

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/k;->onDestroy()V

    iget-object v0, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    invoke-virtual {v0}, Landroid/support/v7/app/i$b;->cleanup()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v7/app/i;->MT:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/i;->MT:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/k;->onStart()V

    invoke-virtual {p0}, Landroid/support/v7/app/i;->ew()Z

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/k;->onStop()V

    iget-object v0, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/i;->MW:Landroid/support/v7/app/i$b;

    invoke-virtual {v0}, Landroid/support/v7/app/i$b;->cleanup()V

    :cond_0
    return-void
.end method
