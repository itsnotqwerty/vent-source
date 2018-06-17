.class final Lcom/google/android/gms/internal/je;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVJ:Ljava/lang/String;

.field private synthetic aVK:Ljava/lang/String;

.field private synthetic aVW:Lcom/google/android/gms/internal/ja;

.field private synthetic aVY:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je;->aVW:Lcom/google/android/gms/internal/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/je;->aVY:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/je;->aVD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/je;->aVJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/je;->aVK:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/je;->aVW:Lcom/google/android/gms/internal/ja;

    iget-object v0, v0, Lcom/google/android/gms/internal/ja;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/je;->aVY:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/je;->aVD:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/je;->aVJ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/je;->aVK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ju;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
