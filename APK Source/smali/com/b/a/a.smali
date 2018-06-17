.class public final Lcom/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final b:Ljava/lang/String;

.field public final bCF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public final bFL:Ljava/net/Proxy;

.field public final bFM:Ljavax/net/SocketFactory;

.field public final bFN:Ljavax/net/ssl/SSLSocketFactory;

.field public final bFO:Ljavax/net/ssl/HostnameVerifier;

.field public final bFP:Lcom/b/a/j;

.field public final bFQ:Lcom/b/a/e;

.field public final bFR:Ljava/net/ProxySelector;

.field public final c:I

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/b/a/j;Lcom/b/a/e;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/b/a/j;",
            "Lcom/b/a/e;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/y;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/p;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uriPort <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p9, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p11, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p8, p0, Lcom/b/a/a;->bFL:Ljava/net/Proxy;

    iput-object p1, p0, Lcom/b/a/a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/b/a/a;->c:I

    iput-object p3, p0, Lcom/b/a/a;->bFM:Ljavax/net/SocketFactory;

    iput-object p4, p0, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p5, p0, Lcom/b/a/a;->bFO:Ljavax/net/ssl/HostnameVerifier;

    iput-object p6, p0, Lcom/b/a/a;->bFP:Lcom/b/a/j;

    iput-object p7, p0, Lcom/b/a/a;->bFQ:Lcom/b/a/e;

    invoke-static {p9}, Lcom/b/a/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->bCF:Ljava/util/List;

    invoke-static {p10}, Lcom/b/a/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/b/a/a;->bFR:Ljava/net/ProxySelector;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/a;

    iget-object v1, p0, Lcom/b/a/a;->bFL:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/b/a/a;->bFL:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/b/a/a;->c:I

    iget v2, p1, Lcom/b/a/a;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bFO:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/b/a/a;->bFO:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bFP:Lcom/b/a/j;

    iget-object v2, p1, Lcom/b/a/a;->bFP:Lcom/b/a/j;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bFQ:Lcom/b/a/e;

    iget-object v2, p1, Lcom/b/a/a;->bFQ:Lcom/b/a/e;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bCF:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/a;->bCF:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/b/a/a;->j:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bFR:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/b/a/a;->bFR:Ljava/net/ProxySelector;

    invoke-static {v1, v2}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/b/a/a;->bFL:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a;->bFL:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/b/a/a;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a;->bFN:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/b/a/a;->bFO:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a;->bFO:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/b/a/a;->bFP:Lcom/b/a/j;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/b/a/a;->bFP:Lcom/b/a/j;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->bFQ:Lcom/b/a/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->bCF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a;->bFR:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
