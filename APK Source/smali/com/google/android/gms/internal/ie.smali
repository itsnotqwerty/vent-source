.class public final Lcom/google/android/gms/internal/ie;
.super Lcom/google/android/gms/internal/gu;


# instance fields
.field private aVE:Ljava/lang/Boolean;

.field private aVF:Ljava/lang/String;

.field private final zzjev:Lcom/google/android/gms/internal/hz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ie;-><init>(Lcom/google/android/gms/internal/hz;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/hz;B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->aVF:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    return-object v0
.end method

.method private final f(Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Measurement Service called without app package"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Measurement Service called without app package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ie;->aVE:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const-string v2, "com.google.android.gms"

    iget-object v3, p0, Lcom/google/android/gms/internal/ie;->aVF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v2, v2, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/q;->s(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v2, v2, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/z;->Q(Landroid/content/Context;)Lcom/google/android/gms/common/z;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/z;->cP(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->aVE:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->aVE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->aVF:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/common/y;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ie;->aVF:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->aVF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unknown calling package name \'%s\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Measurement Service called with invalid calling package. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_6
    return-void
.end method

.method private final g(Lcom/google/android/gms/internal/fx;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/le;->cB(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/fx;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fx;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lb;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/iu;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ld;

    if-nez p2, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cD(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/lb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/lb;-><init>(Lcom/google/android/gms/internal/ld;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get user attributes. appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/fx;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/fx;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/im;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/im;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get conditional user properties"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fx;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/fx;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lb;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ik;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ld;

    if-nez p3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cD(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/lb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/lb;-><init>(Lcom/google/android/gms/internal/ld;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get user attributes. appId"

    iget-object v3, p4, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iw;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/iw;-><init>(Lcom/google/android/gms/internal/ie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/fx;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    new-instance v0, Lcom/google/android/gms/internal/iv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/iv;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hu;->rR()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    new-instance v0, Lcom/google/android/gms/internal/ga;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ga;-><init>(Lcom/google/android/gms/internal/ga;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ig;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/internal/ig;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ih;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/internal/ih;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ip;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ip;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iq;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/iq;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/is;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/is;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/it;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/it;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)[B
    .locals 9

    const-wide/32 v4, 0xf4240

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->nanoTime()J

    move-result-wide v0

    div-long v2, v0, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ir;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ir;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->d(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Log and bundle returned null. appId"

    invoke-static {p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v1, v1, Lcom/google/android/gms/internal/hz;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v6, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v6, v7, v8, v2}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-static {p2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hz;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/gp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/gz;->ch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/hd;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/lb;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/il;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/il;-><init>(Lcom/google/android/gms/internal/ie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ld;

    if-nez p4, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ld;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/le;->cD(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/lb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/lb;-><init>(Lcom/google/android/gms/internal/ld;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get user attributes. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/internal/fx;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/if;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/if;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ga;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ga;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ga;-><init>(Lcom/google/android/gms/internal/ga;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lb;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ii;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ii;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/ga;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ij;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ij;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/ga;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/internal/fx;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ie;->g(Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v1, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hz;->ct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/fx;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/io;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/io;-><init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ie;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/in;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/in;-><init>(Lcom/google/android/gms/internal/ie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ie;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to get conditional user properties"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
