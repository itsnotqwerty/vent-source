.class public Lcom/google/android/gms/analytics/e;
.super Lcom/google/android/gms/analytics/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/m",
        "<",
        "Lcom/google/android/gms/analytics/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final aBd:Lcom/google/android/gms/internal/bd;

.field public aBe:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/m;-><init>(Lcom/google/android/gms/analytics/n;Lcom/google/android/gms/common/util/e;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/analytics/k;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/aq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/k;->i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aq;

    iget-object v1, v0, Lcom/google/android/gms/internal/aq;->aLL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pm()Lcom/google/android/gms/internal/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bv;->pG()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/aq;->aLL:Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/e;->aBe:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/aq;->aLN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pl()Lcom/google/android/gms/internal/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/au;->oV()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/aq;->aLN:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/au;->oU()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/aq;->aLO:Z

    :cond_1
    return-void
.end method

.method public final aY(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/f;->aZ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/m;->aBx:Lcom/google/android/gms/analytics/k;

    iget-object v0, v0, Lcom/google/android/gms/analytics/k;->aBv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/q;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/q;->mJ()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/m;->aBx:Lcom/google/android/gms/analytics/k;

    iget-object v0, v0, Lcom/google/android/gms/analytics/k;->aBv:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/f;

    iget-object v2, p0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/f;-><init>(Lcom/google/android/gms/internal/bd;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final mI()Lcom/google/android/gms/analytics/k;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/m;->aBx:Lcom/google/android/gms/analytics/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/k;->mK()Lcom/google/android/gms/analytics/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pn()Lcom/google/android/gms/internal/bo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bo;->pw()Lcom/google/android/gms/internal/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/l;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/e;->aBd:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->aMF:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ci;->pX()Lcom/google/android/gms/internal/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/l;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/m;->mL()V

    return-object v0
.end method
