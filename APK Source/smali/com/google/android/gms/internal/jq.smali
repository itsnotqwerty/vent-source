.class public final Lcom/google/android/gms/internal/jq;
.super Lcom/google/android/gms/internal/iy;


# instance fields
.field protected aWk:Lcom/google/android/gms/internal/jt;

.field public volatile aWl:Lcom/google/android/gms/internal/jp;

.field aWm:Lcom/google/android/gms/internal/jp;

.field aWn:J

.field public final aWo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/jt;",
            ">;"
        }
    .end annotation
.end field

.field public final aWp:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$f;",
            ">;"
        }
    .end annotation
.end field

.field public aWq:Z

.field private aWr:Lcom/google/android/gms/internal/jp;

.field private aWs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jq;->aWo:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jq;->aWp:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/jp;Landroid/os/Bundle;Z)V
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "_sn"

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "_sc"

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_si"

    iget-wide v2, p0, Lcom/google/android/gms/internal/jp;->aWj:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "_sn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "_sn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "_si"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jq;Lcom/google/android/gms/internal/jt;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qA()Lcom/google/android/gms/internal/fs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/fs;->p(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qN()Lcom/google/android/gms/internal/kt;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/jt;->aWy:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kt;->aA(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/jt;->aWy:Z

    :cond_0
    return-void
.end method

.method public static cv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x64

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/google/android/gms/internal/jt;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/jp;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/jp;-><init>(Lcom/google/android/gms/internal/jp;)V

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/jq;->aWq:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWp:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move v1, v0

    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurement$f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/AppMeasurement$f;->uf()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    and-int/2addr v1, v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/jq;->aWm:Lcom/google/android/gms/internal/jp;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/jq;->aWn:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWm:Lcom/google/android/gms/internal/jp;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v4, "onScreenChangeCallback threw exception"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    move v0, v1

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/jq;->aWq:Z

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWm:Lcom/google/android/gms/internal/jp;

    :goto_4
    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/jt;->aWi:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jq;->cv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/jt;->aWi:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/android/gms/internal/jt;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    iput-object v2, p0, Lcom/google/android/gms/internal/jq;->aWm:Lcom/google/android/gms/internal/jp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/jq;->aWn:J

    iput-object v0, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/jr;

    invoke-direct {v3, p0, p3, v1, v0}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jq;ZLcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/jt;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    iput-boolean v6, p0, Lcom/google/android/gms/internal/jq;->aWq:Z

    move v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/google/android/gms/internal/jq;->aWq:Z

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/jp;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jq;->aWs:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jq;->aWs:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/jq;->aWs:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/jq;->aWr:Lcom/google/android/gms/internal/jp;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final i(Landroid/app/Activity;)Lcom/google/android/gms/internal/jt;
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/jq;->aWo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jt;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jq;->cv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/jt;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/le;->sq()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/jt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWo:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic mN()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->mN()V

    return-void
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final sj()Lcom/google/android/gms/internal/jt;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jq;->aWk:Lcom/google/android/gms/internal/jt;

    return-object v0
.end method

.method public final sk()Lcom/google/android/gms/internal/jp;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/jp;-><init>(Lcom/google/android/gms/internal/jp;)V

    goto :goto_0
.end method
