.class public final Lokhttp3/internal/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/b/f$a;
    }
.end annotation


# instance fields
.field final cYG:Lokhttp3/internal/b/d;

.field private final cZl:Lokhttp3/n;

.field final cZz:Lokhttp3/a;

.field private final daf:Lokhttp3/e;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/aa;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/a;Lokhttp3/internal/b/d;Lokhttp3/e;Lokhttp3/n;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/b/f;->proxies:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/b/f;->inetSocketAddresses:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/b/f;->postponedRoutes:Ljava/util/List;

    iput-object p1, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iput-object p2, p0, Lokhttp3/internal/b/f;->cYG:Lokhttp3/internal/b/d;

    iput-object p3, p0, Lokhttp3/internal/b/f;->daf:Lokhttp3/e;

    iput-object p4, p0, Lokhttp3/internal/b/f;->cZl:Lokhttp3/n;

    iget-object v0, p1, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v1, p1, Lokhttp3/a;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    :goto_0
    iput-object v0, v1, Lokhttp3/internal/b/f;->proxies:Ljava/util/List;

    iput v2, p0, Lokhttp3/internal/b/f;->nextProxyIndex:I

    return-void

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Lokhttp3/q;->uri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/b/f;->nextProxyIndex:I

    iget-object v1, p0, Lokhttp3/internal/b/f;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/b/f;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v1, v0, Lokhttp3/q;->host:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget v0, v0, Lokhttp3/q;->port:I

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    const v0, 0xffff

    if-le v2, v0, :cond_5

    :cond_1
    new-instance v0, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No route to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lokhttp3/internal/b/f;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Lokhttp3/n;->Mg()V

    iget-object v0, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->cVY:Lokhttp3/m;

    invoke-interface {v0, v1}, Lokhttp3/m;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v3, v3, Lokhttp3/a;->cVY:Lokhttp3/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned no addresses for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {}, Lokhttp3/n;->Mh()V

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v5, p0, Lokhttp3/internal/b/f;->inetSocketAddresses:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final MO()Lokhttp3/internal/b/f$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/internal/b/f;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/b/f;->hasNextProxy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lokhttp3/internal/b/f;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v2, v2, Lokhttp3/a;->cVX:Lokhttp3/q;

    iget-object v2, v2, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/b/f;->proxies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/b/f;->proxies:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/b/f;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/b/f;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lokhttp3/internal/b/f;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/b/f;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    new-instance v5, Lokhttp3/aa;

    iget-object v6, p0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v1, p0, Lokhttp3/internal/b/f;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v6, v0, v1}, Lokhttp3/aa;-><init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, Lokhttp3/internal/b/f;->cYG:Lokhttp3/internal/b/d;

    invoke-virtual {v1, v5}, Lokhttp3/internal/b/d;->c(Lokhttp3/aa;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/b/f;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/b/f;->postponedRoutes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lokhttp3/internal/b/f;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    new-instance v0, Lokhttp3/internal/b/f$a;

    invoke-direct {v0, v3}, Lokhttp3/internal/b/f$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lokhttp3/internal/b/f;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/f;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
