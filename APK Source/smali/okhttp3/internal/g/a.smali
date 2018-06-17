.class final Lokhttp3/internal/g/a;
.super Lokhttp3/internal/g/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/g/a$b;,
        Lokhttp3/internal/g/a$c;,
        Lokhttp3/internal/g/a$a;
    }
.end annotation


# instance fields
.field private final dbL:Lokhttp3/internal/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final dbM:Lokhttp3/internal/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final dbN:Lokhttp3/internal/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final dbO:Lokhttp3/internal/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final dbP:Lokhttp3/internal/g/a$c;

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lokhttp3/internal/g/e;Lokhttp3/internal/g/e;Lokhttp3/internal/g/e;Lokhttp3/internal/g/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/g/e",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/g/f;-><init>()V

    invoke-static {}, Lokhttp3/internal/g/a$c;->Nd()Lokhttp3/internal/g/a$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/g/a;->dbP:Lokhttp3/internal/g/a$c;

    iput-object p1, p0, Lokhttp3/internal/g/a;->sslParametersClass:Ljava/lang/Class;

    iput-object p2, p0, Lokhttp3/internal/g/a;->dbL:Lokhttp3/internal/g/e;

    iput-object p3, p0, Lokhttp3/internal/g/a;->dbM:Lokhttp3/internal/g/e;

    iput-object p4, p0, Lokhttp3/internal/g/a;->dbN:Lokhttp3/internal/g/e;

    iput-object p5, p0, Lokhttp3/internal/g/a;->dbO:Lokhttp3/internal/g/e;

    return-void
.end method

.method public static Nc()Lokhttp3/internal/g/f;
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    :try_start_1
    new-instance v2, Lokhttp3/internal/g/e;

    const/4 v0, 0x0

    const-string v3, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-direct {v2, v0, v3, v4}, Lokhttp3/internal/g/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v3, Lokhttp3/internal/g/e;

    const/4 v0, 0x0

    const-string v4, "setHostname"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct {v3, v0, v4, v5}, Lokhttp3/internal/g/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-static {}, Lokhttp3/internal/g/a;->supportsAlpn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Lokhttp3/internal/g/e;

    const-class v0, [B

    const-string v5, "getAlpnSelectedProtocol"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {v4, v0, v5, v7}, Lokhttp3/internal/g/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v5, Lokhttp3/internal/g/e;

    const/4 v0, 0x0

    const-string v7, "setAlpnProtocols"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-direct {v5, v0, v7, v8}, Lokhttp3/internal/g/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_1
    new-instance v0, Lokhttp3/internal/g/a;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/g/a;-><init>(Ljava/lang/Class;Lokhttp3/internal/g/e;Lokhttp3/internal/g/e;Lokhttp3/internal/g/e;Lokhttp3/internal/g/e;)V

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2

    :cond_0
    move-object v5, v6

    move-object v4, v6

    goto :goto_1
.end method

.method private api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lokhttp3/internal/g/f;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/g/a;->api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static supportsAlpn()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "GMSCore_OpenSSL"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "android.net.Network"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/h/c;
    .locals 6

    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "checkServerTrusted"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v0, Lokhttp3/internal/g/a$a;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/g/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lokhttp3/internal/g/f;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/h/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/h/e;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Lokhttp3/internal/g/a$b;

    invoke-direct {v0, p1, v1}, Lokhttp3/internal/g/a$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lokhttp3/internal/g/f;->b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/h/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbL:Lokhttp3/internal/g/e;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lokhttp3/internal/g/e;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbM:Lokhttp3/internal/g/e;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lokhttp3/internal/g/e;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/g/a;->dbO:Lokhttp3/internal/g/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbO:Lokhttp3/internal/g/e;

    invoke-virtual {v0, p1}, Lokhttp3/internal/g/e;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ld/c;

    invoke-direct {v4}, Ld/c;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/u;

    sget-object v6, Lokhttp3/u;->cZe:Lokhttp3/u;

    if-eq v0, v6, :cond_1

    invoke-virtual {v0}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ld/c;->fV(I)Ld/c;

    invoke-virtual {v0}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ld/c;->fE(Ljava/lang/String;)Ld/c;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ld/c;->KA()[B

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbO:Lokhttp3/internal/g/e;

    invoke-virtual {v0, p1, v3}, Lokhttp3/internal/g/e;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lokhttp3/internal/c;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_2
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    throw v0
.end method

.method public final getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbN:Lokhttp3/internal/g/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/g/a;->dbN:Lokhttp3/internal/g/e;

    invoke-virtual {v0, p1}, Lokhttp3/internal/g/e;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/g/a;->dbN:Lokhttp3/internal/g/e;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/g/e;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/c;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbP:Lokhttp3/internal/g/a$c;

    invoke-virtual {v0, p1}, Lokhttp3/internal/g/a$c;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/g/a;->api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    invoke-super {p0, p1}, Lokhttp3/internal/g/f;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string v1, "unable to determine cleartext support"

    invoke-static {v1, v0}, Lokhttp3/internal/c;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    move v4, v0

    :goto_0
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    :goto_2
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v5, "OkHttp"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v0, :cond_4

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public final logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/g/a;->dbP:Lokhttp3/internal/g/a$c;

    invoke-virtual {v0, p2}, Lokhttp3/internal/g/a$c;->warnIfOpen(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lokhttp3/internal/g/a;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
