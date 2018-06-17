.class final Lio/branch/referral/u;
.super Lio/branch/referral/r;


# instance fields
.field cBp:Lio/branch/referral/d$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/r;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final Hb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lio/branch/referral/ae;Lio/branch/referral/d;)V
    .locals 0

    return-void
.end method

.method public final bU(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lio/branch/referral/r;->bV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/u;->cBp:Lio/branch/referral/d$c;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    const-string v1, "Trouble retrieving user credit history."

    const/16 v2, -0x66

    invoke-direct {v0, v1, v2}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/u;->cBp:Lio/branch/referral/d$c;

    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/branch/referral/u;->cBp:Lio/branch/referral/d$c;

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trouble retrieving user credit history. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/branch/referral/f;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
