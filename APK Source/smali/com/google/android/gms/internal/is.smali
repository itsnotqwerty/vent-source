.class final Lcom/google/android/gms/internal/is;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;

.field private synthetic aVM:Lcom/google/android/gms/internal/lb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/is;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/is;->aVM:Lcom/google/android/gms/internal/lb;

    iput-object p3, p0, Lcom/google/android/gms/internal/is;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/is;->aVM:Lcom/google/android/gms/internal/lb;

    iget-object v2, p0, Lcom/google/android/gms/internal/is;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V

    return-void
.end method
