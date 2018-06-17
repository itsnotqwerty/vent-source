.class public final Lcom/google/android/gms/internal/kz;
.super Lcom/google/android/gms/internal/iy;


# instance fields
.field private aNM:Ljava/lang/Integer;

.field private final aXe:Landroid/app/AlarmManager;

.field private final aXf:Lcom/google/android/gms/internal/gh;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->aXe:Landroid/app/AlarmManager;

    new-instance v0, Lcom/google/android/gms/internal/la;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/la;-><init>(Lcom/google/android/gms/internal/kz;Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->aXf:Lcom/google/android/gms/internal/gh;

    return-void
.end method

.method private final getJobId()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aNM:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v1, "measurement"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->aNM:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aNM:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final qa()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private final sp()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Cancelling job. JobID"

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aXe:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->qa()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aXf:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->cancel()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->sp()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mN()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->mN()V

    return-void
.end method

.method public final n(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Receiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ko;->aj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kz;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, p1

    const-wide/16 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/gr;->aSB:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aXf:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->pW()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Scheduling upload with DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aXf:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gh;->n(J)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Scheduling upload with JobScheduler"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->getJobId()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x1

    shl-long v4, p1, v1

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v3, "action"

    const-string v4, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Scheduling job. JobID"

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Scheduling upload with AlarmManager"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aXe:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    sget-object v4, Lcom/google/android/gms/internal/gr;->aSw:Lcom/google/android/gms/internal/gs;

    iget-object v4, v4, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->qa()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final bridge synthetic qA()Lcom/google/android/gms/internal/fs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qA()Lcom/google/android/gms/internal/fs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qB()Lcom/google/android/gms/internal/fz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qB()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qC()Lcom/google/android/gms/internal/ja;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qD()Lcom/google/android/gms/internal/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qE()Lcom/google/android/gms/internal/gj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qF()Lcom/google/android/gms/internal/ju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qG()Lcom/google/android/gms/internal/jq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qH()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qI()Lcom/google/android/gms/internal/gx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qJ()Lcom/google/android/gms/internal/gd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qK()Lcom/google/android/gms/internal/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qL()Lcom/google/android/gms/internal/le;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qM()Lcom/google/android/gms/internal/ht;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qN()Lcom/google/android/gms/internal/kt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qN()Lcom/google/android/gms/internal/kt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qO()Lcom/google/android/gms/internal/hu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qP()Lcom/google/android/gms/internal/hb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qQ()Lcom/google/android/gms/internal/hl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qR()Lcom/google/android/gms/internal/gc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qy()V

    return-void
.end method

.method public final bridge synthetic qz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qz()V

    return-void
.end method

.method protected final ri()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->aXe:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->qa()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kz;->sp()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
