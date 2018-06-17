.class public Lio/intercom/android/sdk/api/TaggingSocketFactory;
.super Ljavax/net/SocketFactory;


# instance fields
.field private final defaultFactory:Ljavax/net/SocketFactory;

.field private final threadStatsTag:I


# direct methods
.method public constructor <init>(Ljavax/net/SocketFactory;I)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    iput p2, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->threadStatsTag:I

    return-void
.end method

.method private withTag(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->threadStatsTag:I

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-object p1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/TaggingSocketFactory;->withTag(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/TaggingSocketFactory;->withTag(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/TaggingSocketFactory;->withTag(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/TaggingSocketFactory;->withTag(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/TaggingSocketFactory;->defaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/TaggingSocketFactory;->withTag(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
