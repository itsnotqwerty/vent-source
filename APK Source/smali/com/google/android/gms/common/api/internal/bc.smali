.class public final Lcom/google/android/gms/common/api/internal/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final aFP:Lcom/google/android/gms/common/api/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/bd;"
        }
    .end annotation
.end field

.field public volatile aFQ:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final aFR:Lcom/google/android/gms/common/api/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/be",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/internal/bd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/bd;-><init>(Lcom/google/android/gms/common/api/internal/bc;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->aFP:Lcom/google/android/gms/common/api/internal/bd;

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->aFQ:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/be;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/common/api/internal/be;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->aFR:Lcom/google/android/gms/common/api/internal/be;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bf",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bc;->aFP:Lcom/google/android/gms/common/api/internal/bd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/bd;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bc;->aFP:Lcom/google/android/gms/common/api/internal/bd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bd;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
