.class final Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aTj:I

.field private synthetic aTk:Ljava/lang/String;

.field private synthetic aTl:Ljava/lang/Object;

.field private synthetic aTm:Ljava/lang/Object;

.field private synthetic aTn:Ljava/lang/Object;

.field private synthetic aTo:Lcom/google/android/gms/internal/hb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hb;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    iput p2, p0, Lcom/google/android/gms/internal/hc;->aTj:I

    iput-object p3, p0, Lcom/google/android/gms/internal/hc;->aTk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/hc;->aTl:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/hc;->aTm:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/internal/hc;->aTn:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iy;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hb;->c(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    iget-char v0, v0, Lcom/google/android/gms/internal/hb;->aSY:C

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gc;->pK()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    const/16 v2, 0x43

    iput-char v2, v0, Lcom/google/android/gms/internal/hb;->aSY:C

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    iget-wide v2, v0, Lcom/google/android/gms/internal/hb;->aQI:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    const-wide/16 v2, 0x2fb3

    iput-wide v2, v0, Lcom/google/android/gms/internal/hb;->aQI:J

    :cond_2
    const-string v0, "01VDIWEA?"

    iget v2, p0, Lcom/google/android/gms/internal/hc;->aTj:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    iget-char v2, v2, Lcom/google/android/gms/internal/hb;->aSY:C

    iget-object v3, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    iget-wide v4, v3, Lcom/google/android/gms/internal/hb;->aQI:J

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/hc;->aTk:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/hc;->aTl:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/hc;->aTm:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/hc;->aTn:Ljava/lang/Object;

    invoke-static {v3, v6, v7, v8, v9}, Lcom/google/android/gms/internal/hb;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTk:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/hl;->aTG:Lcom/google/android/gms/internal/ho;

    iget-object v1, v2, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ho;->qm()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ho;->ql()V

    :cond_4
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    iget-object v1, v2, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v1}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ho;->aUf:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7

    iget-object v1, v2, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v1}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ho;->aUg:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v2, Lcom/google/android/gms/internal/ho;->aUf:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->aTo:Lcom/google/android/gms/internal/hb;

    const/16 v2, 0x63

    iput-char v2, v0, Lcom/google/android/gms/internal/hb;->aSY:C

    goto/16 :goto_1

    :cond_7
    iget-object v1, v2, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/le;->sr()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v6, v8

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    div-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gez v1, :cond_9

    const/4 v1, 0x1

    :goto_2
    iget-object v3, v2, Lcom/google/android/gms/internal/ho;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v3}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v1, :cond_8

    iget-object v1, v2, Lcom/google/android/gms/internal/ho;->aUg:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    iget-object v0, v2, Lcom/google/android/gms/internal/ho;->aUf:Ljava/lang/String;

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_2
.end method
