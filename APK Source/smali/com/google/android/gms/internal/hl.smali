.class final Lcom/google/android/gms/internal/hl;
.super Lcom/google/android/gms/internal/iy;


# static fields
.field static final aTE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aTF:Landroid/content/SharedPreferences;

.field public aTG:Lcom/google/android/gms/internal/ho;

.field public final aTH:Lcom/google/android/gms/internal/hn;

.field public final aTI:Lcom/google/android/gms/internal/hn;

.field public final aTJ:Lcom/google/android/gms/internal/hn;

.field public final aTK:Lcom/google/android/gms/internal/hn;

.field public final aTL:Lcom/google/android/gms/internal/hn;

.field public final aTM:Lcom/google/android/gms/internal/hn;

.field public final aTN:Lcom/google/android/gms/internal/hp;

.field private aTO:Ljava/lang/String;

.field private aTP:Z

.field private aTQ:J

.field aTR:Ljava/lang/String;

.field aTS:J

.field final aTT:Ljava/lang/Object;

.field public final aTU:Lcom/google/android/gms/internal/hn;

.field public final aTV:Lcom/google/android/gms/internal/hn;

.field public final aTW:Lcom/google/android/gms/internal/hm;

.field public final aTX:Lcom/google/android/gms/internal/hn;

.field public final aTY:Lcom/google/android/gms/internal/hn;

.field public aTZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/hl;->aTE:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "last_upload"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTH:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "last_upload_attempt"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTI:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "backoff"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTJ:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "last_delete_stale"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTK:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "time_before_start"

    const-wide/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTU:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "session_timeout"

    const-wide/32 v2, 0x1b7740

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTV:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hm;

    const-string v1, "start_new_session"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/hm;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTW:Lcom/google/android/gms/internal/hm;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "last_pause_time"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTX:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "time_active"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "midnight_offset"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTL:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hn;

    const-string v1, "first_open_time"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/internal/hn;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTM:Lcom/google/android/gms/internal/hn;

    new-instance v0, Lcom/google/android/gms/internal/hp;

    const-string v1, "app_instance_id"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/hp;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTN:Lcom/google/android/gms/internal/hp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTT:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private final rK()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->aTF:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method final aw(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Setting useService"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final ax(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final cm(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/hl;->aTQ:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hl;->aTP:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gr;->aSf:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/gc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/hl;->aTQ:J

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/c/a;->r(Landroid/content/Context;)Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/ads/c/a$a;->azP:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/c/a$a;->azQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->aTP:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hl;->aTP:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTO:Ljava/lang/String;

    goto :goto_1
.end method

.method final cn(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hl;->cm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "MD5"

    invoke-static {v1}, Lcom/google/android/gms/internal/le;->bi(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%032X"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final co(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final rC()V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->aTF:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->aTF:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->aTZ:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hl;->aTZ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->aTF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_been_opened"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ho;

    const-string v3, "health_monitor"

    const-wide/16 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/gr;->aSg:Lcom/google/android/gms/internal/gs;

    iget-object v0, v0, Lcom/google/android/gms/internal/gs;->aSN:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ho;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;JB)V

    iput-object v1, p0, Lcom/google/android/gms/internal/hl;->aTG:Lcom/google/android/gms/internal/ho;

    return-void
.end method

.method final rL()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final rM()Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->aTT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/hl;->aTS:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->aTR:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final rN()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method final rO()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Clearing collection preferences."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "measurement_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->ax(Z)Z

    move-result v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->setMeasurementEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected final rP()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->pf()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "previous_os_version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method protected final ri()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final setMeasurementEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Setting measurementEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;->rK()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
