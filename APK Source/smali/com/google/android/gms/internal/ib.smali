.class final Lcom/google/android/gms/internal/ib;
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
.field private synthetic aVB:Lcom/google/android/gms/internal/hz;

.field private synthetic aVD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ib;->aVB:Lcom/google/android/gms/internal/hz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ib;->aVD:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->aVB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ib;->aVD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/fw;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ib;->aVB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "App info was null when attempting to get app instance id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
