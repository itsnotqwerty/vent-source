.class final Lcom/b/a/a/g$a;
.super Lcom/b/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final bIA:Ljava/lang/reflect/Method;

.field private final bIB:Lcom/b/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final bIC:Lcom/b/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final bIx:Lcom/b/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final bIy:Lcom/b/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final bIz:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/b/a/a/f;Lcom/b/a/a/f;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/b/a/a/f;Lcom/b/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/b/a/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/a/g;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/g$a;->bIx:Lcom/b/a/a/f;

    iput-object p2, p0, Lcom/b/a/a/g$a;->bIy:Lcom/b/a/a/f;

    iput-object p3, p0, Lcom/b/a/a/g$a;->bIz:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/b/a/a/g$a;->bIA:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/b/a/a/g$a;->bIB:Lcom/b/a/a/f;

    iput-object p6, p0, Lcom/b/a/a/g$a;->bIC:Lcom/b/a/a/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Socket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIz:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/g$a;->bIz:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/y;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIx:Lcom/b/a/a/f;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/f;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIy:Lcom/b/a/a/f;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/f;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/g$a;->bIC:Lcom/b/a/a/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIC:Lcom/b/a/a/f;

    invoke-virtual {v0, p1}, Lcom/b/a/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Lb/c;

    invoke-direct {v4}, Lb/c;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/y;

    sget-object v6, Lcom/b/a/y;->bJR:Lcom/b/a/y;

    if-eq v0, v6, :cond_1

    invoke-virtual {v0}, Lcom/b/a/y;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Lb/c;->fF(I)Lb/c;

    invoke-virtual {v0}, Lcom/b/a/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/c;->fl(Ljava/lang/String;)Lb/c;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lb/c;->Lg()[B

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIC:Lcom/b/a/a/f;

    invoke-virtual {v0, p1, v3}, Lcom/b/a/a/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final b(Ljava/net/Socket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIA:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/g$a;->bIA:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/b/a/a/g$a;->bIB:Lcom/b/a/a/f;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/g$a;->bIB:Lcom/b/a/a/f;

    invoke-virtual {v0, p1}, Lcom/b/a/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/g$a;->bIB:Lcom/b/a/a/f;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/b/a/a/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/b/a/a/i;->bII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
