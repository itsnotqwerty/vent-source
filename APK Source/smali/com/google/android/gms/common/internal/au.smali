.class public final Lcom/google/android/gms/common/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/ar;


# instance fields
.field private synthetic aIr:Lcom/google/android/gms/common/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/al;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/au;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/au;->aIr:Lcom/google/android/gms/common/internal/al;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/au;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/al;->nW()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/au;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->h(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/au;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->h(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/ao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/ao;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0
.end method
