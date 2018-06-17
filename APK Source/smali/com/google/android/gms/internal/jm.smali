.class final Lcom/google/android/gms/internal/jm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVW:Lcom/google/android/gms/internal/ja;

.field private synthetic aVY:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jm;->aVW:Lcom/google/android/gms/internal/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/jm;->aVY:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jm;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jm;->aVY:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ju;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
