.class public final Lcom/b/a/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/g$a;
    }
.end annotation


# static fields
.field public static final bJb:Lcom/b/a/b;


# instance fields
.field public b:J

.field public final bJc:Lcom/b/a/x;

.field public bJd:Lcom/b/a/m;

.field public bJe:Lcom/b/a/a;

.field public bJf:Lcom/b/a/a/a/p;

.field public bJg:Lcom/b/a/c;

.field public final bJh:Lcom/b/a/ac;

.field public bJi:Lcom/b/a/a/a/t;

.field public final bJj:Lcom/b/a/aa;

.field public bJk:Lcom/b/a/aa;

.field public bJl:Lcom/b/a/ac;

.field public bJm:Lcom/b/a/ac;

.field public bJn:Lb/r;

.field public bJo:Lb/d;

.field public bJp:Lcom/b/a/a/a/b;

.field public bJq:Lcom/b/a/a/a/c;

.field public bqW:Z

.field public brj:Z

.field public final c:Z

.field public final s:Z

.field public final t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/a/g$1;

    invoke-direct {v0}, Lcom/b/a/a/a/g$1;-><init>()V

    sput-object v0, Lcom/b/a/a/a/g;->bJb:Lcom/b/a/b;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/ac;)V
    .locals 11

    iget-object v0, p2, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/b/a/a/a/g;-><init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/a/a/n;Lcom/b/a/ac;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/b/a/x;Lcom/b/a/aa;ZZZZLcom/b/a/m;Lcom/b/a/a/a/p;Lcom/b/a/a/a/n;Lcom/b/a/ac;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/a/g;->b:J

    iput-object p1, p0, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iput-object p2, p0, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iput-boolean p3, p0, Lcom/b/a/a/a/g;->bqW:Z

    iput-boolean p4, p0, Lcom/b/a/a/a/g;->c:Z

    iput-boolean p5, p0, Lcom/b/a/a/a/g;->s:Z

    iput-boolean p6, p0, Lcom/b/a/a/a/g;->t:Z

    iput-object p7, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iput-object p8, p0, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    iput-object p9, p0, Lcom/b/a/a/a/g;->bJn:Lb/r;

    iput-object p10, p0, Lcom/b/a/a/a/g;->bJh:Lcom/b/a/ac;

    if-eqz p7, :cond_0

    sget-object v0, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    invoke-virtual {v0, p7, p0}, Lcom/b/a/a/b;->b(Lcom/b/a/m;Lcom/b/a/a/a/g;)V

    iget-object v0, p7, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iput-object v0, p0, Lcom/b/a/a/a/g;->bJg:Lcom/b/a/c;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/g;->bJg:Lcom/b/a/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/a/a/g;Lcom/b/a/aa;)Lcom/b/a/aa;
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/a/a/g;)Lcom/b/a/m;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    return-object v0
.end method

.method public static a(Lcom/b/a/t;Lcom/b/a/t;)Lcom/b/a/t;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lcom/b/a/t$a;

    invoke-direct {v2}, Lcom/b/a/t$a;-><init>()V

    iget-object v1, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    invoke-static {v4}, Lcom/b/a/a/a/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v2, v4, v5}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/b/a/a/a/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/ac;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    iget-object v2, v2, Lcom/b/a/aa;->b:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/b/a/ac;->c:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/b/a/a/a/j;->i(Lcom/b/a/ac;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/b/a/ac;Lcom/b/a/ac;)Z
    .locals 6

    const/4 v0, 0x1

    iget v1, p1, Lcom/b/a/ac;->c:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lcom/b/a/t;->dH(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lcom/b/a/t;->dH(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/a/a/g;)Lcom/b/a/a/a/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/a/a/g;)Lcom/b/a/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/a/a/g;->zF()Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/a/i;->dD(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Lcom/b/a/ac;)Lcom/b/a/ac;
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/b/a/a/a/p;Ljava/io/IOException;)V
    .locals 4

    sget-object v0, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    invoke-virtual {v0, v1}, Lcom/b/a/a/b;->c(Lcom/b/a/m;)I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iget-object v1, v1, Lcom/b/a/a;->bFR:Ljava/net/ProxySelector;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iget-object v1, v1, Lcom/b/a/a;->bFR:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/b/a/a/a/p;->bJB:Ljava/net/URI;

    iget-object v3, v0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_1
    iget-object v1, p1, Lcom/b/a/a/a/p;->bJD:Lcom/b/a/a/h;

    invoke-virtual {v1, v0}, Lcom/b/a/a/h;->a(Lcom/b/a/c;)V

    goto :goto_0
.end method

