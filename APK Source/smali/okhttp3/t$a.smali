.class public final Lokhttp3/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field cVY:Lokhttp3/m;

.field cVZ:Lokhttp3/b;

.field cWa:Lokhttp3/f;

.field public cWc:Lokhttp3/internal/a/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cWw:Lokhttp3/internal/h/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cYY:Lokhttp3/l;

.field cYZ:Lokhttp3/n$a;

.field cZa:Lokhttp3/k;

.field public cZb:Lokhttp3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cZc:Lokhttp3/b;

.field cZd:Lokhttp3/h;

.field public connectTimeout:I

.field public connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation
.end field

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/r;",
            ">;"
        }
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/r;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxySelector:Ljava/net/ProxySelector;

.field public readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->networkInterceptors:Ljava/util/List;

    new-instance v0, Lokhttp3/l;

    invoke-direct {v0}, Lokhttp3/l;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->cYY:Lokhttp3/l;

    sget-object v0, Lokhttp3/t;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/t$a;->protocols:Ljava/util/List;

    sget-object v0, Lokhttp3/t;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/t$a;->connectionSpecs:Ljava/util/List;

    sget-object v0, Lokhttp3/n;->cYO:Lokhttp3/n;

    invoke-static {v0}, Lokhttp3/n;->a(Lokhttp3/n;)Lokhttp3/n$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->cYZ:Lokhttp3/n$a;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->proxySelector:Ljava/net/ProxySelector;

    sget-object v0, Lokhttp3/k;->cYM:Lokhttp3/k;

    iput-object v0, p0, Lokhttp3/t$a;->cZa:Lokhttp3/k;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->socketFactory:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/internal/h/d;->dbT:Lokhttp3/internal/h/d;

    iput-object v0, p0, Lokhttp3/t$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp3/f;->cWv:Lokhttp3/f;

    iput-object v0, p0, Lokhttp3/t$a;->cWa:Lokhttp3/f;

    sget-object v0, Lokhttp3/b;->cWb:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/t$a;->cVZ:Lokhttp3/b;

    sget-object v0, Lokhttp3/b;->cWb:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/t$a;->cZc:Lokhttp3/b;

    new-instance v0, Lokhttp3/h;

    invoke-direct {v0}, Lokhttp3/h;-><init>()V

    iput-object v0, p0, Lokhttp3/t$a;->cZd:Lokhttp3/h;

    sget-object v0, Lokhttp3/m;->cYN:Lokhttp3/m;

    iput-object v0, p0, Lokhttp3/t$a;->cVY:Lokhttp3/m;

    iput-boolean v1, p0, Lokhttp3/t$a;->followSslRedirects:Z

    iput-boolean v1, p0, Lokhttp3/t$a;->followRedirects:Z

    iput-boolean v1, p0, Lokhttp3/t$a;->retryOnConnectionFailure:Z

    iput v2, p0, Lokhttp3/t$a;->connectTimeout:I

    iput v2, p0, Lokhttp3/t$a;->readTimeout:I

    iput v2, p0, Lokhttp3/t$a;->writeTimeout:I

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/t$a;->pingInterval:I

    return-void
.end method


# virtual methods
.method public final E(Ljava/util/List;)Lokhttp3/t$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/u;",
            ">;)",
            "Lokhttp3/t$a;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lokhttp3/u;->cZf:Lokhttp3/u;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lokhttp3/u;->cZe:Lokhttp3/u;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocols must not contain http/1.0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lokhttp3/u;->cZg:Lokhttp3/u;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/t$a;->protocols:Ljava/util/List;

    return-object p0
.end method
