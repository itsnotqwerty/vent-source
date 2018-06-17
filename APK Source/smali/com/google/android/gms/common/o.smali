.class abstract Lcom/google/android/gms/common/o;
.super Lcom/google/android/gms/common/internal/s;


# instance fields
.field private aJP:I


# direct methods
.method protected constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/s;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/o;->aJP:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static bk(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/common/internal/r;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/r;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/r;->of()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/o;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/r;->oe()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/o;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/o;->aJP:I

    return v0
.end method

.method public final oe()Lcom/google/android/gms/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/o;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final of()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/o;->hashCode()I

    move-result v0

    return v0
.end method
