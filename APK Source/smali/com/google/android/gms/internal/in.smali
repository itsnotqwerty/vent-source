.class final Lcom/google/android/gms/internal/in;
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
        "Lcom/google/android/gms/internal/ga;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;

.field private synthetic aVJ:Ljava/lang/String;

.field private synthetic aVK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/in;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/in;->aVD:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/in;->aVJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/in;->aVK:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/in;->aVD:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/in;->aVJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/in;->aVK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gd;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method