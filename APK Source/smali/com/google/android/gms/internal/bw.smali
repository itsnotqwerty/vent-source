.class final Lcom/google/android/gms/internal/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic aNv:Lcom/google/android/gms/internal/bv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->aNv:Lcom/google/android/gms/internal/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->aNv:Lcom/google/android/gms/internal/bv;

    iget-object v0, v1, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/analytics/n;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bv;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bv;->pI()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
