.class public final Lcom/vent/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/d/f$a;
    }
.end annotation


# static fields
.field private static final cnH:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/vent/a/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vent/d/f$1;

    invoke-direct {v0}, Lcom/vent/d/f$1;-><init>()V

    sput-object v0, Lcom/vent/d/f;->cnH:Ljava/util/Comparator;

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;IIILcom/vent/d/c$b;)V
    .locals 7

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, p4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v6

    new-instance v0, Lcom/vent/d/f$20;

    move v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/vent/d/f$20;-><init>(ILandroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Lcom/vent/d/c$b;)V

    invoke-virtual {v6, p5, v0}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Lcom/vent/a/i;Lcom/vent/d/c$b;)V
    .locals 7

    const v5, 0x7f0f00eb

    iget v0, p3, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 v3, 0x32

    const v4, 0x7f0f0081

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;IIILcom/vent/d/c$b;)V

    goto :goto_0

    :sswitch_1
    const/16 v3, 0x64

    const v4, 0x7f0f0080

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;IIILcom/vent/d/c$b;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Ljava/lang/Runnable;)V
    .locals 5

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0079

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00f5

    new-instance v2, Lcom/vent/d/f$19;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/vent/d/f$19;-><init>(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;)V
    .locals 1

    const v0, 0x7f0f00b9

    invoke-static {p0, p1, p2, v0}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;I)V
    .locals 5

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00ba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00b7

    new-instance v2, Lcom/vent/d/f$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$16;-><init>(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;Ljava/lang/Runnable;)V
    .locals 5

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0046

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0045

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0042

    new-instance v2, Lcom/vent/d/f$18;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$18;-><init>(Landroid/app/Activity;Lcom/vent/a/k;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V
    .locals 5

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f009c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0099

    new-instance v2, Lcom/vent/d/f$14;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/vent/d/f$14;-><init>(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/m;)V
    .locals 7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActMain;->bWN:Z

    sget v0, Lcom/vent/bb;->ciF:I

    if-lez v0, :cond_0

    sget v0, Lcom/vent/bb;->ciF:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vent/bb;->setUnreadCount(I)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    invoke-static {p0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    if-eqz p0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/vent/ActMain;

    const/4 v1, 0x3

    sget v2, Lcom/vent/bb;->ciF:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/ActMain;->aG(II)V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ids"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/vent/ad;

    const/4 v1, 0x0

    const-string v3, "api/v1/my/notifications/mark_read.json"

    const-string v4, "PUT"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/m;Lcom/vent/a/d;Ljava/lang/Runnable;I)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/vent/d/f$9;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/vent/d/f$9;-><init>(Landroid/app/Activity;Lcom/vent/a/m;Lcom/vent/a/d;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/m;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/vent/d/f$10;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/my/listen_requests/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/accept"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vent/d/f$10;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0124

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00a3

    new-instance v2, Lcom/vent/d/f$23;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$23;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/d;Lcom/vent/a/k;Lcom/vent/a/z;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/groups/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-static {p0, p2, p3, v0, v1}, Lcom/vent/d/f;->a(Landroid/support/v7/app/d;Lcom/vent/a/z;Ljava/lang/Runnable;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/d;Lcom/vent/a/z;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/my/vents/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-static {p0, p1, p2, v0, v1}, Lcom/vent/d/f;->a(Landroid/support/v7/app/d;Lcom/vent/a/z;Ljava/lang/Runnable;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Landroid/support/v7/app/d;Lcom/vent/a/z;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/vent/d/f$12;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/vent/d/f$12;-><init>(Landroid/support/v7/app/d;Ljava/lang/String;Ljava/lang/Runnable;Lcom/vent/a/z;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vent/a/x;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f013a

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Lcom/vent/d/f$7;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/comments/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/favourites.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/d/f$7;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/z;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, p1, p2}, Lcom/vent/ActReport1;->a(Landroid/app/Activity;ILcom/vent/a/x;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/z;Lcom/vent/a/m;)Z
    .locals 3

    iget-object v0, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f013a

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/vent/d/f$21;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/interactions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/vent/d/f$21;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Lcom/vent/a/i;Lcom/vent/d/c$b;)V
    .locals 7

    iget v0, p3, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v0, v0, 0x18

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x0

    const v4, 0x7f0f007b

    const v5, 0x7f0f0048

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;IIILcom/vent/d/c$b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;)V
    .locals 5

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0152

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0151

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f014f

    new-instance v2, Lcom/vent/d/f$17;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$17;-><init>(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V
    .locals 5

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00a1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00a0

    new-instance v2, Lcom/vent/d/f$15;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/vent/d/f$15;-><init>(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/m;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/vent/d/f$11;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/my/listen_requests/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DELETE"

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vent/d/f$11;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/x;)V
    .locals 2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/vent/ActReport1;->a(Landroid/app/Activity;ILcom/vent/a/x;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 5

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0126

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0136

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0125

    new-instance v2, Lcom/vent/d/f$24;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$24;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static b(Lcom/vent/a/z;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    sget-object v1, Lcom/vent/d/f;->cnH:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/k;)Z
    .locals 2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/vent/ActReport1;->a(Landroid/app/Activity;ILcom/vent/a/x;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vent/a/x;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f013a

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Lcom/vent/d/f$8;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/comments/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/favourites.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DELETE"

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/d/f$8;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/vent/a/z;Lcom/vent/a/m;)Z
    .locals 3

    iget-object v0, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f013a

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/vent/d/f$22;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/interactions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DELETE"

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/d/f$22;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 7

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "user_id"

    iget-object v2, p1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "listen_request"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/vent/d/f$25;

    const-string v2, "api/v1/my/listen_requests"

    const-string v3, "POST"

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/vent/d/f$25;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Lcom/vent/d/f$a;Lcom/vent/a/x;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/d;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, p1, p2}, Lcom/vent/ActReport1;->a(Landroid/app/Activity;ILcom/vent/a/x;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 6

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Lcom/vent/d/f$26;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/my/listen_requests/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cancel.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DELETE"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vent/d/f$26;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/vent/d/f$a;Lcom/vent/a/x;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f001a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0019

    new-instance v2, Lcom/vent/d/f$27;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$27;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static f(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/vent/d/f$2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/users/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/unblock.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DELETE"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vent/d/f$2;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/vent/d/f$a;Lcom/vent/a/x;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static g(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 5

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0127

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0128

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0033

    new-instance v2, Lcom/vent/d/f$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$3;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static h(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 5

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0155

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0156

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0033

    new-instance v2, Lcom/vent/d/f$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$4;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static i(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00bc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00bb

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f00b7

    new-instance v2, Lcom/vent/d/f$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$5;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static j(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0154

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0153

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f014f

    new-instance v2, Lcom/vent/d/f$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/vent/d/f$6;-><init>(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0
.end method

.method public static v(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f014a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f005b

    new-instance v2, Lcom/vent/d/f$13;

    invoke-direct {v2, p0}, Lcom/vent/d/f$13;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    return-void
.end method

.method public static z(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vent/a/z;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v2, v0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    sget-object v2, Lcom/vent/d/f;->cnH:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    return-void
.end method
