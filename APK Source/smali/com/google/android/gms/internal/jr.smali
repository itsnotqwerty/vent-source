.class final Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aWt:Z

.field private synthetic aWu:Lcom/google/android/gms/internal/jp;

.field private synthetic aWv:Lcom/google/android/gms/internal/jt;

.field private synthetic aWw:Lcom/google/android/gms/internal/jq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jq;ZLcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/jt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/jr;->aWt:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iput-object p4, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jr;->aWt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    iget-object v0, v0, Lcom/google/android/gms/internal/jq;->aWk:Lcom/google/android/gms/internal/jt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    iget-object v2, v2, Lcom/google/android/gms/internal/jq;->aWk:Lcom/google/android/gms/internal/jt;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jq;->a(Lcom/google/android/gms/internal/jq;Lcom/google/android/gms/internal/jt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-wide v2, v0, Lcom/google/android/gms/internal/jp;->aWj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    iget-wide v4, v0, Lcom/google/android/gms/internal/jt;->aWj:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-object v0, v0, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    iget-object v2, v2, Lcom/google/android/gms/internal/jt;->aWi:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-object v0, v0, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    iget-object v2, v2, Lcom/google/android/gms/internal/jt;->aWh:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/jq;->a(Lcom/google/android/gms/internal/jp;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-object v1, v1, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "_pn"

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-object v2, v2, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "_pc"

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-object v2, v2, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_pi"

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->aWu:Lcom/google/android/gms/internal/jp;

    iget-wide v2, v2, Lcom/google/android/gms/internal/jp;->aWj:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ja;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    iput-object v1, v0, Lcom/google/android/gms/internal/jq;->aWk:Lcom/google/android/gms/internal/jt;

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->aWw:Lcom/google/android/gms/internal/jq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->aWv:Lcom/google/android/gms/internal/jt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/jp;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
