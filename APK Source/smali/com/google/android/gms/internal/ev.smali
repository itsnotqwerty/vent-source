.class final Lcom/google/android/gms/internal/ev;
.super Lcom/google/android/gms/internal/fa;


# instance fields
.field private final aPX:Lcom/google/android/gms/common/api/internal/ch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ch",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ch",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/fa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ev;->aPX:Lcom/google/android/gms/common/api/internal/ch;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ew;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ev;->aPX:Lcom/google/android/gms/common/api/internal/ch;

    iget-object v1, p1, Lcom/google/android/gms/internal/ew;->aCx:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/ch;->N(Ljava/lang/Object;)V

    return-void
.end method
