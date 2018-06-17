.class final Lcom/google/android/gms/internal/fw;
.super Ljava/lang/Object;


# instance fields
.field private aQA:Ljava/lang/String;

.field private aQB:Ljava/lang/String;

.field private aQC:J

.field private aQD:J

.field private aQE:J

.field private aQF:Ljava/lang/String;

.field private aQG:J

.field private aQH:Ljava/lang/String;

.field private aQI:J

.field private aQJ:J

.field private aQK:Z

.field private aQL:J

.field private aQM:Z

.field aQN:J

.field aQO:J

.field aQP:J

.field aQQ:J

.field aQR:J

.field aQS:J

.field aQT:Ljava/lang/String;

.field aQU:Z

.field private aQV:J

.field private aQW:J

.field private final aQx:Ljava/lang/String;

.field private aQy:Ljava/lang/String;

.field private aQz:Ljava/lang/String;

.field final zzjev:Lcom/google/android/gms/internal/hz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw;->aQx:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    return-void
.end method


# virtual methods
.method public final av(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQM:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fw;->aQM:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bP(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQy:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQy:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bQ(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQz:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQz:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bR(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQA:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQA:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bS(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQB:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQB:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bT(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQF:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQF:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bU(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQH:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQH:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bV(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQT:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->aQT:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQx:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQy:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQz:Ljava/lang/String;

    return-object v0
.end method

.method public final qS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQA:Ljava/lang/String;

    return-object v0
.end method

.method public final qT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQB:Ljava/lang/String;

    return-object v0
.end method

.method public final qU()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQD:J

    return-wide v0
.end method

.method public final qV()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQE:J

    return-wide v0
.end method

.method public final qW()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQG:J

    return-wide v0
.end method

.method public final qX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQH:Ljava/lang/String;

    return-object v0
.end method

.method public final qY()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQI:J

    return-wide v0
.end method

.method public final qZ()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQJ:J

    return-wide v0
.end method

.method public final qq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQF:Ljava/lang/String;

    return-object v0
.end method

.method public final r(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQD:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQD:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ra()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQK:Z

    return v0
.end method

.method public final rb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQC:J

    return-wide v0
.end method

.method public final rc()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQV:J

    return-wide v0
.end method

.method public final rd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQW:J

    return-wide v0
.end method

.method public final re()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQC:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Bundle index overflow. appId"

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->aQx:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQC:J

    return-void
.end method

.method public final rf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->aQT:Ljava/lang/String;

    return-object v0
.end method

.method public final rg()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/fw;->aQL:J

    return-wide v0
.end method

.method public final rh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQM:Z

    return v0
.end method

.method public final s(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQE:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQE:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQK:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fw;->aQK:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQG:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQG:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQI:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQI:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQJ:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQJ:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/fw;->aQC:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQC:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final x(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQV:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQV:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQW:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQW:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/fw;->aQL:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fw;->aQU:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/fw;->aQL:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
