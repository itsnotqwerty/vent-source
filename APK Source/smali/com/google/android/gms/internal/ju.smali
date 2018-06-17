.class public final Lcom/google/android/gms/internal/ju;
.super Lcom/google/android/gms/internal/iy;


# instance fields
.field aWA:Lcom/google/android/gms/internal/gt;

.field volatile aWB:Ljava/lang/Boolean;

.field private final aWC:Lcom/google/android/gms/internal/gh;

.field private final aWD:Lcom/google/android/gms/internal/ky;

.field private final aWE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final aWF:Lcom/google/android/gms/internal/gh;

.field final aWz:Lcom/google/android/gms/internal/ki;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWE:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ky;

    iget-object v1, p1, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ky;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWD:Lcom/google/android/gms/internal/ky;

    new-instance v0, Lcom/google/android/gms/internal/ki;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/ju;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWz:Lcom/google/android/gms/internal/ki;

    new-instance v0, Lcom/google/android/gms/internal/jv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/jv;-><init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWC:Lcom/google/android/gms/internal/gh;

    new-instance v0, Lcom/google/android/gms/internal/ka;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ka;-><init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWF:Lcom/google/android/gms/internal/gh;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ju;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->disconnect()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ju;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->py()V

    :cond_0
    return-void
.end method

.method private final az(Z)Lcom/google/android/gms/internal/fx;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb;->rJ()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gw;->cg(Ljava/lang/String;)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final k(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWF:Lcom/google/android/gms/internal/gh;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gh;->n(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->py()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/gt;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->po()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->sn()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/dr;Lcom/google/android/gms/internal/fx;)V
    .locals 10

    const/16 v6, 0x64

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    move v5, v3

    move v4, v6

    :goto_0
    const/16 v0, 0x3e9

    if-ge v5, v0, :cond_5

    if-ne v4, v6, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gx;->rG()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v4, v1

    :goto_1
    if-eqz p2, :cond_0

    if-ge v4, v6, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/dr;

    instance-of v8, v1, Lcom/google/android/gms/internal/gp;

    if-eqz v8, :cond_1

    :try_start_0
    check-cast v1, Lcom/google/android/gms/internal/gp;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/internal/gt;->a(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of v8, v1, Lcom/google/android/gms/internal/lb;

    if-eqz v8, :cond_2

    :try_start_1
    check-cast v1, Lcom/google/android/gms/internal/lb;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/internal/gt;->a(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v9, "Failed to send attribute to the service"

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v8, v1, Lcom/google/android/gms/internal/ga;

    if-eqz v8, :cond_3

    :try_start_2
    check-cast v1, Lcom/google/android/gms/internal/ga;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/internal/gt;->a(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v9, "Failed to send conditional property to the service"

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    move v4, v3

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/jp;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    new-instance v0, Lcom/google/android/gms/internal/jz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/jz;-><init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/jp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/lb;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/lb;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "User property too long for local database. Sending directly to service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/kg;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/internal/kg;-><init>(Lcom/google/android/gms/internal/ju;ZLcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/gx;->a(I[B)Z

    move-result v2

    goto :goto_0
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ke;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ke;-><init>(Lcom/google/android/gms/internal/ju;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lb;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/kf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kf;-><init>(Lcom/google/android/gms/internal/ju;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lb;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/kh;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/kh;-><init>(Lcom/google/android/gms/internal/ju;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/fx;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/jx;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/jx;-><init>(Lcom/google/android/gms/internal/ju;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final c(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gp;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    move v2, v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/kc;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kc;-><init>(Lcom/google/android/gms/internal/ju;ZLcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/gx;->a(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->oz()Lcom/google/android/gms/common/stats/a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->aWz:Lcom/google/android/gms/internal/ki;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final e(Lcom/google/android/gms/internal/ga;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    invoke-static {p1}, Lcom/google/android/gms/internal/le;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    array-length v4, v3

    const/high16 v5, 0x20000

    if-le v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    move v2, v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ga;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ga;-><init>(Lcom/google/android/gms/internal/ga;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/kd;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kd;-><init>(Lcom/google/android/gms/internal/ju;ZLcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/ga;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/gx;->a(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic mN()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->mN()V

    return-void
.end method

.method final po()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWD:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ky;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->aWC:Lcom/google/android/gms/internal/gh;

    sget-object v0, Lcom/google/android/gms/internal/gr;->aSK:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gh;->n(J)V

    return-void
.end method

.method final py()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWB:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->rN()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->aWB:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->aWz:Lcom/google/android/gms/internal/ki;

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ki;->aWN:Z

    if-eqz v2, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Connection attempt already in progress"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->rF()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    move v3, v2

    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/hl;->aw(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/m;->oN()Lcom/google/android/gms/common/m;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/m;->w(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v4, "Unexpected service status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    move v3, v1

    goto :goto_2

    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v0, v2

    move v3, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v0, v1

    move v3, v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v0, v2

    move v3, v2

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const-wide/16 v4, 0x2fb3

    const-wide/16 v6, 0x2e18

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move v0, v1

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->rN()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    :goto_3
    move v3, v1

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :sswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v0, v1

    move v3, v1

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move v0, v1

    move v3, v1

    goto/16 :goto_2

    :cond_8
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ki;->aWO:Lcom/google/android/gms/internal/ha;

    if-eqz v2, :cond_9

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Already awaiting connection attempt"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/ha;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1, v1}, Lcom/google/android/gms/internal/ha;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ki;->aWO:Lcom/google/android/gms/internal/ha;

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Connecting to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ki;->aWN:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWO:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->on()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    :goto_4
    if-eqz v2, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->aWz:Lcom/google/android/gms/internal/ki;

    iget-object v2, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->oz()Lcom/google/android/gms/common/stats/a;

    monitor-enter v1

    :try_start_2
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ki;->aWN:Z

    if-eqz v3, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Connection attempt already in progress"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Using local app measurement service"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ki;->aWN:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v3, v3, Lcom/google/android/gms/internal/ju;->aWz:Lcom/google/android/gms/internal/ki;

    const/16 v4, 0x81

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/stats/a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
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

.method protected final resetAnalyticsData()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "messages"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/jw;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/jw;-><init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Error resetting local analytics data. error"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final ri()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final sl()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/kb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/kb;-><init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final sm()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ju;->az(Z)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/jy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/jy;-><init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/fx;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ju;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method final sn()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/ju;->aWE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->aWF:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->cancel()V

    return-void
.end method
