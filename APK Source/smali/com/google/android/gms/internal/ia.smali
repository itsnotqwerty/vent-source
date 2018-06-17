.class final Lcom/google/android/gms/internal/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVB:Lcom/google/android/gms/internal/hz;

.field private synthetic aVC:Lcom/google/android/gms/internal/iz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/iz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ia;->aVB:Lcom/google/android/gms/internal/hz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ia;->aVC:Lcom/google/android/gms/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->aVB:Lcom/google/android/gms/internal/hz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/hz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->aVB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->start()V

    return-void
.end method
