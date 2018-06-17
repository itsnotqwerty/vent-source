.class final Lcom/google/android/gms/common/api/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/g$a;


# instance fields
.field private synthetic aDS:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field private synthetic aDT:Lcom/google/android/gms/common/api/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->aDT:Lcom/google/android/gms/common/api/internal/e;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f;->aDS:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ne()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->aDT:Lcom/google/android/gms/common/api/internal/e;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/e;->aDQ:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->aDS:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
