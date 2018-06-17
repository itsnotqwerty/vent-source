.class final Lcom/google/android/gms/internal/ip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;

.field private synthetic aVL:Lcom/google/android/gms/internal/gp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ip;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/ip;->aVL:Lcom/google/android/gms/internal/gp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ip;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ip;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ip;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ip;->aVL:Lcom/google/android/gms/internal/gp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ip;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V

    return-void
.end method
