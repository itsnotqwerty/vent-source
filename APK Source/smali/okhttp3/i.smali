.class public final Lokhttp3/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/i$a;
    }
.end annotation


# static fields
.field private static final cYI:[Lokhttp3/g;

.field public static final cYJ:Lokhttp3/i;

.field public static final cYK:Lokhttp3/i;

.field public static final cYL:Lokhttp3/i;


# instance fields
.field final cipherSuites:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Lokhttp3/g;

    sget-object v2, Lokhttp3/g;->cYu:Lokhttp3/g;

    aput-object v2, v0, v1

    sget-object v2, Lokhttp3/g;->cYy:Lokhttp3/g;

    aput-object v2, v0, v6

    sget-object v2, Lokhttp3/g;->cYv:Lokhttp3/g;

    aput-object v2, v0, v7

    sget-object v2, Lokhttp3/g;->cYz:Lokhttp3/g;

    aput-object v2, v0, v8

    sget-object v2, Lokhttp3/g;->cYF:Lokhttp3/g;

    aput-object v2, v0, v9

    const/4 v2, 0x5

    sget-object v3, Lokhttp3/g;->cYE:Lokhttp3/g;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lokhttp3/g;->cYf:Lokhttp3/g;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lokhttp3/g;->cYg:Lokhttp3/g;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Lokhttp3/g;->cXD:Lokhttp3/g;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Lokhttp3/g;->cXE:Lokhttp3/g;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Lokhttp3/g;->cXb:Lokhttp3/g;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lokhttp3/g;->cXf:Lokhttp3/g;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Lokhttp3/g;->cWF:Lokhttp3/g;

    aput-object v3, v0, v2

    sput-object v0, Lokhttp3/i;->cYI:[Lokhttp3/g;

    new-instance v2, Lokhttp3/i$a;

    invoke-direct {v2, v6}, Lokhttp3/i$a;-><init>(Z)V

    sget-object v3, Lokhttp3/i;->cYI:[Lokhttp3/g;

    iget-boolean v0, v2, Lokhttp3/i$a;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget-object v5, v3, v0

    iget-object v5, v5, Lokhttp3/g;->javaName:Ljava/lang/String;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Lokhttp3/i$a;->g([Ljava/lang/String;)Lokhttp3/i$a;

    move-result-object v0

    new-array v2, v9, [Lokhttp3/ab;

    sget-object v3, Lokhttp3/ab;->cZA:Lokhttp3/ab;

    aput-object v3, v2, v1

    sget-object v3, Lokhttp3/ab;->cZB:Lokhttp3/ab;

    aput-object v3, v2, v6

    sget-object v3, Lokhttp3/ab;->cZC:Lokhttp3/ab;

    aput-object v3, v2, v7

    sget-object v3, Lokhttp3/ab;->cZD:Lokhttp3/ab;

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Lokhttp3/i$a;->a([Lokhttp3/ab;)Lokhttp3/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/i$a;->Mb()Lokhttp3/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/i$a;->Mc()Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->cYJ:Lokhttp3/i;

    new-instance v0, Lokhttp3/i$a;

    sget-object v2, Lokhttp3/i;->cYJ:Lokhttp3/i;

    invoke-direct {v0, v2}, Lokhttp3/i$a;-><init>(Lokhttp3/i;)V

    new-array v2, v6, [Lokhttp3/ab;

    sget-object v3, Lokhttp3/ab;->cZD:Lokhttp3/ab;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lokhttp3/i$a;->a([Lokhttp3/ab;)Lokhttp3/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/i$a;->Mb()Lokhttp3/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/i$a;->Mc()Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->cYK:Lokhttp3/i;

    new-instance v0, Lokhttp3/i$a;

    invoke-direct {v0, v1}, Lokhttp3/i$a;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/i$a;->Mc()Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->cYL:Lokhttp3/i;

    return-void
.end method

.method constructor <init>(Lokhttp3/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/i$a;->tls:Z

    iput-boolean v0, p0, Lokhttp3/i;->tls:Z

    iget-object v0, p1, Lokhttp3/i$a;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/i$a;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/i$a;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lokhttp3/i;->supportsTlsExtensions:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lokhttp3/i;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lokhttp3/i;

    iget-boolean v2, p0, Lokhttp3/i;->tls:Z

    iget-boolean v3, p1, Lokhttp3/i;->tls:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lokhttp3/i;->tls:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lokhttp3/i;->supportsTlsExtensions:Z

    iget-boolean v3, p1, Lokhttp3/i;->supportsTlsExtensions:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-boolean v1, p0, Lokhttp3/i;->tls:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/i;->supportsTlsExtensions:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokhttp3/i;->tls:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lokhttp3/internal/c;->NATURAL_ORDER:Ljava/util/Comparator;

    iget-object v2, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lokhttp3/internal/c;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lokhttp3/g;->ORDER_BY_NAME:Ljava/util/Comparator;

    iget-object v2, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lokhttp3/internal/c;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lokhttp3/i;->tls:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/g;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/ab;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lokhttp3/i;->supportsTlsExtensions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "[all enabled]"

    goto :goto_2

    :cond_4
    const-string v1, "[all enabled]"

    goto :goto_3
.end method
