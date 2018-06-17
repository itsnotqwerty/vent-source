.class final Lcom/google/android/gms/internal/hk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aTC:Z

.field private synthetic aTD:Lcom/google/android/gms/internal/hj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hj;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hk;->aTD:Lcom/google/android/gms/internal/hj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/hk;->aTC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hk;->aTD:Lcom/google/android/gms/internal/hj;

    invoke-static {v0}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hj;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sd()V

    return-void
.end method
