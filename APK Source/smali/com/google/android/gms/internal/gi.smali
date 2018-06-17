.class final Lcom/google/android/gms/internal/gi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aRB:Lcom/google/android/gms/internal/hz;

.field private synthetic aRC:Lcom/google/android/gms/internal/gh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gi;->aRC:Lcom/google/android/gms/internal/gh;

    iput-object p2, p0, Lcom/google/android/gms/internal/gi;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    invoke-static {}, Lcom/google/android/gms/internal/hu;->oM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->aRC:Lcom/google/android/gms/internal/gh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->aRC:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->pW()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->aRC:Lcom/google/android/gms/internal/gh;

    invoke-static {v1}, Lcom/google/android/gms/internal/gh;->b(Lcom/google/android/gms/internal/gh;)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->aRC:Lcom/google/android/gms/internal/gh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/internal/gh;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->aRC:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->run()V

    goto :goto_0
.end method
