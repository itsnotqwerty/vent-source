.class final Lcom/google/android/gms/internal/if;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/if;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/if;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v2, v1, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hz;->f(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method
