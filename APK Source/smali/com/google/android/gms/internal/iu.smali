.class final Lcom/google/android/gms/internal/iu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/ld;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iu;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/iu;->aVG:Lcom/google/android/gms/internal/fx;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->aVG:Lcom/google/android/gms/internal/fx;

    iget-object v1, v1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->ca(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
