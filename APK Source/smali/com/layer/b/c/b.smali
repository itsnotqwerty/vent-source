.class public final Lcom/layer/b/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/c/b$a;
    }
.end annotation


# static fields
.field private static final g:J


# instance fields
.field private final bpE:I

.field protected buA:Lcom/b/a/n;

.field protected buv:Ljava/util/concurrent/ExecutorService;

.field protected buw:Lcom/b/a/x;

.field protected bux:Ljavax/net/ssl/HostnameVerifier;

.field protected buy:Lcom/layer/b/d/a;

.field protected buz:Lcom/layer/b/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "LAYER_TRANSPORT_READ_TIMEOUT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    sput-wide v0, Lcom/layer/b/c/b;->g:J

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    goto :goto_1
.end method

.method public constructor <init>(Lcom/layer/b/d/a;ILjava/util/concurrent/ExecutorService;Lcom/layer/b/c/a;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/b/c/b;->buy:Lcom/layer/b/d/a;

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/layer/b/c/b;->bpE:I

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/layer/b/c/b;->buv:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/layer/b/c/b;->buz:Lcom/layer/b/c/a;

    return-void

    :cond_0
    new-instance v1, Lcom/layer/a/b/c;

    const-string v2, "Transport"

    iget v3, p0, Lcom/layer/b/c/b;->bpE:I

    const-wide/16 v4, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/layer/a/b/c;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V

    move-object p3, v1

    goto :goto_0
.end method

.method private a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;IZ)Lcom/b/a/ac;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/layer/b/c/b$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            "IZ)",
            "Lcom/b/a/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v2, p1

    move-object v1, p0

    :goto_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/b/a/h;->xb()Lcom/b/a/ac;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v1, v8, v0}, Lcom/layer/b/c/b;->a(Lcom/b/a/ac;Z)Lcom/b/a/ac;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v7

    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v8}, Lcom/b/a/ac;->Ap()Lcom/b/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/a/b;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/b/a/h;->c()V

    :cond_1
    if-gtz p6, :cond_3

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Request failed, giving up."

    invoke-static {v1, v7}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    throw v7

    :catch_1
    move-exception v8

    const/4 v10, 0x6

    invoke-static {v10}, Lcom/layer/b/e/a;->a(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    instance-of v8, v7, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/layer/b/e/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "Request failed, regenerating TLS and trying again."

    invoke-static {v8, v7}, Lcom/layer/b/e/a;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    iget-object v7, v1, Lcom/layer/b/c/b;->buz:Lcom/layer/b/c/a;

    invoke-interface {v7}, Lcom/layer/b/c/a;->wP()Lcom/layer/b/c/d;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/layer/b/c/b;->a(Lcom/layer/b/c/d;)Lcom/b/a/x;

    add-int/lit8 p6, p6, -0x1

    goto :goto_0

    :cond_6
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v7, v9}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "unknown.ca"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/layer/b/e/a;->a(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "Received Unknown CA error during SSL handshake"

    invoke-static {v9}, Lcom/layer/b/e/a;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Request failed."

    invoke-static {v1, v7}, Lcom/layer/b/e/a;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    throw v7
.end method

.method private a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/layer/b/c/b$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            ")",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/z;Lcom/b/a/x;)Lcom/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/z;Lcom/b/a/x;)Lcom/b/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/layer/b/c/b$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            "Lcom/b/a/z;",
            "Lcom/b/a/x;",
            ")",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p3}, Lcom/layer/b/e/c;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/c/b;->buy:Lcom/layer/b/d/a;

    new-instance v2, Lcom/b/a/aa$a;

    invoke-direct {v2}, Lcom/b/a/aa$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/layer/b/d/a;->a(Lcom/b/a/aa$a;)Lcom/b/a/aa$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/b/c/b$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa$a;->g(Ljava/net/URL;)Lcom/b/a/aa$a;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/c/b;->buz:Lcom/layer/b/c/a;

    invoke-interface {v1}, Lcom/layer/b/c/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_1
    invoke-static {v0, p4}, Lcom/layer/b/c/b;->a(Lcom/b/a/aa$a;Ljava/util/Map;)V

    if-eqz p6, :cond_2

    invoke-virtual {v0, p6}, Lcom/b/a/aa$a;->a(Lcom/b/a/z;)Lcom/b/a/aa$a;

    :cond_2
    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/layer/b/c/d;)Lcom/b/a/x;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/layer/b/c/c;

    invoke-direct {v0, p1}, Lcom/layer/b/c/c;-><init>(Lcom/layer/b/c/d;)V

    iget-object v1, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Creating new HTTP client"

    invoke-static {v1}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/b/a/r;

    iget-object v2, p0, Lcom/layer/b/c/b;->buv:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/b/a/r;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget v2, p0, Lcom/layer/b/c/b;->bpE:I

    invoke-virtual {v1, v2}, Lcom/b/a/r;->a(I)V

    iget v2, p0, Lcom/layer/b/c/b;->bpE:I

    invoke-virtual {v1, v2}, Lcom/b/a/r;->b(I)V

    new-instance v2, Lcom/b/a/o;

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    iget-object v6, p0, Lcom/layer/b/c/b;->buA:Lcom/b/a/n;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/b/a/o;-><init>(IJLcom/b/a/n;)V

    new-instance v3, Lcom/b/a/x;

    invoke-direct {v3}, Lcom/b/a/x;-><init>()V

    invoke-virtual {v3, v0}, Lcom/b/a/x;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/x;->a(Lcom/b/a/r;)Lcom/b/a/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/b/a/x;->b(Lcom/b/a/o;)Lcom/b/a/x;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/b/a/y;

    const/4 v2, 0x0

    sget-object v3, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/x;->x(Ljava/util/List;)Lcom/b/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/x;->Af()Lcom/b/a/x;

    move-result-object v0

    sget-wide v2, Lcom/layer/b/c/b;->g:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/b/a/x;->b(JLjava/util/concurrent/TimeUnit;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/b/a/x;->a(Ljava/util/concurrent/TimeUnit;)V

    const-wide/16 v2, 0x4e20

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/b/a/x;->a(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    :goto_0
    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Setting new credentials on the HTTP client and clearing the connection pool"

    invoke-static {v1}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v1, v0}, Lcom/b/a/x;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/o;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/b/a/aa$a;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/aa$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/b/a/ac;)Z
    .locals 1

    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/b/a/ac;Z)Lcom/b/a/ac;
    .locals 2

    invoke-virtual {p1}, Lcom/b/a/ac;->c()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/layer/b/c/b;->a(Lcom/b/a/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buz:Lcom/layer/b/c/a;

    const-string v1, "WWW-Authenticate"

    invoke-virtual {p1, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layer/b/c/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/layer/b/c/b;->buz:Lcom/layer/b/c/a;

    invoke-virtual {p1}, Lcom/b/a/ac;->Ao()Lcom/b/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layer/b/c/a;->a(Lcom/b/a/t;)V

    goto :goto_0
.end method

.method public final a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)Lcom/b/a/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/b/a/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Z)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            ")",
            "Lcom/b/a/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/layer/b/c/b$a;->buE:Lcom/layer/b/c/b$a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/layer/b/c/b;->b(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Z)Lcom/b/a/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Lcom/b/a/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/layer/b/c/b$a;->buB:Lcom/layer/b/c/b$a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;IZ)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/i;)Lcom/b/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/layer/b/c/b$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            "Lcom/b/a/i;",
            ")",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/b/a/h;->b(Lcom/b/a/i;)V

    return-object v0
