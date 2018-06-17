.class public La/a/a/h/b;
.super La/a/a/h/a;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final coH:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/h/b;->$assertionsDisabled:Z

    const-class v0, La/a/a/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/a/a/h/b;->coH:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/a/h/a;-><init>()V

    return-void
.end method

.method private b(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, La/a/a/d;->FL()[B

    move-result-object v0

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v1, v0

    const/16 v4, 0x35

    invoke-direct {v3, v0, v1, p2, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget v0, p0, La/a/a/h/b;->cqG:I

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v2, p0, La/a/a/h/b;->cuw:I

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v0, La/a/a/d;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-direct {v0, v2}, La/a/a/d;-><init>([B)V

    iget v2, v0, La/a/a/d;->id:I

    iget v3, p1, La/a/a/d;->id:I

    if-eq v2, v3, :cond_1

    new-instance v2, La/a/a/i$a;

    invoke-direct {v2, p1, v0}, La/a/a/i$a;-><init>(La/a/a/d;La/a/a/d;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private c(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v2, 0x35

    invoke-direct {v0, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, La/a/a/h/b;->cuw:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget v0, p0, La/a/a/h/b;->cuw:I

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, La/a/a/d;->FL()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    new-array v4, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sub-int v5, v3, v0

    invoke-virtual {v2, v4, v0, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    new-instance v0, La/a/a/d;

    invoke-direct {v0, v4}, La/a/a/d;-><init>([B)V

    iget v2, v0, La/a/a/d;->id:I

    iget v3, p1, La/a/a/d;->id:I

    if-eq v2, v3, :cond_2

    new-instance v2, La/a/a/i$a;

    invoke-direct {v2, p1, v0}, La/a/a/i$a;-><init>(La/a/a/d;La/a/a/d;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_1
    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, La/a/a/h/b;->b(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v0, v1, La/a/a/d;->cpg:Z

    if-nez v0, :cond_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-boolean v0, La/a/a/h/b;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v0, v1, La/a/a/d;->cpg:Z

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-object v3, La/a/a/h/b;->coH:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Fallback to TCP because {0}"

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v0, "response is truncated"

    :goto_2
    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0, p1, p2}, La/a/a/h/b;->c(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, La/a/a/i/f;->B(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_3
.end method
