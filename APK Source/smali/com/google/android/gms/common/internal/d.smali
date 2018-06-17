.class final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/an;


# instance fields
.field private synthetic aHf:Lcom/google/android/gms/common/api/f$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->aHf:Lcom/google/android/gms/common/api/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cG(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->aHf:Lcom/google/android/gms/common/api/f$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f$b;->cG(I)V

    return-void
.end method

.method public final nY()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->aHf:Lcom/google/android/gms/common/api/f$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/f$b;->h(Landroid/os/Bundle;)V

    return-void
.end method
