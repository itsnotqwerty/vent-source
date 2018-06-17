.class public final Lcom/google/android/gms/internal/bo;
.super Lcom/google/android/gms/internal/bb;


# instance fields
.field private final aBD:Lcom/google/android/gms/internal/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ah;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->aBD:Lcom/google/android/gms/internal/ah;

    return-void
.end method


# virtual methods
.method protected final mG()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/n;->mM()Lcom/google/android/gms/internal/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->aBD:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ah;->a(Lcom/google/android/gms/internal/ah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pk()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->qr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->aBD:Lcom/google/android/gms/internal/ah;

    iput-object v1, v2, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->qq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->aBD:Lcom/google/android/gms/internal/ah;

    iput-object v0, v1, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final pw()Lcom/google/android/gms/internal/ah;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->aBD:Lcom/google/android/gms/internal/ah;

    return-object v0
.end method
