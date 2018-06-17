.class public Lcom/b/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/g$c;,
        Lcom/b/a/a/g$b;,
        Lcom/b/a/a/g$a;
    }
.end annotation


# static fields
.field private static final bIw:Lcom/b/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/b/a/a/g;->zx()Lcom/b/a/a/g;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/g;->bIw:Lcom/b/a/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "OkHttp"

    return-object v0
.end method

.method public static zw()Lcom/b/a/a/g;
    .locals 1

    sget-object v0, Lcom/b/a/a/g;->bIw:Lcom/b/a/a/g;

    return-object v0
.end method

.method private static zx()Lcom/b/a/a/g;
    .locals 12

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Lcom/b/a/a/f;

    const/4 v0, 0x0

    const-string v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {v1, v0, v2, v3}, Lcom/b/a/a/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v2, Lcom/b/a/a/f;

    const/4 v0, 0x0

    const-string v3, "setHostname"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-direct {v2, v0, v3, v4}, Lcom/b/a/a/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "tagSocket"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Ljava/net/Socket;

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    :try_start_3
    const-string v3, "untagSocket"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Ljava/net/Socket;

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v4

    :try_start_4
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lcom/b/a/a/f;

    const-class v3, [B

    const-string v5, "getAlpnSelectedProtocol"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {v0, v3, v5, v8}, Lcom/b/a/a/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    new-instance v8, Lcom/b/a/a/f;

    const/4 v3, 0x0

    const-string v5, "setAlpnProtocols"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, [B

    aput-object v11, v9, v10

    invoke-direct {v8, v3, v5, v9}, Lcom/b/a/a/f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v6, v8

    move-object v5, v0

    move-object v3, v7

    :goto_1
    :try_start_6
    new-instance v0, Lcom/b/a/a/g$a;

    invoke-direct/range {v0 .. v6}, Lcom/b/a/a/g$a;-><init>(Lcom/b/a/a/f;Lcom/b/a/a/f;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/b/a/a/f;Lcom/b/a/a/f;)V

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "$ClientProvider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$ServerProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v0, "put"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object v1, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v0, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v0, "remove"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v0, Lcom/b/a/a/g$b;

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/g$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :goto_3
    new-instance v0, Lcom/b/a/a/g;

    invoke-direct {v0}, Lcom/b/a/a/g;-><init>()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v0, v6

    :goto_4
    move-object v5, v0

    move-object v3, v7

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move-object v3, v6

    :goto_5
    move-object v0, v6

    move-object v4, v6

    move-object v7, v3

    :goto_6
    move-object v5, v0

    move-object v3, v7

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v0, v6

    move-object v3, v6

    move-object v5, v6

    :goto_7
    move-object v4, v3

    move-object v7, v5

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v3, v7

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v0, v6

    move-object v3, v6

    move-object v5, v7

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v0, v6

    move-object v3, v4

    move-object v5, v7

    goto :goto_7

    :catch_a
    move-exception v3

    move-object v3, v4

    move-object v5, v7

    goto :goto_7

    :catch_b
    move-exception v3

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public b(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method public d(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public e(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
