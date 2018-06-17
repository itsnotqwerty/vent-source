.class public final Lcom/b/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/e;


# static fields
.field public static final bIJ:Lcom/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/a/a;

    invoke-direct {v0}, Lcom/b/a/a/a/a;-><init>()V

    sput-object v0, Lcom/b/a/a/a/a;->bIJ:Lcom/b/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/net/Proxy;Lcom/b/a/ac;)Lcom/b/a/aa;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/b/a/ac;->j()Ljava/util/List;

    move-result-object v9

    iget-object v10, p2, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    invoke-virtual {v10}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v8, v0

    :goto_0
    if-ge v8, v11, :cond_1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/b/a/k;

    const-string v0, "Basic"

    iget-object v1, v5, Lcom/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6}, Lcom/b/a/a/a/a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v6}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v2

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/b/a/k;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/b/a/k;->a:Ljava/lang/String;

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Ljava/net/Proxy;Lcom/b/a/ac;)Lcom/b/a/aa;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/b/a/ac;->j()Ljava/util/List;

    move-result-object v9

    iget-object v10, p2, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    invoke-virtual {v10}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v8, v0

    :goto_0
    if-ge v8, v11, :cond_1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/b/a/k;

    const-string v0, "Basic"

    iget-object v1, v5, Lcom/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6}, Lcom/b/a/a/a/a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/b/a/k;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/b/a/k;->a:Ljava/lang/String;

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/b/a/aa;->Ak()Lcom/b/a/aa$a;

    move-result-object v1

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2, v0}, Lcom/b/a/aa$a;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
