.class final Lcom/google/android/gms/internal/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/cd",
        "<",
        "Lcom/google/android/gms/internal/cq;",
        ">;"
    }
.end annotation


# instance fields
.field private final aMq:Lcom/google/android/gms/internal/bd;

.field private final aOG:Lcom/google/android/gms/internal/cq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cp;->aMq:Lcom/google/android/gms/internal/bd;

    new-instance v0, Lcom/google/android/gms/internal/cq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    iput p2, v0, Lcom/google/android/gms/internal/cq;->aOI:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/internal/cq;->aOJ:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final synthetic pJ()Lcom/google/android/gms/internal/cb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    return-object v0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    iput-object p2, v0, Lcom/google/android/gms/internal/cq;->aLn:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    iput-object p2, v0, Lcom/google/android/gms/internal/cq;->aLo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aOG:Lcom/google/android/gms/internal/cq;

    iput-object p2, v0, Lcom/google/android/gms/internal/cq;->aOH:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cp;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
