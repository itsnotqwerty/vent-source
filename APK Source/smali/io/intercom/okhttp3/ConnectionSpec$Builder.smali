.class public final Lio/intercom/okhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method public constructor <init>(Lio/intercom/okhttp3/ConnectionSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lio/intercom/okhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

    iget-object v0, p1, Lio/intercom/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iget-boolean v0, p1, Lio/intercom/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public final allEnabledCipherSuites()Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 2

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method public final allEnabledTlsVersions()Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 2

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lio/intercom/okhttp3/ConnectionSpec;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/ConnectionSpec;-><init>(Lio/intercom/okhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public final varargs cipherSuites([Lio/intercom/okhttp3/CipherSuite;)Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 3

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

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

    iget-object v2, v2, Lio/intercom/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lio/intercom/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final varargs cipherSuites([Ljava/lang/String;)Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 2

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

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

    iput-object v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method public final supportsTlsExtensions(Z)Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 2

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0
.end method

.method public final varargs tlsVersions([Lio/intercom/okhttp3/TlsVersion;)Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 3

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

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

    iget-object v2, v2, Lio/intercom/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lio/intercom/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final varargs tlsVersions([Ljava/lang/String;)Lio/intercom/okhttp3/ConnectionSpec$Builder;
    .locals 2

    iget-boolean v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tls:Z

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

    iput-object v0, p0, Lio/intercom/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method
