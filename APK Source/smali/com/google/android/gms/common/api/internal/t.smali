.class final Lcom/google/android/gms/common/api/internal/t;
.super Lcom/google/android/gms/common/api/internal/ae;


# instance fields
.field private synthetic aEu:Lcom/google/android/gms/common/api/internal/l;

.field private synthetic aEv:Lcom/google/android/gms/internal/mn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ac;Lcom/google/android/gms/common/api/internal/l;Lcom/google/android/gms/internal/mn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/t;->aEu:Lcom/google/android/gms/common/api/internal/l;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/t;->aEv:Lcom/google/android/gms/internal/mn;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ae;-><init>(Lcom/google/android/gms/common/api/internal/ac;)V

    return-void
.end method


# virtual methods
.method public final nn()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->aEu:Lcom/google/android/gms/common/api/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/t;->aEv:Lcom/google/android/gms/internal/mn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/l;->cH(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/mn;->aGN:Lcom/google/android/gms/common/a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/internal/mn;->aZp:Lcom/google/android/gms/common/internal/ah;

    iget-object v2, v1, Lcom/google/android/gms/common/internal/ah;->aGN:Lcom/google/android/gms/common/a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/l;->aEh:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ah;->oh()Lcom/google/android/gms/common/internal/n;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/l;->aEi:Lcom/google/android/gms/common/internal/n;

    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/ah;->aEj:Z

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/l;->aEj:Z

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/ah;->aHR:Z

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/l;->aEk:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->np()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/l;->b(Lcom/google/android/gms/common/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->nr()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/l;->np()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V

    goto :goto_0
.end method
