.class public final Lokhttp3/aa;
.super Ljava/lang/Object;


# instance fields
.field public final cZz:Lokhttp3/a;

.field public final inetSocketAddress:Ljava/net/InetSocketAddress;

.field public final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iput-object p2, p0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lokhttp3/aa;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lokhttp3/aa;

    iget-object v0, v0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v1, p0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    invoke-virtual {v0, v1}, Lokhttp3/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lokhttp3/aa;

    iget-object v0, v0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    iget-object v1, p0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/aa;

    iget-object v0, p1, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    invoke-virtual {v0}, Lokhttp3/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final requiresTunnel()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Route{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/aa;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
