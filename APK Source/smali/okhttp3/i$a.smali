.class public final Lokhttp3/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/i;->tls:Z

    iput-boolean v0, p0, Lokhttp3/i$a;->tls:Z

    iget-object v0, p1, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/i$a;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/i$a;->tlsVersions:[Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/i;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lokhttp3/i$a;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/i$a;->tls:Z

    return-void
.end method


# virtual methods
.method public final Mb()Lokhttp3/i$a;
    .locals 2

    iget-boolean v0, p0, Lokhttp3/i$a;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/i$a;->supportsTlsExtensions:Z

    return-object p0
.end method

.method public final Mc()Lokhttp3/i;
    .locals 1

    new-instance v0, Lokhttp3/i;

    invoke-direct {v0, p0}, Lokhttp3/i;-><init>(Lokhttp3/i$a;)V

    return-object v0
.end method

.method public final varargs a([Lokhttp3/ab;)Lokhttp3/i$a;
    .locals 3

    iget-boolean v0, p0, Lokhttp3/i$a;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lokhttp3/ab;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lokhttp3/i$a;->h([Ljava/lang/String;)Lokhttp3/i$a;

    move-result-object v0

    return-object v0
.end method

.method public final varargs g([Ljava/lang/String;)Lokhttp3/i$a;
    .locals 2

    iget-boolean v0, p0, Lokhttp3/i$a;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/i$a;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method public final varargs h([Ljava/lang/String;)Lokhttp3/i$a;
    .locals 2

    iget-boolean v0, p0, Lokhttp3/i$a;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/i$a;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method
