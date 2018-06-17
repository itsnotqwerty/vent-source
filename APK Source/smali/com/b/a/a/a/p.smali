.class public final Lcom/b/a/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field bCG:I

.field final bFS:Lcom/b/a/a;

.field private final bGe:Lcom/b/a/x;

.field final bJB:Ljava/net/URI;

.field private final bJC:Lcom/b/a/a/e;

.field final bJD:Lcom/b/a/a/h;

.field bJE:Ljava/net/Proxy;

.field bJF:Ljava/net/InetSocketAddress;

.field final bJG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field bzS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/a;Ljava/net/URI;Lcom/b/a/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/p;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/p;->bJG:Ljava/util/List;

    iput-object p1, p0, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/a/a/p;->bJB:Ljava/net/URI;

    iput-object p3, p0, Lcom/b/a/a/a/p;->bGe:Lcom/b/a/x;

    sget-object v0, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    invoke-virtual {v0, p3}, Lcom/b/a/a/b;->b(Lcom/b/a/x;)Lcom/b/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/p;->bJD:Lcom/b/a/a/h;

    sget-object v0, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    invoke-virtual {v0, p3}, Lcom/b/a/a/b;->c(Lcom/b/a/x;)Lcom/b/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/p;->bJC:Lcom/b/a/a/e;

    iget-object v0, p1, Lcom/b/a/a;->bFL:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/a/p;->i:I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/a/a/p;->bGe:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bFR:Ljava/net/ProxySelector;

    invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/net/Proxy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/p;->j:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iget-object v1, v0, Lcom/b/a/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/a/a/p;->bJB:Ljava/net/URI;

    invoke-static {v0}, Lcom/b/a/a/i;->g(Ljava/net/URI;)I

    move-result v0

    move v3, v0

    :goto_0
    if-lez v3, :cond_1

    const v0, 0xffff

    if-le v3, v0, :cond_5

    :cond_1
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No route to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/b/a/a/a/p;->bJC:Lcom/b/a/a/e;

    invoke-interface {v0, v1}, Lcom/b/a/a/e;->dC(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v5, v1, v0

    iget-object v6, p0, Lcom/b/a/a/a/p;->j:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iput v2, p0, Lcom/b/a/a/a/p;->bCG:I

    return-void
.end method

.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/a/p;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/a/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/a/p;->xi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 2

    iget v0, p0, Lcom/b/a/a/a/p;->i:I

    iget-object v1, p0, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

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

.method final e()Z
    .locals 2

    iget v0, p0, Lcom/b/a/a/a/p;->bCG:I

    iget-object v1, p0, Lcom/b/a/a/a/p;->j:Ljava/util/List;

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

.method final xi()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/p;->bJG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
