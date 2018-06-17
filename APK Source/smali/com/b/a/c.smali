.class public final Lcom/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final bFS:Lcom/b/a/a;

.field public final bFT:Ljava/net/Proxy;

.field public final bFU:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/b/a/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
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
    iput-object p1, p0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iput-object p2, p0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/b/a/c;->bFU:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/c;

    iget-object v1, p0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    iget-object v2, p1, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    invoke-virtual {v1, v2}, Lcom/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c;->bFU:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lcom/b/a/c;->bFU:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c;->bFU:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
