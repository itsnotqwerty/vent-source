.class public final Lcom/google/android/gms/common/api/internal/av;
.super Lcom/google/android/gms/common/api/internal/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/common/api/internal/cg",
        "<+",
        "Lcom/google/android/gms/common/api/i;",
        "Lcom/google/android/gms/common/api/a$c;",
        ">;>",
        "Lcom/google/android/gms/common/api/internal/a;"
    }
.end annotation


# instance fields
.field private aFG:Lcom/google/android/gms/common/api/internal/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/cg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/av;->aFG:Lcom/google/android/gms/common/api/internal/cg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/aj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/aj",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->aFG:Lcom/google/android/gms/common/api/internal/cg;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/cg;->a(Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->aFG:Lcom/google/android/gms/common/api/internal/cg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/cg;->g(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->aFG:Lcom/google/android/gms/common/api/internal/cg;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/e;->aDQ:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/common/api/internal/f;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/api/internal/f;-><init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/g$a;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->aFG:Lcom/google/android/gms/common/api/internal/cg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/cg;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