.end method

.method public final a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/z;Lcom/b/a/i;)Lcom/b/a/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/layer/b/c/b$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/z;",
            "Lcom/b/a/i;",
            ")",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Ah()Lcom/b/a/x;

    move-result-object v7

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v0, v1, v2}, Lcom/b/a/x;->b(JLjava/util/concurrent/TimeUnit;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/z;Lcom/b/a/x;)Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/b/a/h;->b(Lcom/b/a/i;)V

    return-object v0
.end method

.method public final a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/i;)Lcom/b/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            "Lcom/b/a/i;",
            ")",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/layer/b/c/b$a;->buE:Lcom/layer/b/c/b$a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/i;)Lcom/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/i;)Lcom/b/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/i;",
            ")",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/layer/b/c/b$a;->buB:Lcom/layer/b/c/b$a;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/i;)Lcom/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/c/b;->buz:Lcom/layer/b/c/a;

    invoke-interface {v0}, Lcom/layer/b/c/a;->wO()Lcom/layer/b/c/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/b/c/b;->a(Lcom/layer/b/c/d;)Lcom/b/a/x;

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->bux:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    iget-object v1, p0, Lcom/layer/b/c/b;->bux:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lcom/b/a/x;->b(Ljavax/net/ssl/HostnameVerifier;)Lcom/b/a/x;

    :cond_0
    return-void
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/c/b;->buA:Lcom/b/a/n;

    return-void
.end method

.method public final a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/b/c/b;->bux:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0, p1}, Lcom/b/a/x;->b(Ljavax/net/ssl/HostnameVerifier;)Lcom/b/a/x;

    :cond_0
    return-void
.end method

.method public final b(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/layer/b/c/b$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/b/a/ab;",
            ")",
            "Lcom/b/a/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;IZ)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)Lcom/b/a/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/b/a/ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/layer/b/c/b$a;->buF:Lcom/layer/b/c/b$a;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/layer/b/c/b;->b(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/o;->d()V

    :cond_0
    return-void
.end method

.method public final wU()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/c/b;->buw:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/o;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
