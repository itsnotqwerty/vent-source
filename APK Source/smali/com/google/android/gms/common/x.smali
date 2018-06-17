.class final Lcom/google/android/gms/common/x;
.super Lcom/google/android/gms/common/w;


# instance fields
.field private final aKa:Lcom/google/android/gms/common/o;

.field private final aKb:Z

.field private final aKc:Z

.field private final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/common/x;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/x;->aKa:Lcom/google/android/gms/common/o;

    iput-boolean p3, p0, Lcom/google/android/gms/common/x;->aKb:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/x;->aKc:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/x;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)V

    return-void
.end method


# virtual methods
.method final oQ()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/common/x;->aKc:Z

    if-eqz v0, :cond_0

    const-string v0, "debug cert rejected"

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/x;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/x;->aKa:Lcom/google/android/gms/common/o;

    const-string v3, "SHA-1"

    invoke-static {v3}, Lcom/google/android/gms/common/util/a;->bi(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/o;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/util/i;->m([B)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/common/x;->aKb:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": pkg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sha1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", atk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ver=12211278.false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not whitelisted"

    goto :goto_0
.end method
