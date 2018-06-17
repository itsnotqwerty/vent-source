.class final Lcom/google/android/gms/analytics/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aBJ:Ljava/util/Map;

.field private synthetic aBK:Z

.field private synthetic aBL:Ljava/lang/String;

.field private synthetic aBM:J

.field private synthetic aBN:Z

.field private synthetic aBO:Z

.field private synthetic aBP:Ljava/lang/String;

.field private synthetic aBb:Lcom/google/android/gms/analytics/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/d;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iput-object p2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/android/gms/analytics/r;->aBK:Z

    iput-object p4, p0, Lcom/google/android/gms/analytics/r;->aBL:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/analytics/r;->aBM:J

    iput-boolean p7, p0, Lcom/google/android/gms/analytics/r;->aBN:Z

    iput-boolean p8, p0, Lcom/google/android/gms/analytics/r;->aBO:Z

    iput-object p9, p0, Lcom/google/android/gms/analytics/r;->aBP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/analytics/d;->aAY:Lcom/google/android/gms/analytics/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d$a;->mH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "sc"

    const-string v3, "start"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "cid"

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v3, v3, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bd;->pj()Lcom/google/android/gms/analytics/a;

    move-result-object v3

    const-string v4, "getClientId can not be called from the main thread"

    invoke-static {v4}, Lcom/google/android/gms/common/internal/ae;->bh(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bd;->pm()Lcom/google/android/gms/internal/bv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bv;->pG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/di;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "sf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/di;->bJ(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v4, "cid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/di;->a(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    const-string v1, "Sampling enabled. Hit sampled out. sample rate"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pl()Lcom/google/android/gms/internal/au;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/analytics/r;->aBK:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "ate"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->oU()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/di;->b(Ljava/util/Map;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->oV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pn()Lcom/google/android/gms/internal/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->pw()Lcom/google/android/gms/internal/ah;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "an"

    iget-object v4, v0, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "av"

    iget-object v4, v0, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "aid"

    iget-object v4, v0, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "aiid"

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "v"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "_v"

    sget-object v3, Lcom/google/android/gms/internal/bc;->aMr:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "ul"

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v3, v3, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v3, v3, Lcom/google/android/gms/internal/bd;->aMF:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ci;->pX()Lcom/google/android/gms/internal/am;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "sr"

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v3, v3, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v3, v3, Lcom/google/android/gms/internal/bd;->aMF:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ci;->pY()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBL:Ljava/lang/String;

    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBL:Ljava/lang/String;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v9

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/analytics/d;->aAX:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->qb()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "Too many hits sent too quickly, rate limiting invoked"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "ate"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "ht"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/di;->bK(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_6

    iget-wide v4, p0, Lcom/google/android/gms/analytics/r;->aBM:J

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->aBN:Z

    if-eqz v0, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/google/android/gms/analytics/r;->aBO:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/ba;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v2, "Dry run enabled. Would have sent hit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ba;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/di;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "an"

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/di;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "aid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/di;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "av"

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/di;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "aiid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/di;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v6, Lcom/google/android/gms/internal/bg;

    iget-object v8, p0, Lcom/google/android/gms/analytics/r;->aBP:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v2, "adid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/bg;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/bg;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    const-string v3, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->aBJ:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/google/android/gms/analytics/r;->aBO:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/ba;Ljava/util/Map;JZ)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->aBb:Lcom/google/android/gms/analytics/d;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/cr;)V

    goto/16 :goto_0

    :cond_8
    move v9, v1

    goto :goto_3
.end method