.method public final a(Lcom/b/a/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLX:Ljava/net/CookieHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-virtual {v1}, Lcom/b/a/aa;->Ad()Ljava/net/URI;

    move-result-object v1

    invoke-static {p1}, Lcom/b/a/a/a/j;->d(Lcom/b/a/t;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-wide v0, p0, Lcom/b/a/a/a/g;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/a/g;->b:J

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    iget-object v0, v0, Lcom/b/a/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/a/a/h;->dF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/a/g;->bqW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/net/URL;)Z
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-virtual {v0}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Lcom/b/a/ac;)Lcom/b/a/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/g;->brj:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p1, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Lb/j;

    iget-object v1, p1, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v1}, Lcom/b/a/b;->zp()Lb/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/j;-><init>(Lb/s;)V

    iget-object v1, p1, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-virtual {v1}, Lcom/b/a/t;->Ab()Lcom/b/a/t$a;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/b/a/t$a;->dI(Ljava/lang/String;)Lcom/b/a/t$a;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/b/a/t$a;->dI(Ljava/lang/String;)Lcom/b/a/t$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b/a/ac$a;->e(Lcom/b/a/t;)Lcom/b/a/ac$a;

    move-result-object v2

    new-instance v3, Lcom/b/a/a/a/k;

    invoke-static {v0}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/b/a/a/a/k;-><init>(Lcom/b/a/t;Lb/e;)V

    iput-object v3, v2, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object p1

    goto :goto_0
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    invoke-interface {v0}, Lcom/b/a/a/a/t;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    invoke-interface {v0, p0}, Lcom/b/a/a/a/t;->d(Lcom/b/a/a/a/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final zC()Lcom/b/a/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b/a/a/a/o;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v2, v0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    :goto_0
    iget-object v0, p0, Lcom/b/a/a/a/g;->bJe:Lcom/b/a/a;

    invoke-virtual {v2, v0}, Lcom/b/a/o;->a(Lcom/b/a/a;)Lcom/b/a/m;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    iget-object v1, v1, Lcom/b/a/aa;->b:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    invoke-virtual {v1, v0}, Lcom/b/a/a/b;->d(Lcom/b/a/m;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/a/g;->bJf:Lcom/b/a/a/a/p;

    :goto_2
    invoke-virtual {v1}, Lcom/b/a/a/a/p;->e()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/b/a/a/a/p;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/b/a/a/a/p;->xi()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/b/a/a/a/o;

    invoke-direct {v1, v0}, Lcom/b/a/a/a/o;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/b/a/a/a/p;->bJG:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c;

    move-object v1, v0

    :goto_3
    new-instance v0, Lcom/b/a/m;

    invoke-direct {v0, v2, v1}, Lcom/b/a/m;-><init>(Lcom/b/a/o;Lcom/b/a/c;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/b/a/a/a/p;->c()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No route to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iget-object v3, v3, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, v1, Lcom/b/a/a/a/p;->bzS:Ljava/util/List;

    iget v3, v1, Lcom/b/a/a/a/p;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/b/a/a/a/p;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-virtual {v1, v0}, Lcom/b/a/a/a/p;->a(Ljava/net/Proxy;)V

    iput-object v0, v1, Lcom/b/a/a/a/p;->bJE:Ljava/net/Proxy;

    :cond_6
    invoke-virtual {v1}, Lcom/b/a/a/a/p;->e()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No route to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iget-object v3, v3, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; exhausted inet socket addresses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/b/a/a/a/p;->j:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, v1, Lcom/b/a/a/a/p;->j:Ljava/util/List;

    iget v3, v1, Lcom/b/a/a/a/p;->bCG:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/b/a/a/a/p;->bCG:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, v1, Lcom/b/a/a/a/p;->bJF:Ljava/net/InetSocketAddress;

    new-instance v0, Lcom/b/a/c;

    iget-object v3, v1, Lcom/b/a/a/a/p;->bFS:Lcom/b/a/a;

    iget-object v4, v1, Lcom/b/a/a/a/p;->bJE:Ljava/net/Proxy;

    iget-object v5, v1, Lcom/b/a/a/a/p;->bJF:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v3, v4, v5}, Lcom/b/a/c;-><init>(Lcom/b/a/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v3, v1, Lcom/b/a/a/a/p;->bJD:Lcom/b/a/a/h;

    invoke-virtual {v3, v0}, Lcom/b/a/a/h;->c(Lcom/b/a/c;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/b/a/a/a/p;->bJG:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_8
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public final zD()Lcom/b/a/ac;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    return-object v0
.end method

.method public final zE()Lcom/b/a/m;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJo:Lb/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJo:Lb/d;

    invoke-static {v1}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v1, v1, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v1}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    :cond_1
    iput-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/b/a/a/a/g;->bJn:Lb/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJn:Lb/r;

    invoke-static {v1}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/b/a/a/a/g;->bJm:Lcom/b/a/ac;

    iget-object v1, v1, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-static {v1}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    invoke-interface {v1}, Lcom/b/a/a/a/t;->d()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v1, v1, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v1}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v2, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    invoke-virtual {v1, v2}, Lcom/b/a/a/b;->b(Lcom/b/a/m;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    :cond_5
    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iput-object v0, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    move-object v0, v1

    goto :goto_1
.end method

.method public final zF()Lcom/b/a/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    invoke-interface {v0}, Lcom/b/a/a/a/t;->a()V

    iget-object v0, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    invoke-interface {v0}, Lcom/b/a/a/a/t;->zG()Lcom/b/a/ac$a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJk:Lcom/b/a/aa;

    iput-object v1, v0, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iget-object v1, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v1, v1, Lcom/b/a/m;->bIm:Lcom/b/a/s;

    iput-object v1, v0, Lcom/b/a/ac$a;->bMx:Lcom/b/a/s;

    sget-object v1, Lcom/b/a/a/a/j;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/b/a/a/a/g;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/ac$a;->R(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ac$a;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/a/j;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/ac$a;->R(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ac$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v0

    iget-boolean v1, p0, Lcom/b/a/a/a/g;->t:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/a/g;->bJi:Lcom/b/a/a/a/t;

    invoke-interface {v2, v0}, Lcom/b/a/a/a/t;->h(Lcom/b/a/ac;)Lcom/b/a/b;

    move-result-object v0

    iput-object v0, v1, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    invoke-virtual {v1}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v2, p0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v3, v0, Lcom/b/a/ac;->bMk:Lcom/b/a/y;

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/m;Lcom/b/a/y;)V

    return-object v0
.end method
