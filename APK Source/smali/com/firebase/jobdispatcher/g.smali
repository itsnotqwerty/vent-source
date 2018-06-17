.class public final Lcom/firebase/jobdispatcher/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/c;


# instance fields
.field private final axq:Lcom/firebase/jobdispatcher/v;

.field private final axr:Landroid/app/PendingIntent;

.field private final axs:Lcom/firebase/jobdispatcher/i;

.field private final axt:Z

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/g;->axt:Z

    iput-object p1, p0, Lcom/firebase/jobdispatcher/g;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/g;->axr:Landroid/app/PendingIntent;

    new-instance v0, Lcom/firebase/jobdispatcher/i;

    invoke-direct {v0}, Lcom/firebase/jobdispatcher/i;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/g;->axs:Lcom/firebase/jobdispatcher/i;

    new-instance v0, Lcom/firebase/jobdispatcher/b;

    invoke-direct {v0, p1}, Lcom/firebase/jobdispatcher/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/g;->axq:Lcom/firebase/jobdispatcher/v;

    return-void
.end method

.method private aL(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scheduler_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app"

    iget-object v2, p0, Lcom/firebase/jobdispatcher/g;->axr:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "source"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "source_version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/firebase/jobdispatcher/n;)I
    .locals 14

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b(Lcom/firebase/jobdispatcher/n;)V

    iget-object v6, p0, Lcom/firebase/jobdispatcher/g;->context:Landroid/content/Context;

    const-string v0, "SCHEDULE_TASK"

    invoke-direct {p0, v0}, Lcom/firebase/jobdispatcher/g;->aL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/firebase/jobdispatcher/g;->axs:Lcom/firebase/jobdispatcher/i;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v0, "tag"

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update_current"

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kN()Z

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kP()I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v2

    :goto_0
    const-string v1, "persisted"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "service"

    const-class v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kO()Lcom/firebase/jobdispatcher/u;

    move-result-object v0

    sget-object v1, Lcom/firebase/jobdispatcher/z;->ayi:Lcom/firebase/jobdispatcher/u$c;

    if-ne v0, v1, :cond_3

    const-string v0, "trigger_type"

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "window_start"

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "window_end"

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_1
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kL()[I

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/jobdispatcher/a;->g([I)I

    move-result v1

    const-string v5, "requiresCharging"

    and-int/lit8 v0, v1, 0x4

    const/4 v10, 0x4

    if-ne v0, v10, :cond_8

    move v0, v2

    :goto_2
    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "requiresIdle"

    and-int/lit8 v0, v1, 0x8

    const/16 v10, 0x8

    if-ne v0, v10, :cond_9

    move v0, v2

    :goto_3
    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "requiredNetwork"

    and-int/lit8 v0, v1, 0x2

    if-ne v0, v4, :cond_a

    move v0, v3

    :goto_4
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kM()Lcom/firebase/jobdispatcher/x;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "retry_policy"

    iget v5, v0, Lcom/firebase/jobdispatcher/x;->ayd:I

    packed-switch v5, :pswitch_data_0

    move v2, v3

    :pswitch_0
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "initial_backoff_seconds"

    iget v4, v0, Lcom/firebase/jobdispatcher/x;->aye:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "maximum_backoff_seconds"

    iget v0, v0, Lcom/firebase/jobdispatcher/x;->ayf:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "retryStrategy"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v1, "extras"

    iget-object v2, v8, Lcom/firebase/jobdispatcher/i;->axv:Lcom/firebase/jobdispatcher/p;

    invoke-virtual {v2, p1, v0}, Lcom/firebase/jobdispatcher/p;->a(Lcom/firebase/jobdispatcher/r;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v3

    :cond_2
    move v0, v3

    goto/16 :goto_0

    :cond_3
    instance-of v1, v0, Lcom/firebase/jobdispatcher/u$b;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/firebase/jobdispatcher/u$b;

    const-string v1, "trigger_type"

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kQ()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "period"

    iget v5, v0, Lcom/firebase/jobdispatcher/u$b;->aya:I

    int-to-long v10, v5

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "period_flex"

    iget v5, v0, Lcom/firebase/jobdispatcher/u$b;->aya:I

    iget v0, v0, Lcom/firebase/jobdispatcher/u$b;->axZ:I

    sub-int v0, v5, v0

    int-to-long v10, v0

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "window_start"

    iget v5, v0, Lcom/firebase/jobdispatcher/u$b;->axZ:I

    int-to-long v10, v5

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "window_end"

    iget v0, v0, Lcom/firebase/jobdispatcher/u$b;->aya:I

    int-to-long v10, v0

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_5
    instance-of v1, v0, Lcom/firebase/jobdispatcher/u$a;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/firebase/jobdispatcher/u$a;

    const-string v1, "trigger_type"

    const/4 v5, 0x3

    invoke-virtual {v9, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/firebase/jobdispatcher/u$a;->axY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    new-array v11, v10, [I

    new-array v12, v10, [Landroid/net/Uri;

    move v5, v3

    :goto_5
    if-ge v5, v10, :cond_6

    iget-object v1, v0, Lcom/firebase/jobdispatcher/u$a;->axY:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/jobdispatcher/w;

    iget v13, v1, Lcom/firebase/jobdispatcher/w;->flags:I

    aput v13, v11, v5

    iget-object v1, v1, Lcom/firebase/jobdispatcher/w;->uri:Landroid/net/Uri;

    aput-object v1, v12, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_5

    :cond_6
    const-string v0, "content_uri_flags_array"

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "content_uri_array"

    invoke-virtual {v9, v0, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown trigger: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    move v0, v3

    goto/16 :goto_3

    :cond_a
    move v0, v4

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final aK(Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/firebase/jobdispatcher/g;->context:Landroid/content/Context;

    const-string v1, "CANCEL_TASK"

    invoke-direct {p0, v1}, Lcom/firebase/jobdispatcher/g;->aL(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "component"

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/firebase/jobdispatcher/g;->context:Landroid/content/Context;

    const-class v5, Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final kD()Lcom/firebase/jobdispatcher/v;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/g;->axq:Lcom/firebase/jobdispatcher/v;

    return-object v0
.end method
