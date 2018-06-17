.class public final Lcom/google/android/gms/common/api/internal/bh;
.super Ljava/lang/Object;


# instance fields
.field public final aFV:Lcom/google/android/gms/common/api/internal/a;

.field public final aFW:I

.field public final aFX:Lcom/google/android/gms/common/api/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/a;ILcom/google/android/gms/common/api/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/a;",
            "I",
            "Lcom/google/android/gms/common/api/e",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bh;->aFV:Lcom/google/android/gms/common/api/internal/a;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/bh;->aFW:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/bh;->aFX:Lcom/google/android/gms/common/api/e;

    return-void
.end method
