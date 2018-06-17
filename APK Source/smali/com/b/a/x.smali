.class public Lcom/b/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private static bLU:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field final bCF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public bFR:Ljava/net/ProxySelector;

.field public bJE:Ljava/net/Proxy;

.field final bLV:Lcom/b/a/a/h;

.field public bLW:Lcom/b/a/r;

.field public bLX:Ljava/net/CookieHandler;

.field bLY:Lcom/b/a/a/c;

.field private bLZ:Lcom/b/a/f;

.field public bMa:Ljavax/net/SocketFactory;

.field public bMb:Ljavax/net/ssl/SSLSocketFactory;

.field public bMc:Ljavax/net/ssl/HostnameVerifier;

.field public bMd:Lcom/b/a/j;

.field public bMe:Lcom/b/a/e;

.field public bMf:Lcom/b/a/o;

.field private bMg:Lcom/b/a/a/e;

.field public bMh:Z

.field public bMi:Z

.field bMj:I

.field public bzR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public bzS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Lcom/b/a/y;

    sget-object v1, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/b/a/a/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/x;->a:Ljava/util/List;

    new-array v0, v5, [Lcom/b/a/p;

    sget-object v1, Lcom/b/a/p;->bLL:Lcom/b/a/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/p;->bLM:Lcom/b/a/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/p;->bLN:Lcom/b/a/p;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/b/a/a/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/x;->b:Ljava/util/List;

    new-instance v0, Lcom/b/a/x$1;

    invoke-direct {v0}, Lcom/b/a/x$1;-><init>()V

    sput-object v0, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/x;->bCF:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/x;->j:Ljava/util/List;

    iput-boolean v1, p0, Lcom/b/a/x;->v:Z

    iput-boolean v1, p0, Lcom/b/a/x;->bMh:Z

    iput-boolean v1, p0, Lcom/b/a/x;->bMi:Z

    new-instance v0, Lcom/b/a/a/h;

    invoke-direct {v0}, Lcom/b/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/b/a/x;->bLV:Lcom/b/a/a/h;

    new-instance v0, Lcom/b/a/r;

    invoke-direct {v0}, Lcom/b/a/r;-><init>()V

    iput-object v0, p0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    return-void
.end method

.method private constructor <init>(Lcom/b/a/x;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/x;->bCF:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/x;->j:Ljava/util/List;

    iput-boolean v1, p0, Lcom/b/a/x;->v:Z

    iput-boolean v1, p0, Lcom/b/a/x;->bMh:Z

    iput-boolean v1, p0, Lcom/b/a/x;->bMi:Z

    iget-object v0, p1, Lcom/b/a/x;->bLV:Lcom/b/a/a/h;

    iput-object v0, p0, Lcom/b/a/x;->bLV:Lcom/b/a/a/h;

    iget-object v0, p1, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    iput-object v0, p0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    iget-object v0, p1, Lcom/b/a/x;->bJE:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/b/a/x;->bJE:Ljava/net/Proxy;

    iget-object v0, p1, Lcom/b/a/x;->bzR:Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/x;->bzR:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/x;->bzS:Ljava/util/List;

    iput-object v0, p0, Lcom/b/a/x;->bzS:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/x;->bCF:Ljava/util/List;

    iget-object v1, p1, Lcom/b/a/x;->bCF:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/b/a/x;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/b/a/x;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/b/a/x;->bFR:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/b/a/x;->bFR:Ljava/net/ProxySelector;

    iget-object v0, p1, Lcom/b/a/x;->bLX:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/b/a/x;->bLX:Ljava/net/CookieHandler;

    iget-object v0, p1, Lcom/b/a/x;->bLZ:Lcom/b/a/f;

    iput-object v0, p0, Lcom/b/a/x;->bLZ:Lcom/b/a/f;

    iget-object v0, p0, Lcom/b/a/x;->bLZ:Lcom/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/x;->bLZ:Lcom/b/a/f;

    iget-object v0, v0, Lcom/b/a/f;->bGa:Lcom/b/a/a/c;

    :goto_0
    iput-object v0, p0, Lcom/b/a/x;->bLY:Lcom/b/a/a/c;

    iget-object v0, p1, Lcom/b/a/x;->bMa:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/b/a/x;->bMa:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lcom/b/a/x;->bMb:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/b/a/x;->bMb:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lcom/b/a/x;->bMc:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/b/a/x;->bMc:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lcom/b/a/x;->bMd:Lcom/b/a/j;

    iput-object v0, p0, Lcom/b/a/x;->bMd:Lcom/b/a/j;

    iget-object v0, p1, Lcom/b/a/x;->bMe:Lcom/b/a/e;

    iput-object v0, p0, Lcom/b/a/x;->bMe:Lcom/b/a/e;

    iget-object v0, p1, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    iput-object v0, p0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    iget-object v0, p1, Lcom/b/a/x;->bMg:Lcom/b/a/a/e;

    iput-object v0, p0, Lcom/b/a/x;->bMg:Lcom/b/a/a/e;

    iget-boolean v0, p1, Lcom/b/a/x;->v:Z

    iput-boolean v0, p0, Lcom/b/a/x;->v:Z

    iget-boolean v0, p1, Lcom/b/a/x;->bMh:Z

    iput-boolean v0, p0, Lcom/b/a/x;->bMh:Z

    iget-boolean v0, p1, Lcom/b/a/x;->bMi:Z

    iput-boolean v0, p0, Lcom/b/a/x;->bMi:Z

    iget v0, p1, Lcom/b/a/x;->y:I

    iput v0, p0, Lcom/b/a/x;->y:I

    iget v0, p1, Lcom/b/a/x;->z:I

    iput v0, p0, Lcom/b/a/x;->z:I

    iget v0, p1, Lcom/b/a/x;->bMj:I

    iput v0, p0, Lcom/b/a/x;->bMj:I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/b/a/x;->bLY:Lcom/b/a/a/c;

    goto :goto_0
.end method

.method private declared-synchronized Ai()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/b/a/x;->bLU:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/b/a/x;->bLU:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    sget-object v0, Lcom/b/a/x;->bLU:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Aj()Lcom/b/a/x;
    .locals 1

    new-instance v0, Lcom/b/a/x;

    invoke-direct {v0, p0}, Lcom/b/a/x;-><init>(Lcom/b/a/x;)V

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/x;)Lcom/b/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/x;->bMg:Lcom/b/a/a/e;

    return-object v0
.end method


# virtual methods
.method public final Af()Lcom/b/a/x;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/x;->bLZ:Lcom/b/a/f;

    iput-object v0, p0, Lcom/b/a/x;->bLY:Lcom/b/a/a/c;

    return-object p0
.end method

.method public final Ag()Lcom/b/a/o;
    .locals 1

    iget-object v0, p0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    return-object v0
.end method

.method public final Ah()Lcom/b/a/x;
    .locals 2

    invoke-direct {p0}, Lcom/b/a/x;->Aj()Lcom/b/a/x;

    move-result-object v0

    iget-object v1, v0, Lcom/b/a/x;->bFR:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/x;->bFR:Ljava/net/ProxySelector;

    :cond_0
    iget-object v1, v0, Lcom/b/a/x;->bLX:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/x;->bLX:Ljava/net/CookieHandler;

    :cond_1
    iget-object v1, v0, Lcom/b/a/x;->bMa:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/x;->bMa:Ljavax/net/SocketFactory;

    :cond_2
    iget-object v1, v0, Lcom/b/a/x;->bMb:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/b/a/x;->Ai()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/x;->bMb:Ljavax/net/ssl/SSLSocketFactory;

    :cond_3
    iget-object v1, v0, Lcom/b/a/x;->bMc:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    sget-object v1, Lcom/b/a/a/c/b;->bLJ:Lcom/b/a/a/c/b;

    iput-object v1, v0, Lcom/b/a/x;->bMc:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    iget-object v1, v0, Lcom/b/a/x;->bMd:Lcom/b/a/j;

    if-nez v1, :cond_5

    sget-object v1, Lcom/b/a/j;->bGk:Lcom/b/a/j;

    iput-object v1, v0, Lcom/b/a/x;->bMd:Lcom/b/a/j;

    :cond_5
    iget-object v1, v0, Lcom/b/a/x;->bMe:Lcom/b/a/e;

    if-nez v1, :cond_6

    sget-object v1, Lcom/b/a/a/a/a;->bIJ:Lcom/b/a/e;

    iput-object v1, v0, Lcom/b/a/x;->bMe:Lcom/b/a/e;

    :cond_6
    iget-object v1, v0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    if-nez v1, :cond_7

    invoke-static {}, Lcom/b/a/o;->zt()Lcom/b/a/o;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    :cond_7
    iget-object v1, v0, Lcom/b/a/x;->bzR:Ljava/util/List;

    if-nez v1, :cond_8

    sget-object v1, Lcom/b/a/x;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/b/a/x;->bzR:Ljava/util/List;

    :cond_8
    iget-object v1, v0, Lcom/b/a/x;->bzS:Ljava/util/List;

    if-nez v1, :cond_9

    sget-object v1, Lcom/b/a/x;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/b/a/x;->bzS:Ljava/util/List;

    :cond_9
    iget-object v1, v0, Lcom/b/a/x;->bMg:Lcom/b/a/a/e;

    if-nez v1, :cond_a

    sget-object v1, Lcom/b/a/a/e;->bIt:Lcom/b/a/a/e;

    iput-object v1, v0, Lcom/b/a/x;->bMg:Lcom/b/a/a/e;

    :cond_a
    return-object v0
.end method

.method public final a(Lcom/b/a/r;)Lcom/b/a/x;
    .locals 0

    iput-object p1, p0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    return-object p0
.end method

.method public final a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;
    .locals 0

    iput-object p1, p0, Lcom/b/a/x;->bMb:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/b/a/x;->y:I

    return-void
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)V
    .locals 8

    const-wide/16 v6, 0x4e20

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, v6, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/b/a/x;->bMj:I

    return-void
.end method

.method public final b(Lcom/b/a/o;)Lcom/b/a/x;
    .locals 0

    iput-object p1, p0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    return-object p0
.end method

.method public final b(Ljavax/net/ssl/HostnameVerifier;)Lcom/b/a/x;
    .locals 0

    iput-object p1, p0, Lcom/b/a/x;->bMc:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/b/a/x;->z:I

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/x;->Aj()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/aa;)Lcom/b/a/h;
    .locals 1

    new-instance v0, Lcom/b/a/h;

    invoke-direct {v0, p0, p1}, Lcom/b/a/h;-><init>(Lcom/b/a/x;Lcom/b/a/aa;)V

    return-object v0
.end method

.method public final x(Ljava/util/List;)Lcom/b/a/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/y;",
            ">;)",
            "Lcom/b/a/x;"
        }
    .end annotation

    invoke-static {p1}, Lcom/b/a/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/b/a/y;->bMk:Lcom/b/a/y;

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
    sget-object v1, Lcom/b/a/y;->bJR:Lcom/b/a/y;

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
    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/x;->bzR:Ljava/util/List;

    return-object p0
.end method
