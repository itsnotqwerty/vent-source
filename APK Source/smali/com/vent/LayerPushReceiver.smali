.class public final Lcom/vent/LayerPushReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vent/ActMain;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/vent/ActMain;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "cmd"

    const-string v4, "layer"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0}, Lcom/vent/MyApplication;->bt(Landroid/content/Context;)V

    new-instance v2, Landroid/support/v4/app/aa$c;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/app/aa$c;-><init>(Landroid/content/Context;B)V

    const v3, 0x7f08011f

    invoke-virtual {v2, v3}, Landroid/support/v4/app/aa$c;->ad(I)Landroid/support/v4/app/aa$c;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b8

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/aa$c;->zA:Landroid/graphics/Bitmap;

    const v3, 0x7f0f01af

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/aa$c;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v2

    invoke-static {p1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vent/d/e;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/aa$c;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/aa$c;->cZ()Landroid/support/v4/app/aa$c;

    move-result-object v2

    iput-object v0, v2, Landroid/support/v4/app/aa$c;->zx:Landroid/app/PendingIntent;

    iput v1, v2, Landroid/support/v4/app/aa$c;->gS:I

    const-string v0, "msg"

    iput-object v0, v2, Landroid/support/v4/app/aa$c;->zS:Ljava/lang/String;

    new-instance v0, Landroid/support/v4/app/aa$g;

    invoke-direct {v0}, Landroid/support/v4/app/aa$g;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08013e

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/aa$g;->Am:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/aa$c;->a(Landroid/support/v4/app/aa$d;)Landroid/support/v4/app/aa$c;

    move-result-object v2

    sget v0, Lcom/vent/bb;->ciF:I

    sget v3, Lcom/vent/bb;->ciG:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/support/v4/app/aa$c;->zC:I

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vent/bb;->eH(I)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_3

    sget-object v0, Lcom/vent/MyApplication;->cgE:Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/aa$c;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    iput v1, v2, Landroid/support/v4/app/aa$c;->zD:I

    sget-boolean v0, Lcom/vent/bb;->chY:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/v4/app/aa$c;->ae(I)Landroid/support/v4/app/aa$c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0x12c

    const/16 v5, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/aa$c;->c(III)Landroid/support/v4/app/aa$c;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/aa$c;->a([J)Landroid/support/v4/app/aa$c;

    sget-boolean v0, Lcom/vent/bb;->chV:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2131623936"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/aa$c;->e(Landroid/net/Uri;)Landroid/support/v4/app/aa$c;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/MyApplication;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "Android is buggy (3)"

    invoke-static {v0, v1}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DY()Lcom/vent/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vent/ba;->El()V

    new-instance v1, Lcom/vent/LayerPushReceiver$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/vent/LayerPushReceiver$1;-><init>(Lcom/vent/LayerPushReceiver;Lcom/vent/ba;Landroid/content/Context;)V

    invoke-static {v1, p2}, Lcom/vent/d/c;->a(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method
