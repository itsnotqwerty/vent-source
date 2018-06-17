.class final Lcom/google/android/gms/internal/bp;
.super Lcom/google/android/gms/internal/bb;


# instance fields
.field private final aNc:Lcom/google/android/gms/internal/bm;

.field private final aNd:Lcom/google/android/gms/internal/cy;

.field private final aNe:Lcom/google/android/gms/internal/cx;

.field private final aNf:Lcom/google/android/gms/internal/bh;

.field private aNg:J

.field private final aNh:Lcom/google/android/gms/internal/cg;

.field private final aNi:Lcom/google/android/gms/internal/cg;

.field private final aNj:Lcom/google/android/gms/internal/dh;

.field aNk:J

.field private aNl:Z

.field private uY:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/bf;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/bp;->aNg:J

    new-instance v0, Lcom/google/android/gms/internal/cx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNe:Lcom/google/android/gms/internal/cx;

    new-instance v0, Lcom/google/android/gms/internal/bm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bm;-><init>(Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cy;-><init>(Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNd:Lcom/google/android/gms/internal/cy;

    new-instance v0, Lcom/google/android/gms/internal/bh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bh;-><init>(Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    new-instance v0, Lcom/google/android/gms/internal/dh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNj:Lcom/google/android/gms/internal/dh;

    new-instance v0, Lcom/google/android/gms/internal/bq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    new-instance v0, Lcom/google/android/gms/internal/br;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->aNi:Lcom/google/android/gms/internal/cg;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/ai;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/e;-><init>(Lcom/google/android/gms/internal/bd;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/bg;->aMJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/e;->aY(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/google/android/gms/internal/bg;->aMK:Z

    iput-boolean v1, v0, Lcom/google/android/gms/analytics/e;->aBe:Z

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/m;->mI()Lcom/google/android/gms/analytics/k;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/aq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/analytics/k;->i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aq;

    const-string v1, "data"

    iput-object v1, v0, Lcom/google/android/gms/internal/aq;->aLK:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/google/android/gms/internal/aq;->aLQ:Z

    invoke-virtual {v5, p2}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/l;)V

    const-class v1, Lcom/google/android/gms/internal/al;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/k;->i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/al;

    const-class v2, Lcom/google/android/gms/internal/ah;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/analytics/k;->i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ah;

    iget-object v3, p1, Lcom/google/android/gms/internal/bg;->aAV:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object v3, v2, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object v3, v2, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-object v3, v2, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iput-object v3, v2, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v3, v0, Lcom/google/android/gms/internal/aq;->aLM:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string v7, "Name can not be empty or \"&\""

    invoke-static {v4, v7}, Lcom/google/android/gms/common/internal/ae;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/al;->aAV:Ljava/util/Map;

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string v0, "Sending installation campaign to"

    iget-object v1, p1, Lcom/google/android/gms/internal/bg;->aMJ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ba;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qg()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/google/android/gms/analytics/k;->aBp:J

    iget-object v0, v5, Lcom/google/android/gms/analytics/k;->aBl:Lcom/google/android/gms/analytics/m;

    iget-object v0, v0, Lcom/google/android/gms/analytics/m;->aBw:Lcom/google/android/gms/analytics/n;

    iget-boolean v1, v5, Lcom/google/android/gms/analytics/k;->aBt:Z

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Measurement prototype can\'t be submitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-boolean v1, v5, Lcom/google/android/gms/analytics/k;->aBn:Z

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Measurement can only be submitted once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/analytics/k;->mK()Lcom/google/android/gms/analytics/k;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/analytics/k;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/analytics/k;->aBq:J

    iget-wide v2, v1, Lcom/google/android/gms/analytics/k;->aBp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    iget-wide v2, v1, Lcom/google/android/gms/analytics/k;->aBp:J

    iput-wide v2, v1, Lcom/google/android/gms/analytics/k;->aBo:J

    :goto_1
    iput-boolean v8, v1, Lcom/google/android/gms/analytics/k;->aBn:Z

    iget-object v2, v0, Lcom/google/android/gms/analytics/n;->aBC:Lcom/google/android/gms/analytics/n$a;

    new-instance v3, Lcom/google/android/gms/analytics/o;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/analytics/o;-><init>(Lcom/google/android/gms/analytics/n;Lcom/google/android/gms/analytics/k;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/n$a;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    iget-object v2, v1, Lcom/google/android/gms/analytics/k;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/analytics/k;->aBo:J

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bp;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bt;-><init>(Lcom/google/android/gms/internal/bp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bp;->b(Lcom/google/android/gms/internal/ck;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bp;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->pr()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNi:Lcom/google/android/gms/internal/cg;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cg;->n(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final bE(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ed;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final pB()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pc()Lcom/google/android/gms/internal/cj;

    move-result-object v1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/cj;->aNJ:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, v1, Lcom/google/android/gms/internal/cj;->aNK:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->ps()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOa:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pO()J

    move-result-wide v2

    const-string v0, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cj;->pZ()V

    goto :goto_0
.end method

.method private final pC()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->pW()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pc()Lcom/google/android/gms/internal/cj;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/cj;->aNK:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj;->cancel()V

    :cond_1
    return-void
.end method

.method private final pD()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/bp;->aNg:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/bp;->aNg:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/cm;->aNV:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bd;->pk()Lcom/google/android/gms/internal/dj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-boolean v2, v2, Lcom/google/android/gms/internal/dj;->aPu:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pk()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget v0, v0, Lcom/google/android/gms/internal/dj;->aOI:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private final pE()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bp;->aNl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V

    return-void
.end method

.method private final ps()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->ps()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private final py()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bp;->aNl:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ce;->pL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOB:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNj:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/dh;->o(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNj:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->start()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNj:Lcom/google/android/gms/internal/dh;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/dh;->Ie:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->onServiceConnected()V

    goto :goto_0
.end method

.method private final pz()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->aNd:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cy;->qe()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ce;->pP()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pQ()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    move-wide v4, v0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->beginTransaction()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/bm;->l(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cr;

    iget-wide v10, v0, Lcom/google/android/gms/internal/cr;->aOL:J

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cr;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/cr;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v10, v0, Lcom/google/android/gms/internal/cr;->aOL:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    iget-wide v10, v0, Lcom/google/android/gms/internal/cr;->aOL:J

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/bm;->m(J)V

    iget-wide v0, v0, Lcom/google/android/gms/internal/cr;->aOL:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2

    :cond_6
    move-wide v0, v4

    :try_start_c
    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->aNd:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/cy;->qe()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->aNd:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/cy;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v0

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-wide v4

    goto :goto_5

    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/bm;->p(Ljava/util/List;)V

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_10
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2

    :cond_9
    :try_start_12
    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cr;)V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bp;->aNl:Z

    if-eqz v0, :cond_1

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bx(Ljava/lang/String;)V

    :goto_0
    const-string v0, "_m"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cr;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->py()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/cr;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bx(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/internal/da;->aPh:Lcom/google/android/gms/internal/db;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/db;->qm()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_3

    move-wide v0, v2

    :goto_3
    iget-wide v6, v5, Lcom/google/android/gms/internal/db;->aPi:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_4

    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/cr;->aAV:Ljava/util/Map;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "_m"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/cr;

    iget-wide v3, p1, Lcom/google/android/gms/internal/cr;->aOM:J

    iget-boolean v5, p1, Lcom/google/android/gms/internal/cr;->aOO:Z

    iget-wide v6, p1, Lcom/google/android/gms/internal/cr;->aOL:J

    iget v8, p1, Lcom/google/android/gms/internal/cr;->aON:I

    iget-object v9, p1, Lcom/google/android/gms/internal/cr;->aOK:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/ba;Ljava/util/Map;JZJILjava/util/List;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_3
    iget-object v6, v5, Lcom/google/android/gms/internal/db;->aPj:Lcom/google/android/gms/internal/da;

    iget-object v6, v6, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v6, v6, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_3

    :cond_4
    iget-wide v6, v5, Lcom/google/android/gms/internal/db;->aPi:J

    const/4 v8, 0x1

    shl-long/2addr v6, v8

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/db;->ql()V

    move-object v1, v4

    goto :goto_4

    :cond_5
    iget-object v0, v5, Lcom/google/android/gms/internal/db;->aPj:Lcom/google/android/gms/internal/da;

    iget-object v0, v0, Lcom/google/android/gms/internal/da;->aPe:Landroid/content/SharedPreferences;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/db;->qp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v5, Lcom/google/android/gms/internal/db;->aPj:Lcom/google/android/gms/internal/da;

    iget-object v0, v0, Lcom/google/android/gms/internal/da;->aPe:Landroid/content/SharedPreferences;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/db;->qo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/db;->ql()V

    if-eqz v1, :cond_6

    cmp-long v0, v6, v2

    if-gtz v0, :cond_7

    :cond_6
    move-object v1, v4

    goto/16 :goto_4

    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_4

    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bm;->c(Lcom/google/android/gms/internal/cr;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cw;->a(Lcom/google/android/gms/internal/cr;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected final b(Lcom/google/android/gms/internal/bg;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    const-string v0, "Sending first hit to property"

    iget-object v1, p1, Lcom/google/android/gms/internal/bg;->aMJ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qh()Lcom/google/android/gms/internal/dh;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pV()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dh;->o(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/di;->a(Lcom/google/android/gms/internal/cw;Ljava/lang/String;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/ai;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ck;)V
    .locals 8

    iget-wide v2, p0, Lcom/google/android/gms/internal/bp;->aNk:J

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/da;->qi()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v4, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->py()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pz()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ck;->pF()V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/bp;->aNk:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNe:Lcom/google/android/gms/internal/cx;

    iget-object v0, v0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/internal/cx;->aOX:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ck;->pF()V

    goto :goto_0
.end method

.method public final bF(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/di;->a(Lcom/google/android/gms/internal/cw;Ljava/lang/String;)Lcom/google/android/gms/internal/ai;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/da;->bI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qh()Lcom/google/android/gms/internal/dh;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pV()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dh;->o(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->pt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bg;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/ai;)V

    goto :goto_1
.end method

.method public final c(Lcom/google/android/gms/internal/bg;)J
    .locals 14

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    iget-wide v2, p1, Lcom/google/android/gms/internal/bg;->aMI:J

    iget-object v1, p1, Lcom/google/android/gms/internal/bg;->aLL:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "properties"

    const-string v10, "app_uid=? AND cid<>?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v1, v11, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "Deleted property records"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    iget-wide v2, p1, Lcom/google/android/gms/internal/bg;->aMI:J

    iget-object v1, p1, Lcom/google/android/gms/internal/bg;->aLL:Ljava/lang/String;

    iget-object v8, p1, Lcom/google/android/gms/internal/bg;->aMJ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/google/android/gms/internal/bm;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/google/android/gms/internal/bg;->aML:J

    iget-object v8, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/bm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v0, p1, Lcom/google/android/gms/internal/bg;->aAV:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-wide v0, v4

    :goto_2
    return-wide v0

    :cond_1
    :try_start_3
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    move-object v1, v0

    :goto_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "app_uid"

    iget-wide v12, p1, Lcom/google/android/gms/internal/bg;->aMI:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "cid"

    iget-object v11, p1, Lcom/google/android/gms/internal/bg;->aLL:Ljava/lang/String;

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tid"

    iget-object v11, p1, Lcom/google/android/gms/internal/bg;->aMJ:Ljava/lang/String;

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "adid"

    iget-boolean v0, p1, Lcom/google/android/gms/internal/bg;->aMK:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "hits_count"

    iget-wide v6, p1, Lcom/google/android/gms/internal/bg;->aML:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "params"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "properties"

    const/4 v1, 0x0

    const/4 v6, 0x5

    invoke-virtual {v9, v0, v1, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const-string v0, "Failed to insert/update a property (got -1)"

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ba;->bA(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    move-wide v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    move v0, v7

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "Error storing a property"

    invoke-virtual {v8, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bm;->endTransaction()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_7
    throw v0

    :catch_2
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method protected final mG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNd:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->initialize()V

    return-void
.end method

.method protected final onServiceConnected()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pL()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pP()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/bm;->l(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    iget-wide v4, v0, Lcom/google/android/gms/internal/cr;->aOL:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/bm;->m(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNf:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/cr;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto :goto_0
.end method

.method public final pA()V
    .locals 10

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bp;->aNl:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pD()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNe:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNe:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->unregister()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/cm;->aOw:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNe:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->qd()V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/cx;->CA:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v2, v2, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "com.google.analytics.RADIO_POWERED"

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->qe()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/internal/cx;->aOY:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v2

    const-string v3, "Registering connectivity change receiver. Network connected"

    iget-boolean v6, v0, Lcom/google/android/gms/internal/cx;->aOY:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, v0, Lcom/google/android/gms/internal/cx;->CA:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNe:Lcom/google/android/gms/internal/cx;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/cx;->CA:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    const-string v2, "Connectivity unknown. Receiver not registered"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/cx;->aOY:Z

    :goto_2
    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pB()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pD()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qi()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v6, v6, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_7

    :goto_3
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cg;->pW()Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/16 v6, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    iget-wide v8, v2, Lcom/google/android/gms/internal/cg;->aNH:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_9

    move-wide v2, v4

    :goto_4
    add-long/2addr v0, v2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cg;->pW()Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, v4

    if-gez v3, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cg;->cancel()V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ce;->pN()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ce;->pN()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_9
    iget-object v3, v2, Lcom/google/android/gms/internal/cg;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v3, v3, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v2, v2, Lcom/google/android/gms/internal/cg;->aNH:J

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_4

    :cond_a
    iget-object v3, v2, Lcom/google/android/gms/internal/cg;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v3, v3, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/google/android/gms/internal/cg;->aNH:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v0, v6

    cmp-long v3, v0, v4

    if-gez v3, :cond_d

    :goto_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/gms/internal/cg;->aNG:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cg;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/gms/internal/cg;->aNG:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/internal/cg;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "Failed to adjust delayed post. time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->aNh:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/cg;->n(J)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pC()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pB()V

    goto/16 :goto_1

    :cond_d
    move-wide v4, v0

    goto :goto_5
.end method

.method protected final px()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/dc;->s(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->pd()Lcom/google/android/gms/internal/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/da;->qg()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bp;->bE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bA(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pE()V

    :cond_2
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bp;->bE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bA(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->pE()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/dd;->ad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bp;->aNl:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->aNc:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->py()V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->pA()V

    return-void

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/dd;->ad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ba;->bA(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final start()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bp;->uY:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bp;->uY:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bs;-><init>(Lcom/google/android/gms/internal/bp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/n;->h(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
