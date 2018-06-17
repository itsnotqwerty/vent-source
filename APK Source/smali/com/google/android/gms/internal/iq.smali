.class final Lcom/google/android/gms/internal/iq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;

.field private synthetic aVL:Lcom/google/android/gms/internal/gp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iq;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/iq;->aVL:Lcom/google/android/gms/internal/gp;

    iput-object p3, p0, Lcom/google/android/gms/internal/iq;->aVD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iq;->aVL:Lcom/google/android/gms/internal/gp;

    iget-object v2, p0, Lcom/google/android/gms/internal/iq;->aVD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V

    return-void
.end method
