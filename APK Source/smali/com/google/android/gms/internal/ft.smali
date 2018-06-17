.class public final Lcom/google/android/gms/internal/ft;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aQu:Ljava/lang/String;

.field private synthetic aQv:J

.field private synthetic aQw:Lcom/google/android/gms/internal/fs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ft;->aQw:Lcom/google/android/gms/internal/fs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ft;->aQu:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ft;->aQv:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ft;->aQw:Lcom/google/android/gms/internal/fs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ft;->aQu:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ft;->aQv:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/internal/fs;->aQs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide v4, v1, Lcom/google/android/gms/internal/fs;->aQt:J

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/fs;->aQs:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/fs;->aQs:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/fs;->aQs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Too many ads visible"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/fs;->aQs:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/fs;->aQr:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
