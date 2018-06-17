.class public final Lcom/google/android/gms/internal/ho;
.super Ljava/lang/Object;


# instance fields
.field synthetic aUc:Lcom/google/android/gms/internal/hl;

.field private aUe:Ljava/lang/String;

.field final aUf:Ljava/lang/String;

.field final aUg:Ljava/lang/String;

.field final aUh:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ho;->aUe:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ho;->aUf:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ho;->aUg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ho;->aUh:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;JB)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ho;-><init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method final ql()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v2}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ho;->aUf:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/ho;->aUg:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/ho;->aUe:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final qm()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ho;->aUe:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
