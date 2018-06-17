.class public Lcom/google/android/gms/internal/bd;
.super Ljava/lang/Object;


# static fields
.field private static volatile aMs:Lcom/google/android/gms/internal/bd;


# instance fields
.field public final aBm:Lcom/google/android/gms/common/util/e;

.field final aMA:Lcom/google/android/gms/internal/da;

.field private final aMB:Lcom/google/android/gms/analytics/a;

.field private final aMC:Lcom/google/android/gms/internal/bv;

.field private final aMD:Lcom/google/android/gms/internal/au;

.field private final aME:Lcom/google/android/gms/internal/bo;

.field public final aMF:Lcom/google/android/gms/internal/ci;

.field final aMt:Landroid/content/Context;

.field final aMu:Lcom/google/android/gms/internal/ce;

.field final aMv:Lcom/google/android/gms/internal/cw;

.field private final aMw:Lcom/google/android/gms/analytics/n;

.field private final aMx:Lcom/google/android/gms/internal/av;

.field final aMy:Lcom/google/android/gms/internal/cj;

.field private final aMz:Lcom/google/android/gms/internal/dj;

.field final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bf;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/bf;->aCq:Landroid/content/Context;

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/bf;->aMH:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aMt:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/f;->oG()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    new-instance v1, Lcom/google/android/gms/internal/ce;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/bd;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aMu:Lcom/google/android/gms/internal/ce;

    new-instance v1, Lcom/google/android/gms/internal/cw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aMv:Lcom/google/android/gms/internal/cw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/bc;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ba;->by(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/da;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/da;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aMA:Lcom/google/android/gms/internal/da;

    new-instance v1, Lcom/google/android/gms/internal/dj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dj;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aMz:Lcom/google/android/gms/internal/dj;

    new-instance v1, Lcom/google/android/gms/internal/av;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/av;-><init>(Lcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/bf;)V

    new-instance v2, Lcom/google/android/gms/internal/bv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bd;)V

    new-instance v3, Lcom/google/android/gms/internal/au;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/au;-><init>(Lcom/google/android/gms/internal/bd;)V

    new-instance v4, Lcom/google/android/gms/internal/bo;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/bo;-><init>(Lcom/google/android/gms/internal/bd;)V

    new-instance v5, Lcom/google/android/gms/internal/ci;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/n;->u(Landroid/content/Context;)Lcom/google/android/gms/analytics/n;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/be;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/be;-><init>(Lcom/google/android/gms/internal/bd;)V

    iput-object v6, v0, Lcom/google/android/gms/analytics/n;->aBE:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/google/android/gms/internal/bd;->aMw:Lcom/google/android/gms/analytics/n;

    new-instance v0, Lcom/google/android/gms/analytics/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/a;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bd;->aMC:Lcom/google/android/gms/internal/bv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/bd;->aMD:Lcom/google/android/gms/internal/au;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/bd;->aME:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v5, p0, Lcom/google/android/gms/internal/bd;->aMF:Lcom/google/android/gms/internal/ci;

    new-instance v2, Lcom/google/android/gms/internal/cj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cj;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bd;->aMy:Lcom/google/android/gms/internal/cj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bb;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bd;->aMx:Lcom/google/android/gms/internal/av;

    iget-object v2, v0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bd;->pk()Lcom/google/android/gms/internal/dj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->qs()Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->qt()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->qu()Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/gms/analytics/a;->aAN:Z

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/dj;->qs()Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/analytics/a;->aAL:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/bd;->aMB:Lcom/google/android/gms/analytics/a;

    iget-object v0, v1, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->start()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/bb;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/bd;->aMs:Lcom/google/android/gms/internal/bd;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/bd;->aMs:Lcom/google/android/gms/internal/bd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/f;->oG()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/bf;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/bf;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/bd;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/bd;-><init>(Lcom/google/android/gms/internal/bf;)V

    sput-object v5, Lcom/google/android/gms/internal/bd;->aMs:Lcom/google/android/gms/internal/bd;

    invoke-static {}, Lcom/google/android/gms/analytics/a;->mE()V

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOD:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ba;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/bd;->aMs:Lcom/google/android/gms/internal/bd;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final pg()Lcom/google/android/gms/internal/cw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMv:Lcom/google/android/gms/internal/cw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMv:Lcom/google/android/gms/internal/cw;

    return-object v0
.end method

.method public final ph()Lcom/google/android/gms/analytics/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMw:Lcom/google/android/gms/analytics/n;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMw:Lcom/google/android/gms/analytics/n;

    return-object v0
.end method

.method public final pi()Lcom/google/android/gms/internal/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMx:Lcom/google/android/gms/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMx:Lcom/google/android/gms/internal/av;

    return-object v0
.end method

.method public final pj()Lcom/google/android/gms/analytics/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMB:Lcom/google/android/gms/analytics/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMB:Lcom/google/android/gms/analytics/a;

    iget-boolean v0, v0, Lcom/google/android/gms/analytics/a;->aAL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMB:Lcom/google/android/gms/analytics/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pk()Lcom/google/android/gms/internal/dj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMz:Lcom/google/android/gms/internal/dj;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMz:Lcom/google/android/gms/internal/dj;

    return-object v0
.end method

.method public final pl()Lcom/google/android/gms/internal/au;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMD:Lcom/google/android/gms/internal/au;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMD:Lcom/google/android/gms/internal/au;

    return-object v0
.end method

.method public final pm()Lcom/google/android/gms/internal/bv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMC:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aMC:Lcom/google/android/gms/internal/bv;

    return-object v0
.end method

.method public final pn()Lcom/google/android/gms/internal/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aME:Lcom/google/android/gms/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->aME:Lcom/google/android/gms/internal/bo;

    return-object v0
.end method
