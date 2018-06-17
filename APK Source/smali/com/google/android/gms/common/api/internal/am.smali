.class final Lcom/google/android/gms/common/api/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aFu:Lcom/google/android/gms/common/api/internal/aj;

.field private synthetic aFv:Lcom/google/android/gms/common/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/aj;Lcom/google/android/gms/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/am;->aFu:Lcom/google/android/gms/common/api/internal/aj;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/am;->aFv:Lcom/google/android/gms/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/am;->aFu:Lcom/google/android/gms/common/api/internal/aj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/am;->aFv:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/a;)V

    return-void
.end method
