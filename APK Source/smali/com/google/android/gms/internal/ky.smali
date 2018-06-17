.class final Lcom/google/android/gms/internal/ky;
.super Ljava/lang/Object;


# instance fields
.field Ie:J

.field final aLd:Lcom/google/android/gms/common/util/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ky;->aLd:Lcom/google/android/gms/common/util/e;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ky;->aLd:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ky;->Ie:J

    return-void
.end method
