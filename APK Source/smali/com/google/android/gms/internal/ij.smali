.class final Lcom/google/android/gms/internal/ij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVH:Lcom/google/android/gms/internal/ie;

.field private synthetic aVI:Lcom/google/android/gms/internal/ga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/ga;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ij;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/ij;->aVI:Lcom/google/android/gms/internal/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ij;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ij;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ij;->aVI:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/ga;)V

    return-void
.end method
